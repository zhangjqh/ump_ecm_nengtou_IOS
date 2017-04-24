/*!
 @header WAPushSettingUtil.h
 @abstract push消息操作类，如获取deviceToken等
 @discussion 
 @author huych
 @copyright UFIDA
 @version 
 */


#import <Foundation/Foundation.h>
#import "WAPushSettingVO.h"
@interface CWAPushSettingUtil : NSObject

/*!
 @method
 @abstract 从持久化文件中读取数据,无持久化数据返回nil
 @discussion  
 @result push消息设置相关信息
 */
+ (CWAPushSettingVO *)getPushSettingVOFromFile;

/*!
 @method
 @abstract 从持久化文件中读取数据,无持久化数据返回nil
 @discussion  
 @param aPushSettingVO 需要保存的消息设置
 @result 
 */
+ (void)savePushSettingVOToFile:(CWAPushSettingVO *)aPushSettingVO;


@end
