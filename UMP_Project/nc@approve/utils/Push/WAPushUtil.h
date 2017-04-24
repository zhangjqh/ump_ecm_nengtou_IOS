/*!
 @header WAPushSettingUtil.h
 @abstract DeviceToken 操作类，比如注册，保存deviceToken，注销等。
 @discussion 
 @author huych
 @copyright UFIDA
 @version 
 */
#import <Foundation/Foundation.h>

@interface CWAPushUtil : NSObject

/*!
 @method
 @abstract 注册
 @discussion  
 @param aPushSettingVO 注册设置类
 @result 
 */
+ (void)registerWithIsBadge:(BOOL)aIsBadge 
                WithIsAlert:(BOOL)aIsAlert 
                WithIsSound:(BOOL)aIsSound;

/*!
 @method
 @abstract 注销push消息，并删除文件
 @discussion  
 @result 
 */
+ (void)unregister;

/*!
 @method
 @abstract 保存deviceToke到NSUserDefaults中，并保存
 @discussion  
 */
+ (void)putDeviceTokenToNSUserDefaults:(NSData *)aDeviceToken;

/*!
 @method
 @abstract 从NSUserDefaults获取deviceToke，如果没有则返回nil
 @discussion  
 @result 从文件获取deviceToken,如果没有的话，返回nil
 */
+ (NSString *)getDeviceTokenFromNSUserDefaults;

@end
