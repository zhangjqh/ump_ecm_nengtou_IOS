//
//  CWATaskNC63BnsHandler.m
//  SSTASK120521A
//
//  Created by HUYCH on 13-5-13.
//
//

#import "WATaskNC63BnsHandler.h"
#import "TaskDef.h"
@implementation CWATaskNC63BnsHandler

@synthesize iGetDefaultValeBlock;

//发送查询审批历史
- (void)sendGetApprovedDetail:(CWATaskHistoryRequestVO *)aRequestVO
              withServiceCode:(NSString *)aServiceCode
{
  iRequstType = EWAGetApprovedDetail;
  CWABnsDesVO *bnsDesVO = [[CWABnsDesVO alloc]initWithComponetID:@"A0A007"
                                                     actionTypes:[NSMutableArray arrayWithObject:@"getNC63ApprovedDetail"]];
  NSMutableArray *servicecodes = [[NSMutableArray alloc] initWithObjects:aServiceCode, nil];
  bnsDesVO.iServiceCodes = servicecodes;
  [[CWAHTTPRequestHandler sharedManager]firePostRequestWithBodyData:aRequestVO
                                                           delegate:self
                                                             mehtod:(RQ_METHOD)NORMAL
                                                              bnsVO:bnsDesVO];
}

//获取动作界面默认值请求
- (void)getDefaultValueWithDefaultValueRequsetVO:(CWADefaultValueRequsetVO *)aDefaultValueRequsetVO
                                 withServiceCode:(NSString *)aServiceCode
                         withGetDefaultValeBlock:(TWAGetDefaultValeBlock) aGetDefaultValeBlock
{
  iRequstType = EWAGETDEFAULTVALUE;
  self.iGetDefaultValeBlock = aGetDefaultValeBlock;
  CWABnsDesVO *bnsDesVO = [[CWABnsDesVO alloc]initWithComponetID:@"A0A007"
                                                     actionTypes:[NSMutableArray arrayWithObject:@"getDefaultValueOfAction"]];
  NSMutableArray *servicecodes = [[NSMutableArray alloc] initWithObjects:aServiceCode, nil];
  bnsDesVO.iServiceCodes = servicecodes;
  [[CWAHTTPRequestHandler sharedManager]firePostRequestWithBodyData:aDefaultValueRequsetVO
                                                           delegate:self
                                                             mehtod:(RQ_METHOD)NORMAL
                                                              bnsVO:bnsDesVO];
}

-(void)requestFinishedWithResponseVO:(CWABaseVO *)aBaseVO
                            andMsgVO:(CWAResponseMsg *)aMsgVO
{
  switch (iRequstType)
 {
    case EWAGetApprovedDetail:
   {
    [super requestFinishedWithResponseVO:aBaseVO
                                andMsgVO:aMsgVO];
   }
      break;
   case EWAGETDEFAULTVALUE:
   {
    [self resolveDefaultValueWithResponseVO:aBaseVO
                                   andMsgVO:aMsgVO];
    return;
   }
      break;
    default:
      break;
  }

}


- (void)resolveDefaultValueWithResponseVO:(CWABaseVO *)aBaseVO
                                 andMsgVO:(CWAResponseMsg *)aMsgVO
{
  __block NSError *conditonError = nil;
  @try
  {
    NSNumber *flag = aMsgVO.iFlag;
    NSString *desc = aMsgVO.iDesc;
  
  
    __block NSDictionary *conditonDic = nil;
    // 列表组织错误
  
  
    if (flag)
    {
      if ( 0 == [flag intValue] )
      {
        // 待构造界面vo的返回值
        conditonDic = aBaseVO.voDictionary;
      }
      else if (1 == [flag intValue])
      {
        conditonError = [[NSError alloc] initWithDomain:desc code:WA_TASKCENTER_ERRORCODE userInfo:nil];
      }
      else if (0 > [flag intValue])
      {
        conditonError = [[NSError alloc] initWithDomain:desc code:WA_TASKCENTER_ERRORCODE userInfo:nil];
      }
      else
      {
        conditonError = [[NSError alloc] initWithDomain:desc code:WA_TASKCENTER_ERRORCODE userInfo:nil];
      }
    
      // 列表的请求或解析发生错误 (例如中间级别的数据结构异常)
      if (!conditonError && !conditonDic )
      {
        conditonError = [[NSError alloc] initWithDomain:NSLocalizedStringFromTable(@"structerror",@"btarget_task", nil)
                                                   code:WA_TASKCENTER_ERRORCODE
                                               userInfo:nil];
      }
    }
    // 回传值
    iGetDefaultValeBlock(conditonDic,conditonError);
  }
  @catch (NSException *exception)
  {
  
  }
  @finally
  {
  }
 
  

}
@end
