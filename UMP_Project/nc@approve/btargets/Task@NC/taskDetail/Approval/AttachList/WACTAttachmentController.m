//
//  WACTAttachmentController.m
//  CollaborationTask
//
//  Created by Lemon on 13-5-9.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import "WACTAttachmentController.h"
#import "WASpinnerView.h"
#import "WAFileUtil.h"
#import "WACommonInfoVO.h"
@implementation CWACTAttachmentController

- (void)scanAttachment;
{
  UINavigationController *navController =  ((AppDelegate *)[[UIApplication sharedApplication] delegate]).navigationCtl;
  CWACTAttachmentViewController *attViewController =
  [[CWACTAttachmentViewController alloc]initWithFilePath:iFilePath andTitle:iFileName];
  [navController pushViewController:attViewController animated:YES];
}


- (void) attchDownloadWithFileID:(NSString*)aFileID
                    withFileSize:(NSInteger)aFileSize
                    withFileName:(NSString*)aFileName
                    withFileType:(NSString*)aFileType
               withFileDirectory:(NSString *)aFileDirectory
                withComplementID:(NSString *)aComplementId
                 withServiceCode:(NSString *)aServiceCode
                  withActionType:(NSString *)aActiontype
{
  CWACommonInfoVO *comInfo = [CWACommonInfoVO sharedManager];
  NSInteger downFileMaxSize = [[comInfo getAttSizeWithServiceCode:aServiceCode] intValue];
  NSInteger attachmentSize = aFileSize;
  if (downFileMaxSize < attachmentSize)
  {
    NSString *attachmentSizeOver = NSLocalizedStringFromTable(@"attachmentSizeOver", @"component_attachment", nil);
    NSString *openinpc = NSLocalizedStringFromTable(@"openinpc", @"component_attachment", nil);
    NSString *alertTitle = [NSString stringWithFormat:@"%@%dKB,%@",attachmentSizeOver,downFileMaxSize,openinpc];
    UIAlertView *alert =[[UIAlertView alloc] initWithTitle:alertTitle
                                                   message:nil
                                                  delegate:self
                                         cancelButtonTitle:NSLocalizedStringFromTable(@"ok",@"component_attachment",nil)
                                         otherButtonTitles:nil];
    [alert show];
    return;
  }
  
  //查看附件是否能代开
  NSString* fileTypeLowCase = [aFileType lowercaseString];
  if (![self isCanDownFileWithFileType:fileTypeLowCase])
  {
    [[CWASpinnerView sharedCWASpinnerView] hiddenSpinnerView];
    NSString *alertTitle = NSLocalizedStringFromTable(@"AttachFormatError", @"component_attachment", nil);
    UIAlertView *alert =[[UIAlertView alloc] initWithTitle:alertTitle
                                                   message:nil
                                                  delegate:self
                                         cancelButtonTitle:NSLocalizedStringFromTable(@"ok",@"btarget_task",nil)
                                         otherButtonTitles:nil];
    [alert show];
    return;
  }
  
  //能代开则保存临时变量
  NSArray *tmpPathArray = [CWAFileUtil getContentsOfDirectoryAtPath:[[CWAFileUtil getTmpPath] stringByAppendingPathComponent:aFileDirectory]];
  NSString *tempFileName = [[aFileID stringByAppendingString:@"_"] stringByAppendingString:aFileName];
  
  self.iFileDirectoryName = [aFileDirectory stringByAppendingPathComponent:tempFileName];
  self.iFileType = aFileType;
  self.iFileDirectory = aFileDirectory;
  self.iFileName = aFileName;
  self.iServiceCode = aServiceCode;
  //如果目录中存在文件则不下载
  for (NSString *itemFile in tmpPathArray)
  {
    if ([[tempFileName stringByAppendingFormat:@".%@",aFileType] isEqualToString:itemFile])
    {
      NSString *fileFullName =  [iFileDirectoryName stringByAppendingFormat:@".%@",aFileType];
      self.iFilePath = [[CWAFileUtil getTmpPath] stringByAppendingPathComponent:fileFullName];
      NSData *data = [NSData dataWithContentsOfFile:self.iFilePath];
      if ([data length] > 0)
      {
        [self scanAttachment];
        [[CWASpinnerView sharedCWASpinnerView] hiddenSpinnerView];
        return;
      }
    }
  }
  
  //组装数据下载附件
  [[CWASpinnerView sharedCWASpinnerView] showInWindowsIsFullScreen:YES
                                                   withShowingText:NSLocalizedStringFromTable(@"Wait",@"component_attachment",nil)];
  NSMutableDictionary *requestDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                     aFileID,@"fileid",
                                     @"1",@"downflag",
                                     @"9800",@"startposition",nil];
  [requestDic addEntriesFromDictionary:[CWACommonInfoVO getDefaultEmptyGroupIDAndUserID]];
  CWATaskAttachmentRequestVO *aRequestVO = [[CWATaskAttachmentRequestVO alloc] initWithDic:requestDic];
  [iAttachementBnsHanlder sendGetTaskActionMsgWith:aRequestVO
                                    withComponetID:aComplementId
                                   withServiceCode:self.iServiceCode
                                    withActiontype:aActiontype];
}

@end
