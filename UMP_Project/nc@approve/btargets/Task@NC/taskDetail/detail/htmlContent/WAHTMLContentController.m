#import "WAHTMLContentController.h"
#import "WAHTMLResourceVO.h"
#import "WAFileUtil.h"
#import "AppDelegate.h"
#import "WASpinnerView.h"

@implementation CWAHTMLContentController

@synthesize iHTMLContentViewVO;


static NSString *WA_HTMLCONTENT_HTMLCONTENT = @"htmlcontent";
static NSString *WA_HTMLCONTENT_HTMLFILE = @"htmlfile";
static NSString *WA_HTMLCONTENT_HTMLNAME = @"htmlname";
static NSString *WA_HTMLCONTENT_RESOUCEDIR = @"resoucedir";
static NSString *WA_HTMLCONTENT_RESOURCE = @"resource";
static NSString *WA_HTMLCONTENT_RESOURCENAME = @"resourcename";
static NSString *WA_HTMLCONTENT_RESOURCEFILE = @"resourcefile";

- (id)init
{
  self = [super init];
  if (self)
  {
    iHTMLContentBnsHandler = [[CWAHTMLContentBnsHandler alloc] init];
  }
  return self;
}

- (void)getHTMLContentWithTaskID:(NSString *)aTaskID
                   WithStatuskey:(NSString *)aStatuskey
                  WithStatuscode:(NSString *)aStatuscode
                          WithID:(NSString *)aID
                    WithDownflag:(NSString *)aDownflag
                 WithServiceCode:(NSString *)aServicecode
                 WithReturnBlock:(TWAHTMLContentVOReturnBlock)aHTMLContentVOReturnBlock
{
  CWAHTMLContentRequestVO *iHTMLContentRequestVO = [[CWAHTMLContentRequestVO alloc] init];
  iHTMLContentRequestVO.iTaskid = aTaskID;
  iHTMLContentRequestVO.iID = aID;
  iHTMLContentRequestVO.iStatuscode = aStatuscode;
  iHTMLContentRequestVO.iStatuskey = aStatuskey;
  iHTMLContentRequestVO.iDownflag = aDownflag;
  [iHTMLContentBnsHandler getHtmlContentWithHTMLContentRequestVO:iHTMLContentRequestVO
                                                  withSeviceCode:aServicecode
                                                       withBlock:
   ^(NSDictionary *aHTMLContentDic, NSError *aError)
  {
    if(aError)
    {
     [[CWASpinnerView sharedCWASpinnerView] hiddenSpinnerView];
      NSString *ok = NSLocalizedStringFromTable(@"ok", @"btarget_task", nil);
      UIAlertView *alert =[[UIAlertView alloc] initWithTitle:[aError domain]
                                                     message:nil
                                                    delegate:nil
                                           cancelButtonTitle:ok
                                           otherButtonTitles:nil];
      [alert show];

      return;
    }
    else
    {
      CWAHTMLContentViewVO *htmlContentViewVO = [self resoluteWithHTMLContentDic:aHTMLContentDic];
      NSURL *url =  [self saveHTMLContentViewVO:htmlContentViewVO];
      aHTMLContentVOReturnBlock(url);
    }
   }];
  
}


- (void)leftBtnClick
{
  UINavigationController *navController = ((AppDelegate *)[[UIApplication sharedApplication] delegate]).navigationCtl ;
  [navController popViewControllerAnimated:YES];
}

- (NSURL *)saveHTMLContentViewVO:(CWAHTMLContentViewVO *)aHTMLContentViewVO
{
  NSURL *url = nil;
  if (aHTMLContentViewVO != nil)
  {
    NSData *aHtmlData= [GTMBase64 decodeString:aHTMLContentViewVO.iHtmlfile];
    NSString *aHtmlPath= [CWAFileUtil createFileAtTmpWithName:aHTMLContentViewVO.iHtmlname
                                                      content:aHtmlData];
    for (int i = 0; i < [aHTMLContentViewVO.iResourcelist count]; i++)
    {
      CWAHTMLResourceVO *resourceVO = aHTMLContentViewVO.iResourcelist[i];
      NSData *aResourceData = [GTMBase64 decodeString:resourceVO.iResourcefile];
      NSString *resourceWholeName = [NSString stringWithFormat:@"%@/%@", aHTMLContentViewVO.iResoucedir, resourceVO.iResourcename];
      [CWAFileUtil createFileAtTmpWithName:resourceWholeName content:aResourceData];
    }
    url = [NSURL fileURLWithPath:aHtmlPath];
  }
  return url;
}

- (CWAHTMLContentViewVO *)resoluteWithHTMLContentDic:(NSDictionary *)aHTMLContentDic
{
  CWAHTMLContentViewVO *htmlContentViewVO = [[CWAHTMLContentViewVO alloc] init];
  NSArray *serviceCodes = [aHTMLContentDic objectForKey:WA_HTTP_RTN_SERVICECODES_KEY];
  if (!serviceCodes)
  {
    serviceCodes = [aHTMLContentDic objectForKey:WA_HTTP_RTN_SERVICECODE_KEY];
  }
  if (serviceCodes)
  {
    for (NSInteger i = 0; i < [serviceCodes count]; i++)
    {
      NSString *serviceCode = [serviceCodes objectAtIndex:i];
      NSArray *serviceCodeArray = [aHTMLContentDic objectForKey:serviceCode];
      if (serviceCodeArray == nil)
      {
        continue;
      }
      NSDictionary *htmllDic = [serviceCodeArray objectAtIndex:0];
      NSDictionary *htmlComentDic = [htmllDic objectForKey:WA_HTMLCONTENT_HTMLCONTENT];
      

      htmlContentViewVO.iHtmlfile = [htmlComentDic objectForKey:WA_HTMLCONTENT_HTMLFILE];
      htmlContentViewVO.iHtmlname = [htmlComentDic objectForKey:WA_HTMLCONTENT_HTMLNAME];
      htmlContentViewVO.iResoucedir = [htmlComentDic objectForKey:WA_HTMLCONTENT_RESOUCEDIR];
      /**
       遍历  循环获取资源文件
       **/
      NSArray *htmlResourceArray = [htmlComentDic objectForKey:WA_HTMLCONTENT_RESOURCE];
    
      NSMutableArray *resourcelist = [[NSMutableArray alloc] initWithCapacity:1];
      for (int i=0; i<[htmlResourceArray count]; i++)
      {
        if ([[htmlResourceArray objectAtIndex:i] isKindOfClass:[NSDictionary class]])
        {
          NSDictionary *htmlResourceDic = [htmlResourceArray objectAtIndex:i];
          CWAHTMLResourceVO *htmlResourceVO = [[CWAHTMLResourceVO alloc] init];
          htmlResourceVO.iResourcefile = [htmlResourceDic objectForKey:WA_HTMLCONTENT_RESOURCEFILE];
          htmlResourceVO.iResourcename = [htmlResourceDic objectForKey:WA_HTMLCONTENT_RESOURCENAME];
          [resourcelist addObject:htmlResourceVO];
          
        }
      }
      htmlContentViewVO.iResourcelist = resourcelist;

    }
  
  }
  return htmlContentViewVO;
}
@end
