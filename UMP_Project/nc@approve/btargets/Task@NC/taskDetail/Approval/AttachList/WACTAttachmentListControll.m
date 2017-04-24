//
//  WACTAttachmentListControll.m
//  CollaborationTask
//
//  Created by Lemon on 13-4-2.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import "WACTAttachmentListControll.h"
#import "WACTAttachmentListViewControll.h"
#import "WAAttachmentViewController.h"
#import "AppDelegate.h"
#import "WAFileUtil.h"
#import "TaskDef.h"
#import "WASpinnerView.h"
#import "WAUFTool.h"
#import "WAIosVersionAdaptor.h"

@implementation CWACTAttachmentListControll
@synthesize iViewController;
@synthesize iDataAry;
@synthesize iDelegate;
@synthesize iAttachController;
@synthesize iServiceCode;
@synthesize iTotleSize;
@synthesize iAmount;
@synthesize iSignalSize;

static NSString *WA_CTUNIT_KB = @"KB";
static NSString *WA_CTLISTCELLID_WACTDOWNLOADCELL =  @"WACTDownloadCell";
static NSString *const WA_PTASKDETAIL_GETATTACHMENT_ACTION = @"getAttachment";

-(id)initWithViewController:(CWACTAttachmentListViewControll *)aViewController withDelegate:(id<MWACTAttachmentListDelegate>)aDelegate;
{
  self = [super init];
  if (self)
  {
    self.iTotleSize = -1;
    self.iSignalSize = -1;
    self.iAmount = -1;
    iDelegate = aDelegate;
    iViewController = aViewController;
    iDataAry = [[NSMutableArray alloc]initWithCapacity:1];
    iAttachController = [[CWACTAttachmentController alloc]init];
    [iAttachController initElement];
  }
  return self;
}
- (void)iBackBtnAction:(id)sender
{
  [iViewController.navigationController popViewControllerAnimated:YES];
}

- (void)iAddAttachBtnAction:(id)sender
{
  UIImagePickerController *picker = [[UIImagePickerController alloc] init];
  picker.delegate = self;
  picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
  [iViewController presentViewController:picker animated:YES completion:nil];
}

- (void)imagePickerController:(UIImagePickerController *)picker
        didFinishPickingImage:(UIImage *)image
                  editingInfo:(NSDictionary *)editingInfo
{
  [picker dismissViewControllerAnimated:YES completion:nil];
}

- (void)imagePickerDidDismiss
{
  [[CWASpinnerView sharedCWASpinnerView] showInWindowsIsFullScreen:YES
                                                   withShowingText:NSLocalizedStringFromTable(@"Wait",@"component_attachment",nil)];
}

