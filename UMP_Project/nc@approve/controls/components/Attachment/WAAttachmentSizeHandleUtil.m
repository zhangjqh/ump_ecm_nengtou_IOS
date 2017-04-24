//
//  WAAttachmentSizeHandleUtil.m
//  NC63Multiple
//
//  Created by 陈荣杭 on 14-1-7.
//  Copyright (c) 2014年 yonyou. All rights reserved.
//

#import "WAAttachmentSizeHandleUtil.h"
#import "WASpinnerView.h"
#import "WACommonInfoVO.h"

@implementation CWAAttachmentSizeHandleUtil
@synthesize iAttchControlDelegate;
//文件过大 继续下载提示
-(BOOL)continueDownloadTipWithServiceCode:(NSString *)aServiceCode
                            andAttachSize:(NSInteger)aFileSize
{
  //附件大小是否可以打开
  //CWACommonInfoVO *comInfo = [CWACommonInfoVO sharedManager];
  //NSInteger downFileMaxSize = [[comInfo getAttSizeWithServiceCode:aServiceCode] intValue];
  NSInteger downFileMaxSize = 2048 ;
  NSInteger attachmentSize = aFileSize;
  if (downFileMaxSize < attachmentSize)
  {
    [[CWASpinnerView sharedCWASpinnerView] hiddenSpinnerView];
    NSString *tip = NSLocalizedStringFromTable(@"confirmdownload", @"component_attachment", nil);
    UIAlertView *alert =[[UIAlertView alloc] initWithTitle:@""
                                                   message:tip
                                                  delegate:self
                                         cancelButtonTitle:NSLocalizedStringFromTable(@"cancle",@"component_attachment",nil)
                                         otherButtonTitles:NSLocalizedStringFromTable(@"ok",@"component_attachment",nil),nil];
    [alert show];
    return YES;
    
  }
  else
  {
    return NO;
  }
  
}
#pragma mark alertView 代理
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
  if (buttonIndex != alertView.cancelButtonIndex)
  {
    //自己下载
    if (self.iAttchControlDelegate &&
        [self.iAttchControlDelegate respondsToSelector:@selector(alertConfimDownLoadBtnSelect)]
        )
    {
      [self.iAttchControlDelegate alertConfimDownLoadBtnSelect];
    }
  }
}


@end
