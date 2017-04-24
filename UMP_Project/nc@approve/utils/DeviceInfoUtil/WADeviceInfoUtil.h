/*!
 @header DevInfoModel.h
 @abstract 设备信息操作类，包含获取信息等
 @discussion 
 @author huych
 @copyright UFIDA
 @version 
 */
#import <Foundation/Foundation.h>
#import "WADeviceInfoVO.h"
@interface CWADeviceInfoUtil : NSObject

/*!
 @method
 @abstract 从持久化文件中读取数据，没有持久化数据的，获取以后持久化
 @discussion  
 @result 设备相关信息,不需要释放结果，owned
 */
+(CWADeviceInfoVO *)getDeviceInfo;

@end
