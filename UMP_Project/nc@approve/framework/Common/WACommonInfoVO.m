/*!
 @header CWACommonInfoVO 
 @abstract 类似于登陆后获取的一些常驻内存的上下文信息 单例
 @author Created by sunset 
 @version Copyright (c) 2012 __wa__. All rights reserved.1.00 12-5-15 Creation 
 */

#import "WACommonInfoVO.h"
#import <UMIOSControls/UMService.h>
@interface CWACommonInfoVO()
@property (assign,nonatomic) NSInteger iAccountType;
@end

@implementation CWACommonInfoVO
static NSString *WA_HTTP_COMVO_GRPID = @"groupid";
static NSString *WA_HTTP_COMVO_USRID = @"usrid";
    //单例实例
static CWACommonInfoVO *sharedInstance = nil;

@synthesize iUserID;
@synthesize iUserName;
@synthesize iGroupID;
@synthesize iGroupCode;
@synthesize iAttSizeDic;
@synthesize iSCWithInfoDictionary;
@synthesize iLoginInfoForUserName;
@synthesize iAppVersion;
@synthesize iAccountType;
@synthesize iAppUpdateUrl;
/*!
 @method
 @abstract 单例实例获取
 @discussion 
 @result CWACommonInfoVO
 */
+(id)sharedManager
{
  @synchronized(self) 
  {
    if(sharedInstance == nil)
    {
      sharedInstance = [[self alloc] init];
      // 初始化默认帐套类型为其他
      sharedInstance.iAccountType = (WAAccountType)WA_ACCOUNTTYPE_UNKNOWN;
      // 本地确定应用为u8
#ifdef APP_TYPE_U8
      sharedInstance.iAccountType =(WAAccountType)WA_ACCOUNTTYPE_U8;
#endif
      // 本地确定应用为非u8
#ifdef APP_TYPE_NC
      sharedInstance.iAccountType =(WAAccountType)WA_ACCOUNTTYPE_OTHER;
#endif
    }
  }
  return sharedInstance;
}


/*!
 @method
 @abstract 根据servicecode查询 获取groupid和userid
 @discussion 
 @result NSDictionary
 */
-(NSDictionary *)getGroupIDAndUserIDByServiceCode:(NSString *)aServiceCode
{
  NSDictionary *comminfoDict = [sharedInstance.iSCWithInfoDictionary valueForKey:aServiceCode];
  NSMutableDictionary *tempDict = [[NSMutableDictionary alloc]init];
  [tempDict setValue:[comminfoDict valueForKey:@"groupID"] forKey:@"groupID"];
  [tempDict setValue:[comminfoDict valueForKey:@"userID"] forKey:@"userID"];
  NSDictionary *rtnDict = [NSDictionary dictionaryWithDictionary:tempDict];
  return rtnDict;
}

+(NSDictionary *)getDefaultEmptyGroupIDAndUserID
{
    UMSetting* setting = [UMSetting sharedInstance];
  NSDictionary *rtnDict = [NSDictionary dictionaryWithObjectsAndKeys:setting.groupid,WA_HTTP_COMVO_GRPID,setting.userid,WA_HTTP_COMVO_USRID,nil];
  return rtnDict;
}

+(void)setAccountType:(NSInteger)anAccountType
{
  sharedInstance.iAccountType=anAccountType;
}


-(NSString *)getAttSizeWithServiceCode:(NSString *)aServiceCode
{
    return [iAttSizeDic valueForKey:aServiceCode];
}
@end
