//
//  WAAppUpateHandler.m
//  NC63Multiple
//
//  Created by sunset on 13-10-23.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//
#import "WAAppUpateHandler.h"
#import "WAHTTPRequestHandler.h"
#import "WAHTTPRequestConfigVO.h"
#import "WAJSONParserUtils.h"
#import "WACommonInfoVO.h"
#import "WAUFTool.h"
@interface CWAAppUpateHandler()
{
  CWAHTTPRequestHandler *iReqHandler;
}
@property (nonatomic,retain) CWAHTTPRequestHandler *iReqHandler;
@end
@implementation CWAAppUpateHandler
static NSString * const APP_UPATE_RTN_FLAG_SUCESS = @"E000";
static NSString * const APP_UPATE_RTN_KEY_RESULT = @"result";
static NSString * const APP_UPATE_RTN_KEY_INFO = @"info";
@synthesize iAppUpdateCompleteBlock;
@synthesize iReqHandler;

- (void)requestAppUpateWithCompleteBlock:(CWAAppUpdateFinishBlock )aBlock
{
  CWAHTTPRequestHandler *reqHandler = [[CWAHTTPRequestHandler alloc]init];
  self.iReqHandler = reqHandler;

  
  // 请求配置vo
  CWAHTTPRequestConfigVO *httpConfigVO = [[CWAHTTPRequestConfigVO alloc]init];
  httpConfigVO.isEncrypt =NO;
  httpConfigVO.isCompress = NO;
  httpConfigVO.iCompressType = (COMPRESS_TYPE)OTHER_ZIP;
  //如果定义了向固定服务器更新app的地址 则向固定服务器发起请求
#ifdef APP_UPDATE_URL
  httpConfigVO.iUrl = APP_UPDATE_URL;
#else
  // 向MA发起更新请求
  CWAHTTPRequestHandler  *httphandler=[CWAHTTPRequestHandler sharedManager];
  httpConfigVO.iUrl = [httphandler.iHttpUrl stringByAppendingFormat:@"%@%@",@"/servlet",@"/checkversion"];
#endif
  httpConfigVO.iCompressAndEncryptOrder = (TRANS_ORDER)OTHER;
  NSMutableDictionary *paramDictionary = [[NSMutableDictionary alloc]init];
  
   CWABaseVO *basevo = [[CWABaseVO alloc]initWithDictionary:(NSDictionary *)paramDictionary];
  httpConfigVO.iReqParamVO = basevo;

  //发起请求
  [self.iReqHandler fireAppUpdateRequestWithDelegate:self andConfigVO:httpConfigVO];

}

// 返回值解析
- (void) resolveRetrunString:(NSString *) aString intoVersionVO:(CWAAPPUpdateVersionInfoVO *) aVersionvo
{
  __block BOOL isSuccess = NO;
  @try
  {
    NSObject *rtnValue =[CWAJSONParserUtils parserWithNSString:aString];
    if ([rtnValue isKindOfClass:[NSDictionary class]])
    {
      NSDictionary *rtnDic = (NSDictionary *)rtnValue;
      NSObject *result = [rtnDic objectForKey:APP_UPATE_RTN_KEY_RESULT];
      // 解析result 中的 处理结果 只处理E000其他结果可忽略
      if ([result isKindOfClass:[NSArray class]] )
      {
        [((NSArray*)result) enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
          // 处理结果为成功
          if ([obj isKindOfClass:[NSString class]] && [((NSString *)obj) isEqualToString:APP_UPATE_RTN_FLAG_SUCESS])
          {
            isSuccess = YES;
          }
          if(idx ==0)
          {
            aVersionvo.iFlagSign = [obj isKindOfClass:[NSString class]]? ((NSString *)obj) : @"";
          }
          else if (idx ==1)
          {
            aVersionvo.iFlagDesc = [obj isKindOfClass:[NSString class]]? ((NSString *)obj) : @"";
          }
          
        }];
        // 如果处理结果为成功 则继续装填其他返回信息
        if (isSuccess)
        {
          NSObject *infoValue = [rtnDic objectForKey:APP_UPATE_RTN_KEY_INFO];
          if ([infoValue isKindOfClass:[NSArray class]])
          {
            NSArray *infoArray = (NSArray *) infoValue;
            if (infoArray.count >=4)
            {
              // 版本号
              aVersionvo.iVersionNo = [[infoArray objectAtIndex:0] isKindOfClass:[NSString class]]? ((NSString *)[infoArray objectAtIndex:0]) : @"";
              // 版本提示信息
              aVersionvo.iVersionDesc = [[infoArray objectAtIndex:1] isKindOfClass:[NSString class]]? ((NSString *)[infoArray objectAtIndex:1]) : @"";
              // 更新内容
              aVersionvo.iVersionContent = [[infoArray objectAtIndex:2] isKindOfClass:[NSString class]]? ((NSString *)[infoArray objectAtIndex:2]) : @"";
              // 更新地址
              aVersionvo.iNewVersionURL = [[infoArray objectAtIndex:3] isKindOfClass:[NSString class]]? ((NSString *)[infoArray objectAtIndex:3]) : @"";
            }
          }
        }
      }
      aVersionvo.isSuccess = isSuccess;
    }
  }
  @catch (NSException *exception) {
    
  }
  @finally {
    
  }
}

# pragma mark HTTP代理
- (void)requestFinishedWithResponseString:(NSString*)aString
{

  __block CWAAPPUpdateVersionInfoVO *aVersionvo =[[CWAAPPUpdateVersionInfoVO alloc] init];
  [self resolveRetrunString:aString intoVersionVO:aVersionvo];
  iAppUpdateCompleteBlock(aVersionvo,nil);


}

# pragma mark 类方法 打开要更新的app url
+ (void)redirectToAppUpdateUrl
{
  // 获取要更新的应用的url
  NSString *urlstr = ((CWACommonInfoVO *)[CWACommonInfoVO sharedManager]).iAppUpdateUrl;
  urlstr = urlstr?urlstr :@"";
  NSURL *url = [NSURL URLWithString:urlstr];
  [[UIApplication sharedApplication] openURL:url];
}

+ (BOOL)isNeedUpdateToVersionVO:(CWAAPPUpdateVersionInfoVO *) aVersionVO
{
  BOOL isNeed = NO;
  // 获取版本比对结果
  NSInteger result = [CWAUFTool compareCurrentAppVersionWithString:aVersionVO.iVersionNo];
  if (result < 0)
  {
    //将获取到的最新app版本version缓存到CommonInfoVO
    ((CWACommonInfoVO *)[CWACommonInfoVO sharedManager]).iAppUpdateUrl = aVersionVO.iNewVersionURL;
    isNeed = YES;
  }
  return isNeed;
}

@end