-(void)didSelectImage:(CWAAttachmentVO *)aVO
{
  NSString *alertMsg= nil;
  float fileSize = [aVO.iFileSize floatValue];
  if (self.iAmount>0 && [self.iDataAry count]+1 > self.iAmount)
  {
    NSString *fileTotleSizePre = NSLocalizedStringFromTable(@"fileTotleSizePre", @"btarget_task", nil);
    NSString *fileAmountEnd = NSLocalizedStringFromTable(@"fileAmountEnd", @"btarget_task", nil);
    alertMsg = [NSString stringWithFormat:@"%@ %d %@",fileTotleSizePre,self.iAmount,fileAmountEnd];
  }
  else if (self.iSignalSize>0 && fileSize > self.iSignalSize)
  {
    NSString *fileSignalSizePre = NSLocalizedStringFromTable(@"fileSignalSizePre", @"btarget_task", nil);
     NSString *fileSignalSizeEnd = NSLocalizedStringFromTable(@"fileSignalSizeEnd", @"btarget_task", nil);
    alertMsg = [NSString stringWithFormat:@"%@ %.2f%@ %@",fileSignalSizePre,self.iSignalSize,WA_CTUNIT_KB,fileSignalSizeEnd];
  }
  else if (self.iTotleSize > 0)
  {
    for (CWACTAttachVO *theVO in self.iDataAry)
    {
      fileSize += [theVO.iFileSize floatValue];
    }
    if (fileSize>self.iTotleSize)
    {
      NSString *fileTotleSizePre = NSLocalizedStringFromTable(@"fileTotleSizePre", @"btarget_task", nil);
      NSString *fileTotleSizeEnd = NSLocalizedStringFromTable(@"fileTotleSizeEnd", @"btarget_task", nil);
    
      alertMsg = [NSString stringWithFormat:@"%@ %.2f%@ %@",fileTotleSizePre,iTotleSize,WA_CTUNIT_KB,fileTotleSizeEnd];
    }
  }
  [[CWASpinnerView sharedCWASpinnerView] hiddenSpinnerView];
  if (alertMsg)
  {
    NSString *ok = NSLocalizedStringFromTable(@"ok", @"btarget_task", nil);
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:nil
                                                   message:alertMsg
                                                  delegate:nil
                                         cancelButtonTitle:ok
                                         otherButtonTitles:nil];
    [alert show];
    return;
  }
  
  
  CWACTAttachVO *thisVO = [[CWACTAttachVO alloc]init];
  thisVO.iFileID = aVO.iFileID;
  thisVO.iFileName = aVO.iFileName;
  thisVO.iFileSize = aVO.iFileSize;
  thisVO.iFileType = aVO.iFileType;
  thisVO.iDownflag = aVO.iDownloadFlag;
  thisVO.iFile = aVO.iFile;
  [self.iDataAry addObject:thisVO];
  [self writeBack];
  
  CGPoint aOffset = self.iViewController.iTableview.contentOffset;
  [self.iViewController.iTableview reloadData];
  self.iViewController.iTableview.contentOffset = aOffset;
  
  //save to file
  NSDictionary *aFileDic = [[NSDictionary alloc]initWithObjectsAndKeys:aVO.iFile,@"content", nil];
  NSDictionary *getFileDic = [[NSDictionary alloc]initWithObjectsAndKeys:aFileDic,@"attachmentdetail", nil];
  NSArray *aFileAry =[[NSArray alloc]initWithObjects:getFileDic, nil];
  
  NSString *tempFileName = [[aVO.iFileID stringByAppendingString:@"_"] stringByAppendingString:aVO.iFileName];
  NSString *aFileDirectory = WA_COLLABORATIONTASK_BTARGET;
  NSString *fileDirectoryName = [aFileDirectory stringByAppendingPathComponent:tempFileName];
  CWAAttachmentController *aController = [[CWAAttachmentController alloc]init];
  aController.iFileDirectoryName = fileDirectoryName;
  aController.iFileType = aVO.iFileType;
  [aController saveFile:(NSDictionary *)aFileAry];
  
}

-(void)writeBack
{
  if([iDataAry count] + 1 == 0)
  {
    [iViewController showEmptyView];
  }
  else
  {
    [iViewController hideEmptyView];
  }
  if (iDelegate && [iDelegate respondsToSelector:@selector(writeBackAttachList:)])
  {
    [iDelegate writeBackAttachList:iDataAry];
  }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
  return 48.0f;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
  CGFloat secHeight = WA_CTTASKLIST_SECHEIGHT;
  if (section == 0)
  {
    secHeight = WA_CTTASKLIST_FIRSTSECHEIGHT;
    if (WA_CURENT_OS_V >= 7.0f)
    {
      secHeight = 24.0f;
    }
  }
  return secHeight;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
  CGFloat footHeight = WA_CTTASKLIST_FOOTHEIGHT;
  if (section == [tableView numberOfSections]-1)
  {
    footHeight = WA_CTTASKLIST_LASTFOOTHEIGHT;
  }
  return footHeight;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  return [self.iDataAry count] + 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  UITableViewCell *aCell = nil;
  aCell = [tableView dequeueReusableCellWithIdentifier:WA_CTLISTCELLID_WACTDOWNLOADCELL];
  if (!aCell)
  {
    aCell = [[[NSBundle mainBundle]loadNibNamed:@"WACTDownloadCell" owner:nil options:nil]lastObject];
  }
  //最后一行
  if ([self isLastRow:indexPath])
  {
    ((CWACTDownloadCell *)aCell).iLeftLabel.text = NSLocalizedStringFromTable(@"addattachment", @"btarget_task", nil);
    ((CWACTDownloadCell *)aCell).iRightLabel.text = @"";
    ((CWACTDownloadCell *)aCell).iTypeImg.hidden = YES;
    aCell.accessoryType = UITableViewCellAccessoryNone;

  }
  else
  {
    CWACTAttachVO *aVO = [self.iDataAry objectAtIndex:indexPath.row];
    ((CWACTDownloadCell *)aCell).iLeftLabel.text = aVO.iFileName;
      if (aVO.iFileSize) {
          int size = [aVO.iFileSize intValue];
          if (size > 999) {
                 ((CWACTDownloadCell *)aCell).iRightLabel.text = [size/1024?aVO.iFileSize:@"" stringByAppendingString:@"MB"];
          }
      }

    ((CWACTDownloadCell *)aCell).iRightLabel.text = [aVO.iFileSize?aVO.iFileSize:@"" stringByAppendingString:WA_CTUNIT_KB];
    ((CWACTDownloadCell *)aCell).iTypeImg.hidden = NO;
  }
  [CWAIosVersionAdaptor adaptTableViewCell:aCell];
  return aCell;
}

