//
//  WAAttachmentBnsHanlder.m
//  SSTASK120521A
//
//  Created by 刘得权 on 12-7-22.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "WAAttachmentBnsHanlder.h"

@implementation CWAAttachmentBnsHanlder
@synthesize iDelegate;

- (void)sendGetTaskActionMsgWith:(CWATaskAttachmentRequestVO *)aRequestVO
                  withComponetID:(NSString *)aCommonID 
                 withServiceCode:(NSString *)aServiceCode
                  withActiontype:(NSString *)aActiontype
{
  CWABnsDesVO *bnsDesVO = [[CWABnsDesVO alloc]initWithComponetID:aCommonID
                                                     actionTypes:[NSMutableArray arrayWithObject:aActiontype]];
  NSMutableArray *servicecodes = [[NSMutableArray alloc] initWithObjects:aServiceCode, nil];
  bnsDesVO.iServiceCodes = servicecodes;
  [[CWAHTTPRequestHandler sharedManager]firePostRequestWithBodyData:aRequestVO 
                                                           delegate:self 
                                                             mehtod:(RQ_METHOD)BYTE_DOWNLOAD 
                                                              bnsVO:bnsDesVO];
}

#pragma mark -
#pragma mark MWAHTTPNotify methods
- (void)requestFinishedWithResponseString:(NSString*)aString
{
}
//异步可用 请求结束时，此方法被调用
-(void)requestFinishedWithResponseVO:(CWABaseVO *)aBaseVO andMsgVO:(CWAResponseMsg *)aMsgVO
{
  if (iDelegate && [iDelegate respondsToSelector:@selector(requestReturnWithResponseVO:andMsgVO:)]) 
  {
    [iDelegate requestReturnWithResponseVO:aBaseVO andMsgVO:aMsgVO];
  }
}

//请求失败
- (void)failedRequestWithError:(NSError*)theError
{
  if (iDelegate && [iDelegate respondsToSelector:@selector(failedRequestWithError:)]) 
  {
    [iDelegate failedRequestWithError:theError];
  }
}

@end
