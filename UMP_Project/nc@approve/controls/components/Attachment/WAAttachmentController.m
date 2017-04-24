//
//  WAAttachmentController.m
//  SSTASK120521A
//
//  Created by 刘得权 on 12-7-22.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "WAAttachmentController.h"
#import "WAFileUtil.h"
#import "WAAttachmentViewController.h"
#import "AppDelegate.h"
#import "WASpinnerView.h"
#import "WACommonInfoVO.h"
#import "NCDocumentInteractionControllerDelegate.h"
//文件夹里文件的总大小最大值
#define WA_TASK_FILE_MAX_SIZE 30*1024*1024
@implementation CWACWAAttachmentDownLoadVO
@synthesize iFileID;
@synthesize iFileSize;
@synthesize iFileName;
@synthesize iFileType;
@synthesize iFileDirectory;
@synthesize iComplementId;
@synthesize iServiceCode;
@synthesize iActiontype;

@end
@interface CWAAttachmentController()
{
  UINavigationController *iNavigationController;
}
@end


@implementation CWAAttachmentController
@synthesize iFilePath;
@synthesize iFileDirectoryName;
@synthesize iFileType;
@synthesize iFileDirectory;
@synthesize iFileName;
@synthesize iServiceCode;
@synthesize iNavCtrl;
@synthesize iAttchControlDelegate;
@synthesize isMayContinueDownload;
@synthesize iAttachDownVO;
@synthesize iAttachSizehanbleUtil;


-(id)initWithNav:(UINavigationController *)aNav
{
  self = [super init];
  if (self)
  {
    iNavigationController = aNav;
    [self initAttachSizeUtil];
  }
  return self;
}
- (id)init
{
  self = [super init];
  if (self)
  {
    [self initAttachSizeUtil];
  }
  return self;
}
-(void)initAttachSizeUtil
{
  iAttachSizehanbleUtil = [[CWAAttachmentSizeHandleUtil alloc]init];
  iAttachSizehanbleUtil.iAttchControlDelegate = self;
  
}
- (UINavigationController *)getNav
{
  return iNavigationController;
}

//初始化成员变量
- (void)initElement
{
  iAttachementBnsHanlder = [[CWAAttachmentBnsHanlder alloc] init];
  iAttachementBnsHanlder.iDelegate = self;
  [self initAttachSizeUtil];
}
//判断附件大小 是否可以下载
-(BOOL)theAttachtCanDownloadWithServiceCode:(NSString *)aServiceCode
                              andAttachSize:(NSInteger)aFileSize
{
  CWACommonInfoVO *comInfo = [CWACommonInfoVO sharedManager];
  NSInteger downFileMaxSize = [[comInfo getAttSizeWithServiceCode:aServiceCode] intValue];
  NSInteger attachmentSize = aFileSize;
  if (downFileMaxSize < attachmentSize)
  {
    [self showFilesizeCanDownAlert:downFileMaxSize];
    return NO;
  }
  return YES;
}
//附件大小 超过服务器返回的值 弹窗提示
- (void)showFilesizeCanDownAlert:(NSInteger)downFileMaxSize
{
  
  NSString *attachmentSizeOver = NSLocalizedStringFromTable(@"attachmentSizeOver", @"component_attachment", nil);
  NSString *openinpc = NSLocalizedStringFromTable(@"openinpc", @"component_attachment", nil);
  NSString *alertTitle = [NSString stringWithFormat:@"%@%iKB,%@",attachmentSizeOver,downFileMaxSize,openinpc];
  UIAlertView *alert =[[UIAlertView alloc] initWithTitle:alertTitle
                                                 message:nil
                                                delegate:nil
                                       cancelButtonTitle:NSLocalizedStringFromTable(@"ok",@"component_attachment",nil)
                                       otherButtonTitles:nil];
  [alert show];
}

- (void)attachnoopenTip:(NSString *)aFileType
{
  //查看附件是否能代开
  NSString* fileTypeLowCase = [aFileType lowercaseString];
  if (![self isCanDownFileWithFileType:fileTypeLowCase])
  {
    NSString *alertTitle = NSLocalizedStringFromTable(@"AttachFormatError", @"component_attachment", nil);
    UIAlertView *alert =[[UIAlertView alloc] initWithTitle:alertTitle
                                                   message:nil
                                                  delegate:nil
                                         cancelButtonTitle:NSLocalizedStringFromTable(@"ok",@"app_task",nil)
                                         otherButtonTitles:nil];
    [alert show];
    return;
  }
}

