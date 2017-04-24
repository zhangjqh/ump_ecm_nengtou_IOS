/*!
 @header CWATaskHandler.m
 @abstract 实现任务的网络请求
 @author dequan
 @copyright ufida
 @version 1.00 2012/05/26 Creation 
 */

#import "CWATaskBnsHandler.h"

@implementation CWATaskBnsHandler
@synthesize iDelegate;

//发送任务审批消息
- (void)sendTaskApprovalMsg:(CWATaskAcRequestVO *)aRequestVO 
                   withTaskType:(NSString *)aTaskType
            withServiceCode:(NSString *)aServiceCode
{
  CWABnsDesVO *bnsDesVO = [[CWABnsDesVO alloc]initWithComponetID:@"A0A007" 
                                                     actionTypes:[NSMutableArray arrayWithObject:aTaskType]];
  NSMutableArray *serviceCodes = [[NSMutableArray alloc] initWithObjects:aServiceCode, nil];
  bnsDesVO.iServiceCodes =  serviceCodes;
  
  [[CWAHTTPRequestHandler sharedManager]firePostRequestWithBodyData:aRequestVO 
                                                           delegate:self 
                                                             mehtod:(RQ_METHOD)NORMAL 
                                                              bnsVO:bnsDesVO];
}

//发送获取任务明细消息
- (void)sendTaskBillMsg:(NSArray *)aRequestArray withServiceCode:(NSString *)aServiceCode
{
  CWABnsDesVO *bnsDesVO = [[CWABnsDesVO alloc]initWithComponetID:@"A0A007" 
                                                     actionTypes:
                           [NSMutableArray arrayWithObjects:@"getTaskBill",@"getTaskAction",@"getMessageAttachmentList",nil]];
  
  NSMutableArray *aServiceCodes = [[NSMutableArray alloc] initWithObjects:aServiceCode,aServiceCode,aServiceCode, nil];
  
  bnsDesVO.iServiceCodes = aServiceCodes;
  
  [[CWAHTTPRequestHandler sharedManager] firePostRequestWithMAOCBodyData:aRequestArray 
                                                                delegate:self 
                                                                  mehtod:(RQ_METHOD)NORMAL  
                                                                   bnsVO:bnsDesVO];

}

//发送查询审批历史
- (void)sendGetApprovedDetail:(CWATaskHistoryRequestVO *)aRequestVO 
              withServiceCode:(NSString *)aServiceCode
{
  CWABnsDesVO *bnsDesVO = [[CWABnsDesVO alloc]initWithComponetID:@"A0A007" 
                                                     actionTypes:[NSMutableArray arrayWithObject:@"getApprovedDetail"]];
  NSMutableArray *servicecodes = [[NSMutableArray alloc] initWithObjects:aServiceCode, nil];
  bnsDesVO.iServiceCodes = servicecodes;
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
  if (iDelegate && [iDelegate respondsToSelector:@selector(requestReturnWithResponseVO:andMsgVO:)]) 
  {
    [iDelegate requestReturnWithResponseVO:aBaseVO andMsgVO:aMsgVO];
  }
}

- (void)failedRequestWithError:(NSError*)theError
{
  if (iDelegate &&[iDelegate respondsToSelector:@selector(requestFail)]) 
  {
//    [iDelegate requestFail];
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
