//
//  CWAMainBodyContenController.m
//  SSTASK120521A
//
//  Created by HUYCH on 13-6-21.
//
//

#import "WAMainBodyContenController.h"
#import "WASpinnerView.h"
#import "WACommonInfoVO.h"
#import "WAFileUtil.h"

@implementation CWAMainBodyContenController

#define WA_MAINCONTENT_FILE_MAX_SIZE 30*1024*1024
- (void) attchDownloadWithID:(NSString*)aID
                withFileSize:(NSInteger)aFileSize
                withFileName:(NSString*)aFileName
                withFileType:(NSString*)aFileType
           withFileDirectory:(NSString *)aFileDirectory
            withComplementID:(NSString *)aComplementId
             withServiceCode:(NSString *)aServiceCode
                  withTaskID:(NSString *)aTaskID
               WithStatuskey:(NSString *)aStatuskey
              WithStatuscode:(NSString *)aStatuscode
              withActionType:(NSString *)aActiontype
{
  CWACommonInfoVO *comInfo = [CWACommonInfoVO sharedManager];
  //NSInteger downFileMaxSize = [[comInfo getAttSizeWithServiceCode:aServiceCode] intValue];
  //NSInteger attachmentSize = aFileSize;
//  if (downFileMaxSize < attachmentSize)
//    {
//    NSString *attachmentSizeOver = NSLocalizedStringFromTable(@"attachmentSizeOver", @"component_attachment", nil);
//    NSString *openinpc = NSLocalizedStringFromTable(@"openinpc", @"component_attachment", nil);
//    NSString *alertTitle = [NSString stringWithFormat:@"%@%iKB,%@",attachmentSizeOver,downFileMaxSize,openinpc];
//    UIAlertView *alert =[[UIAlertView alloc] initWithTitle:alertTitle
//                                                   message:nil
//                                                  delegate:self
//                                         cancelButtonTitle:NSLocalizedStringFromTable(@"ok",@"component_attachment",nil)
//                                         otherButtonTitles:nil];
//    [alert show];
//    return;
//    }
  
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
  NSString *tempFileName = [[aID stringByAppendingString:@"_"] stringByAppendingString:aFileName];
  
  self.iFileDirectoryName = [aFileDirectory stringByAppendingPathComponent:tempFileName];
  self.iFileType = aFileType;
  self.iFileDirectory = aFileDirectory;
  self.iFileName = aFileName;
  self.iServiceCode = aServiceCode;
  //如果目录中存在文件则不下载
//  for (NSString *itemFile in tmpPathArray)
//  {
//    if ([[tempFileName stringByAppendingFormat:@".%@",aFileType] isEqualToString:itemFile])
//    {
//      NSString *fileFullName =  [iFileDirectoryName stringByAppendingFormat:@".%@",aFileType];
//      self.iFilePath = [[CWAFileUtil getTmpPath] stringByAppendingPathComponent:fileFullName];
//      NSData *data = [NSData dataWithContentsOfFile:self.iFilePath];
//      if ([data length] > 0)
//      {
//        [self scanAttachment];
//        [[CWASpinnerView sharedCWASpinnerView] hiddenSpinnerView];
//        return;
//      }
//    }
//  }
  
  //组装数据下载附件
  [[CWASpinnerView sharedCWASpinnerView] showInWindowsIsFullScreen:YES
                                                   withShowingText:NSLocalizedStringFromTable(@"Wait",@"component_attachment",nil)];
  NSMutableDictionary *requestDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                     aID ,@"id",
                                     @"1",@"downflag",
                                     nil];
  [requestDic addEntriesFromDictionary:[CWACommonInfoVO getDefaultEmptyGroupIDAndUserID]];
  [requestDic setValue:aTaskID forKey:@"taskid"];
  [requestDic setValue:aStatuskey forKey:@"statuskey"];
  [requestDic setValue:aStatuscode forKey:@"statuscode"];
  CWATaskAttachmentRequestVO *aRequestVO = [[CWATaskAttachmentRequestVO alloc] initWithDic:requestDic];
  [iAttachementBnsHanlder sendGetTaskActionMsgWith:aRequestVO
                                    withComponetID:aComplementId
                                   withServiceCode:self.iServiceCode
                                    withActiontype:aActiontype];

}

//保存附件
-(void)saveFile:(NSDictionary*)aDic
{
  // http下载附件存储
  NSArray *aValue = [aDic valueForKeyPath:@"maincontent.content"];
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
      if (filesize > WA_MAINCONTENT_FILE_MAX_SIZE)
        {
          NSArray *attachmentPathArray = [CWAFileUtil getContentsOfTmpDirectorByTimeOrder];
          [CWAFileUtil deleteFileWithUrl:[attachmentPathArray lastObject] error:nil];
        }
      }
    }
}

@end