- (void)      tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  if ([self isLastRow:indexPath])
  {
    [iViewController.iAttachmentAdd triggerAttachAddEvent:nil];
  }
  else
  {
    CWACTAttachVO *aVO= [self.iDataAry objectAtIndex:indexPath.row];
    NSString *fileName = aVO.iFileName;
    NSString *fileType = aVO.iFileType;
    NSString *fileID = aVO.iFileID;
    if (aVO.iFile && [aVO.iFile length]>0)
    {
      NSString *tempFileName = [[fileID stringByAppendingString:@"_"] stringByAppendingString:fileName];
      NSString *aFileDirectoryName = [WA_COLLABORATIONTASK_BTARGET stringByAppendingPathComponent:tempFileName];
      NSString *fileFullName =  [aFileDirectoryName stringByAppendingFormat:@".%@",fileType];
      NSString *aFilePath = [[CWAFileUtil getTmpPath] stringByAppendingPathComponent:fileFullName];
      
      CWACTAttachmentViewController *attViewController =
      [[CWACTAttachmentViewController alloc]initWithFilePath:aFilePath andTitle:fileName];
      [self.iViewController.navigationController pushViewController:attViewController animated:YES];
    }
    else
    {
      NSInteger attachmentSize = [aVO.iFileSize intValue];
      
      [iAttachController attchDownloadWithFileID:fileID
                                    withFileSize:attachmentSize
                                    withFileName:fileName
                                    withFileType:fileType
                               withFileDirectory:WA_COLLABORATIONTASK_BTARGET
                                withComplementID:WA_TASKCENTER_COMPONENTID
                                 withServiceCode:self.iServiceCode
                                  withActionType:WA_PTASKDETAIL_GETATTACHMENT_ACTION];
    }

  }
}

- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
  if ([self isLastRow:indexPath])
  {
    return UITableViewCellEditingStyleInsert;
  }
  else
  {
    return UITableViewCellEditingStyleDelete;
  }
}

-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
  return self.iViewController.iIsEdit;
}

-(NSString *)tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath
{
  NSString *delBtnName = NSLocalizedStringFromTable(@"delBtnName", @"btarget_task", nil);
  return delBtnName;
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
  if (editingStyle == UITableViewCellEditingStyleDelete)
  {
    [self.iDataAry removeObjectAtIndex:indexPath.row];
    [self writeBack];
    [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObjects:indexPath, nil]
                     withRowAnimation:UITableViewRowAnimationAutomatic];
  }
  if (editingStyle == UITableViewCellEditingStyleInsert)
  {
    [iViewController.iAttachmentAdd triggerAttachAddEvent:nil];
  }
}
//判断是否是最后一行
-(BOOL)isLastRow:(NSIndexPath *)indexPath{
  NSUInteger count = [self.iDataAry count];
  if(indexPath.row+1> count)
  {
      //是最后一行
    return YES;
  }else
  {
    return NO;
  }
}
@end
