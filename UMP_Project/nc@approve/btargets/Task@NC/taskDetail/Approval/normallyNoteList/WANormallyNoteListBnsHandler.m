

#import "WANormallyNoteListBnsHandler.h"
#import "WABnsDesVO.h"
#import "TaskDef.h"
@implementation CWANormallyNoteListBnsHandler


@synthesize iNoteListReturnBlock;


- (void)getNormalNoteWithVO:(CWANormallyNoteListRequestVO *)aVO
            WithServiceCode:(NSString *)aServiceCode
                  withBlock:(TWANoteListReturnBlock)aBlock
{
  CWABnsDesVO *bnsDesVO = [[CWABnsDesVO alloc]initWithComponetID:@"A0A007"
                                                     actionTypes:[NSMutableArray arrayWithObject:@"getNoteList"]];
  NSMutableArray *serviceCodes = [[NSMutableArray alloc] initWithObjects:aServiceCode, nil];
  bnsDesVO.iServiceCodes = serviceCodes;
  self.iNoteListReturnBlock = aBlock;
  [[CWAHTTPRequestHandler sharedManager] firePostRequestWithBodyData:aVO
                                                           delegate:self
                                                             mehtod:(RQ_METHOD)NORMAL
                                                              bnsVO:bnsDesVO];
}




-(void)requestFinishedWithResponseVO:(CWABaseVO *)aBaseVO
                            andMsgVO:(CWAResponseMsg *)aMsgVO
{
 
  
  
  __block NSDictionary *conditonDic = nil;
  // 列表组织错误
  __block NSError *conditonError = nil;
  
  @try
  {
    NSNumber *flag = aMsgVO.iFlag;
    NSString *desc = aMsgVO.iDesc;
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
    iNoteListReturnBlock(conditonDic,conditonError);
  }
  @catch (NSException *exception)
  {
  
  }
  @finally
  {
  
  }
  
  
}

- (void)failedRequestWithError:(NSError*)theError;
{
  UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:nil
                                                      message:[theError domain]
                                                     delegate:nil
                                            cancelButtonTitle:NSLocalizedStringFromTable(@"ok", @"btarget_task",nil)
                                            otherButtonTitles:nil];
  [alertView show];
  
}


@end
