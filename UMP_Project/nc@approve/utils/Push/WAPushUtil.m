/*!
 @class
 @abstract push操作类
 */

#import "WAPushUtil.h"
#import "WAFileUtil.h"
#import "WAStringUtil.h"
@implementation CWAPushUtil

#pragma mark 注册
+ (void)registerWithIsBadge:(BOOL)aIsBadge 
                WithIsAlert:(BOOL)aIsAlert 
                WithIsSound:(BOOL)aIsSound;
{
  NSUInteger type = [self switchToTypeWithIsBadge:aIsBadge
                                      WithIsAlert:aIsAlert
                                      WithIsSound:aIsSound];
  [[UIApplication sharedApplication] registerForRemoteNotificationTypes:type];
}

//转化为系统的类别
+ (NSUInteger) switchToTypeWithIsBadge:(BOOL)aIsBadge 
                           WithIsAlert:(BOOL)aIsAlert 
                           WithIsSound:(BOOL)aIsSound;
{
  NSUInteger which = 0;
  if (aIsBadge) 
  {
    which = which | UIRemoteNotificationTypeBadge;
  }
  if (aIsAlert) 
  {
    which = which | UIRemoteNotificationTypeAlert;
  }
  if (aIsSound) 
  {
    which = which | UIRemoteNotificationTypeSound;
  }
  return which;
}

#pragma mark 注销
+ (void)unregister
{
  [[UIApplication sharedApplication] unregisterForRemoteNotifications];
}

#pragma  mark 保存deviceToken到NSUserDefaults中，并保存
+ (void)putDeviceTokenToNSUserDefaults:(NSData  *)aDeviceToken
{
  NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
  NSString *tokenStr = [aDeviceToken description];
  NSString *pushToken = [[tokenStr
                            stringByReplacingOccurrencesOfString:@"<" withString:@""] 
                           stringByReplacingOccurrencesOfString:@">" withString:@""];
  [userDefaults setValue:pushToken forKey:@"DeviceToken"];
  [userDefaults synchronize];
}

#pragma  mark 从NSUserDefaults中获取deviceToken
+ (NSString *)getDeviceTokenFromNSUserDefaults
{
  NSString *deviceToken = nil;
  deviceToken = (NSString *)[[NSUserDefaults standardUserDefaults] valueForKey:@"DeviceToken"];
  return deviceToken;
}
@end
