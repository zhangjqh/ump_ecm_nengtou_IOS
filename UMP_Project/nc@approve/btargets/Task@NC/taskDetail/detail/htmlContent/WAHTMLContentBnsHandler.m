
#import "WAHTMLContentBnsHandler.h"
#import "TaskDef.h"
@implementation CWAHTMLContentBnsHandler

@synthesize iBlock;

static NSString *WA_TASKCENTER_GETCOMMODITYCONTENTS = @"getHTMLContent";

- (id)init
{
  self = [super init];
  if (self)
  {
    iBnsDesVO = [[CWABnsDesVO alloc] initWithComponetID:WA_TASKCENTER_COMPONENTID
                                          actionTypes:[NSMutableArray arrayWithObject:WA_TASKCENTER_GETCOMMODITYCONTENTS]];
  }
  return self;
}


- (void)getHtmlContentWithHTMLContentRequestVO:(CWAHTMLContentRequestVO *)aHTMLContentRequestVO
                                withSeviceCode:(NSString *)aSeviceCode
                                     withBlock:(TWAHTMLContentReturnBlock)aBlock
{
  [aHTMLContentRequestVO fillVoDictionary];
  self.iBlock = aBlock;
  iBnsDesVO.iServiceCodes = [[NSMutableArray  alloc] initWithObjects:aSeviceCode, nil];
  [[CWAHTTPRequestHandler sharedManager]firePostRequestWithBodyData:aHTMLContentRequestVO
                                                           delegate:self
                                                             mehtod:(RQ_METHOD)NORMAL
                                                              bnsVO:iBnsDesVO];
}


#pragma mark 完成MWAHTTPNotify委托
- (void)requestFinishedWithResponseVO:(CWABaseVO*)aBaseVO
                             andMsgVO:(CWAResponseMsg*)aMsgVO
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
    // 回传值
    iBlock(conditonDic,conditonError);
  }
  @catch (NSException *exception)
  {
    NSError *conditonError = [[NSError alloc] initWithDomain:exception.description
                                                        code:WA_TASKCENTER_ERRORCODE
                                                    userInfo:nil];
    iBlock(conditonDic,conditonError);
  }
  @finally
  {
  
  }
}



//请求失败
- (void)failedRequestWithError:(NSError*)theError
{
  NSString *ok = NSLocalizedStringFromTable(@"ok", @"btarget_task", nil);
  UIAlertView *alert =[[UIAlertView alloc] initWithTitle:[theError domain]
                                                 message:nil
                                                delegate:nil
                                       cancelButtonTitle:ok
                                       otherButtonTitles:nil];
  [alert show];
  return;
}

@end