- (void)downloadAttach:(NSInteger)aFileSize
          aServiceCode:(NSString *)aServiceCode
             aFileType:(NSString *)aFileType
        aFileDirectory:(NSString *)aFileDirectory
             aFileName:(NSString *)aFileName
               aFileID:(NSString *)aFileID
           aActiontype:(NSString *)aActiontype
         aComplementId:(NSString *)aComplementId
{
  BOOL continueTip = self.isMayContinueDownload;
  //过大提示，然后继续下载
  if (!continueTip)
  {
    BOOL fileSizecanDown = [self theAttachtCanDownloadWithServiceCode:aServiceCode andAttachSize:aFileSize];
    if (!fileSizecanDown)
    {
      return;
    }
  }
  //附件不能打开提示
  [self attachnoopenTip:aFileType];
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

//下载附件
- (void) attchDownloadWithFileID:(NSString*)aFileID
                    withFileSize:(NSInteger)aFileSize
                    withFileName:(NSString*)aFileName
                    withFileType:(NSString*)aFileType
               withFileDirectory:(NSString *)aFileDirectory
                withComplementID:(NSString *)aComplementId
                 withServiceCode:(NSString *)aServiceCode
                  withActionType:(NSString *)aActiontype
{
  
  
  BOOL continueTip = self.isMayContinueDownload;
  
  //过大提示，然后继续下载
  if (continueTip)
  {
    iAttachDownVO = [[CWACWAAttachmentDownLoadVO alloc]init];
    self.iAttachDownVO.iFileID = aFileID;
    self.iAttachDownVO.iFileSize = aFileSize;
    self.iAttachDownVO.iFileName = aFileName;
    self.iAttachDownVO.iFileType = aFileType;
    self.iAttachDownVO.iFileDirectory = aFileDirectory;
    self.iAttachDownVO.iComplementId = aComplementId;
    self.iAttachDownVO.iServiceCode = aServiceCode;
    self.iAttachDownVO.iActiontype = aActiontype;
    //是否需要提示
    BOOL isTip =  [iAttachSizehanbleUtil continueDownloadTipWithServiceCode:aServiceCode andAttachSize:aFileSize];
    //不需要 下载
    if (!isTip)
    {
      [self downloadAttach:self.iAttachDownVO.iFileSize
              aServiceCode:self.iAttachDownVO.iServiceCode
                 aFileType:self.iAttachDownVO.iFileType
            aFileDirectory:self.iAttachDownVO.iFileDirectory
                 aFileName:self.iAttachDownVO.iFileName
                   aFileID:self.iAttachDownVO.iFileID
               aActiontype:self.iAttachDownVO.iActiontype
             aComplementId:self.iAttachDownVO.iComplementId
       ];
    }
  }
  //过大不下载
  else
  {
    [self downloadAttach:aFileSize aServiceCode:aServiceCode aFileType:aFileType aFileDirectory:aFileDirectory aFileName:aFileName aFileID:aFileID aActiontype:aActiontype aComplementId:aComplementId];
  }
}

//保存附件
-(void)saveFile:(NSDictionary*)aDic
{
  // http下载附件存储
  NSArray *aValue = [aDic valueForKeyPath:@"attachmentdetail.content"];
  if (aValue && [aValue count]>0 )
  {
    NSString *content = [aValue objectAtIndex:0];
    if (content && ![content isEqual:[NSNull null]])
    {
      NSData *adata= [GTMBase64 decodeString:content];
      NSArray *fileArray = [iFileDirectoryName componentsSeparatedByString:@"."];
      NSString *fileFullName = nil;
      if(iFileType && ![@"" isEqualToString:iFileType])
      {
        fileFullName =  [[iFileDirectoryName stringByAppendingString:@"."] stringByAppendingString:iFileType];
      }
      else if ([fileArray count] > 1)
      {
        fileFullName = iFileDirectoryName;
      }
      
      
      NSString *aPath= [CWAFileUtil createFileAtTmpWithName:fileFullName content:adata];
      
      self.iFilePath = aPath;
      
      //计算tmp文件夹的大小
      NSInteger filesize = 0;
      NSArray *tmpPathArray = [CWAFileUtil getContentsOfDirectoryAtPath:[CWAFileUtil getTmpPath] ];
      for (NSString * tmpfileName in tmpPathArray)
      {
        unsigned long long fileAttachmentSize = [CWAFileUtil fileSizeAtPaht:[[CWAFileUtil getTmpPath] stringByAppendingPathComponent:tmpfileName]];
        filesize +=fileAttachmentSize;
      }
      
      //判断并删除附件
      if (filesize > WA_TASK_FILE_MAX_SIZE)
      {
        NSArray *attachmentPathArray = [CWAFileUtil getContentsOfTmpDirectorByTimeOrder];
        [CWAFileUtil deleteFileWithUrl:[attachmentPathArray lastObject] error:nil];
      }
    }
  }
}

//附件是否可以打开
- (BOOL)isCanDownFileWithFileType:(NSString *)aFileType
{
  aFileType = [aFileType lowercaseString];
  if([aFileType isEqualToString:@"doc"]
     ||[aFileType isEqualToString:@"docx"]
     ||[aFileType isEqualToString:@"pdf"]
     ||[aFileType isEqualToString:@"bmp"]
     ||[aFileType isEqualToString:@"html"]
     ||[aFileType isEqualToString:@"jpg"]
     ||[aFileType isEqualToString:@"jpeg"]
     ||[aFileType isEqualToString:@"png"]
     ||[aFileType isEqualToString:@"ppt"]
     ||[aFileType isEqualToString:@"txt"]
     ||[aFileType isEqualToString:@"pptx"]
     ||[aFileType isEqualToString:@"xlsx"]
     ||[aFileType isEqualToString:@"xls"]
     ||[aFileType isEqualToString:@"JPG"]
     ||[aFileType isEqualToString:@"PNG"]
     ||[aFileType isEqualToString:@"gif"]
     ||[aFileType isEqualToString:@"edc"])
  {
    return YES;
  }
  else
  {
    return NO;
  }
  
}

//浏览附件
- (void)scanAttachment;
{
  UINavigationController *navController = ((AppDelegate *)[[UIApplication sharedApplication] delegate]).navigationCtl;
  if (iNavigationController)
  {
    navController = iNavigationController;
  }
  if(!navController)
  {
    navController = iNavCtrl;
  }
    
    if ([iFilePath hasSuffix:@".edc"] || [iFilePath hasSuffix:@".EDC"]) {
        NSURL* filePath = [NSURL fileURLWithPath:iFilePath];
        UIViewController* lastObj = (UIViewController*)[navController.childViewControllers lastObject];
        self.docVC = [UIDocumentInteractionController interactionControllerWithURL:filePath];
        self.ncInteractionDelegate = [[NCDocumentInteractionControllerDelegate alloc] initWithLastViewController:lastObj];
        self.docVC.delegate = self.ncInteractionDelegate;
        self.docVC.name = iFileName;
        if (![self.docVC presentOpenInMenuFromRect:CGRectZero inView:lastObj.view animated:NO]) {
            UIAlertView* alert = [[UIAlertView alloc] initWithTitle:nil message:@"没有能打开此文件的相关应用" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
            [alert show];
        };
        
    }else{
        CWAAttachmentViewController *attViewController =
        [[CWAAttachmentViewController alloc]initWithFilePath:iFilePath andTitle:iFileName];
        [navController pushViewController:attViewController animated:YES];
    }

}


#pragma mark -
#pragma mark - MWAAttachmentBnsHanlderDelegate methods
//异步可用 请求结束时，此方法被调用
- (void)requestReturnWithResponseVO:(CWABaseVO *)aBaseVO andMsgVO:(CWAResponseMsg *)aMsgVO
{
  @try
  {
    if ([aMsgVO.iFlag intValue]== 0)
    {
      if (aBaseVO)
      {
        //[[CWASpinnerView sharedCWASpinnerView] hiddenSpinnerView];
        NSDictionary *dic = aBaseVO.voDictionary;
        NSDictionary *bizDic = [dic valueForKey:aMsgVO.iServiceCode];
        [self saveFile:bizDic];
        
        //进入附件浏览界面
        [self scanAttachment];
        
      }
      else
      {
        UIAlertView *alerView = [[UIAlertView alloc] initWithTitle:nil
                                                           message:NSLocalizedStringFromTable(@"openAttachError", @"component_attachment", nil)
                                                          delegate:nil
                                                 cancelButtonTitle:NSLocalizedStringFromTable(@"Comfirm", @"component_attachment", nil)
                                                 otherButtonTitles:nil];
        [alerView show];
        
      }
      [[CWASpinnerView sharedCWASpinnerView] hiddenSpinnerView];
    }
    else
    {
      UIAlertView *alerView = [[UIAlertView alloc] initWithTitle:nil
                                                         message:aMsgVO.iDesc
                                                        delegate:nil
                                               cancelButtonTitle:NSLocalizedStringFromTable(@"Comfirm", @"component_attachment", nil)
                                               otherButtonTitles:nil];
      [alerView show];
      [[CWASpinnerView sharedCWASpinnerView] hiddenSpinnerView];
      
    }
    
  }
  @catch (NSException *exception)
  {
      
  }
  @finally {
    ;
  }
}

- (void)failedRequestWithError:(NSError*)theError
{
  UIAlertView *alerView = [[UIAlertView alloc] initWithTitle:nil
                                                     message:theError.domain
                                                    delegate:nil
                                           cancelButtonTitle:NSLocalizedStringFromTable(@"Comfirm", @"component_attachment", nil)
                                           otherButtonTitles:nil];
  [alerView show];
  [[CWASpinnerView sharedCWASpinnerView] hiddenSpinnerView];

}

#pragma mark 附件大小处理代理方法
-(void)alertConfimDownLoadBtnSelect
{
  [self downloadAttach:self.iAttachDownVO.iFileSize
          aServiceCode:self.iAttachDownVO.iServiceCode
             aFileType:self.iAttachDownVO.iFileType
        aFileDirectory:self.iAttachDownVO.iFileDirectory
             aFileName:self.iAttachDownVO.iFileName
               aFileID:self.iAttachDownVO.iFileID
           aActiontype:self.iAttachDownVO.iActiontype
         aComplementId:self.iAttachDownVO.iComplementId
   ];
}
@end