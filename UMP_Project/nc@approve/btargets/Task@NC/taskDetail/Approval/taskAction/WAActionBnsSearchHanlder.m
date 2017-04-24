/*!
 @header CWAActionBnsHanlder.m
 @abstract 动作请求的vo
 @author dequan
 @copyright ufida
 @version 1.00 2012/07/21 Creation 
 */

#import "WAActionBnsSearchHanlder.h"

@implementation CWAActionBnsSearchHanlder
@synthesize iDelegate;

//开始搜索条件的消息发送
- (void)sendSearchListConditionMsg:(CWASearchConditionRequestVO *)aRequestVO 
                    WithComponetID:(NSString *)aComponetID
                   WithServiceCode:(NSString *)aServiceCode
{
  CWABnsDesVO *bnsDesVO = [[CWABnsDesVO alloc]initWithComponetID:aComponetID 
                                                     actionTypes:[NSMutableArray arrayWithObject:@"getConditionDescription"]];
  NSMutableArray *serviceCodes = [[NSMutableArray alloc] initWithObjects:aServiceCode, nil];
  bnsDesVO.iServiceCodes = serviceCodes;
  
  [[CWAHTTPRequestHandler sharedManager]firePostRequestWithBodyData:aRequestVO 
                                                           delegate:self 
                                                             mehtod:(RQ_METHOD)NORMAL 
                                                              bnsVO:bnsDesVO];
}

//发送获得人员列表信息
- (void)sendGetUserListMsg:(CWALinkManRequestVO *)aRequestVO 
            withActionType:(NSString *)aActionType
           withServiceCode:(NSString *)aServiceCode
{
  CWABnsDesVO *bnsDesVO = [[CWABnsDesVO alloc]initWithComponetID:@"A0A007" 
                                                     actionTypes:[NSMutableArray arrayWithObject:aActionType]];
  
  NSMutableArray *iserviceCodes = [[NSMutableArray alloc] initWithObjects:aServiceCode, nil];
  bnsDesVO.iServiceCodes = iserviceCodes;
  [[CWAHTTPRequestHandler sharedManager]firePostRequestWithBodyData:aRequestVO 
                                                           delegate:self 
                                                             mehtod:(RQ_METHOD)NORMAL 
                                                              bnsVO:bnsDesVO];
}

#pragma mark -
#pragma mark MWAHTTPNotify methods
//异步可用 请求结束时，此方法被调用
-(void)requestFinishedWithResponseVO:(CWABaseVO *)aBaseVO andMsgVO:(CWAResponseMsg *)aMsgVO
{
    if (iDelegate && [iDelegate respondsToSelector:@selector(requestReturnWithResponseVO:andMsgVO:withTag:)])
  {
    [iDelegate requestReturnWithResponseVO:aBaseVO andMsgVO:aMsgVO withTag:@""];
  }
}

- (void)failedRequestWithError:(NSError*)theError
{
  if (iDelegate &&[iDelegate respondsToSelector:@selector(requestFail)]) 
  {
    [iDelegate requestFail];
  }
  if (iDelegate && [iDelegate respondsToSelector:@selector(failedRequestWithError:)]) 
  {
    [iDelegate failedRequestWithError:theError];
  }
}

- (void)requestOfOneComponentMultiActionsResponesVOs:(NSArray*)vosArray
{
  if(iDelegate && [iDelegate respondsToSelector:@selector(requestOfOneComponentMultiActionsResponesVOs:)])
  {
    [iDelegate requestOfOneComponentMultiActionsResponesVOs:vosArray];
  }
}
@end
