
#import "WAMutilPicBnsHandler.h"
#import "TaskDef.h"
#import "WABnsDesVO.h"

@implementation CWAMutilPicBnsHandler

@synthesize iPicReturnBlock;

- (void)getFirstPicWithRequestVO:(CWAFirstPicContentRequestVO *)aRequestVO
                 WithServiceCode:(NSString *)aServiceCode
              withPicReturnBlock:(TWAPicReturnBlock)aPicReturnBlock
{
  self.iPicReturnBlock = aPicReturnBlock;
  CWABnsDesVO *bnsDesVO = [[CWABnsDesVO alloc]initWithComponetID:WA_TASKCENTER_COMPONENTID
                                                     actionTypes:[NSMutableArray arrayWithObject:@"getPicContent"]];
  NSMutableArray *servicecodes = [[NSMutableArray alloc] initWithObjects:aServiceCode, nil];
  bnsDesVO.iServiceCodes = servicecodes;
  [[CWAHTTPRequestHandler sharedManager]firePostRequestWithBodyData:aRequestVO
                                                           delegate:self
                                                             mehtod:(RQ_METHOD)NORMAL
                                                              bnsVO:bnsDesVO];
}


- (void)getOtherPicWithRequestVO:(CWAOtherPicContentRequestVO *)aRequestVO
                 WithServiceCode:(NSString *)aServiceCode
              withPicReturnBlock:(TWAPicReturnBlock)aPicReturnBlock
{
  self.iPicReturnBlock = aPicReturnBlock;
  CWABnsDesVO *bnsDesVO = [[CWABnsDesVO alloc]initWithComponetID:WA_TASKCENTER_COMPONENTID
                                                     actionTypes:[NSMutableArray arrayWithObject:@"getOtherPicContent"]];
  NSMutableArray *servicecodes = [[NSMutableArray alloc] initWithObjects:aServiceCode, nil];
  bnsDesVO.iServiceCodes = servicecodes;
  [[CWAHTTPRequestHandler sharedManager]firePostRequestWithBodyData:aRequestVO
                                                           delegate:self
                                                             mehtod:(RQ_METHOD)NORMAL
                                                              bnsVO:bnsDesVO];
}

#pragma mark 完成MWAHTTPNotify委托
- (void)requestFinishedWithResponseVO:(CWABaseVO*)aBaseVO andMsgVO:(CWAResponseMsg*)aMsgVO
{
  // 列表组织导航返回值容器
  
  NSNumber *flag = aMsgVO.iFlag;
  NSString *desc = aMsgVO.iDesc;
  
  
  __block NSDictionary *conditonDic = nil;
  // 列表组织错误
  __block NSError *conditonError = nil;
  
  @try
  {
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
    iPicReturnBlock(conditonDic,conditonError);
  }
  @catch (NSException *exception)
  {
  
  }
  @finally
  {
  
  }
 
}


//请求失败
- (void)failedRequestWithError:(NSError*)theError
{
 iPicReturnBlock(nil,theError);
}




@end
