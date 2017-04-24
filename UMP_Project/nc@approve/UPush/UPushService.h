//
//  UPushService.h
//  upush
//
//  Created by 振亚 姜 on 14-12-13.
//  Copyright (c) 2014年 Uap. All rights reserved.
//
/*! 需要引入的框架
 * libz.dylib
 * CoreGraphics.framework
 * SystemConfiguration.framework
 * CFNetwork.framework
 * MobileCoreServices.framework
 */
#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

#define URL @"http://upush.yyuap.com/client/ios.do" //默认服务器地址
#define SUCCESS 0 // 操作成功
#define DATABASE_FAIL 2100 //数据库操作失败
#define INFO_INCOMPLETE 2151 //提交信息不完整
#define NO_APP 2200 //应用未找到
#define APP_DELETED 2201 //应用已删除
#define NO_NOTICE 2301 //消息未找到
#define NO_TAG 2401 //标签未找到

typedef void (^ UPushServiceOpenLocation)(CLLocation * locations);

@interface UPushService : NSObject

/*! @brief 注册
 *
 * 需要在每次注册时调用
 * @see upushSignin
 * @param token 向apple服务器注册设备和应用后返回的token
 * @param ip 服务器地址
 * @param port 服务器端口
 * @param appid 在推送网站注册的应用ID
 * @param deviceid 用户自定义的设备id
 * 如果ip或port任一为空,则默认服务器地址为 URL
 */
+(void)upushSignin:(NSString *)token ip:(NSString *)ip port:(NSString *)port appid:(NSString *)appid deviceid:(NSString *)deviceid;
/*! @brief 通知点击
 *
 * 需要在设备接收到通知后,用户点击时调用
 * @see upushNotificationClick
 * @param ip 服务器地址
 * @param port 服务器端口
 * @param appid 在推送网站注册的应用ID
 * 如果ip或port任一为空,则默认服务器地址为 URL
 * @return 成功返回YES，失败返回NO。
 */
+(BOOL)upushNotificationClick:(NSString *)ip port:(NSString *)port appid:(NSString *)appid deviceid:(NSString *)deviceid;
/*! @brief 添加标签
 *
 * 需要添加标签时调用
 * @see upushAddTag
 * @param ip 服务器地址
 * @param port 服务器端口
 * @param tag 标签
 * @param appid 在推送网站注册的应用ID
 * 如果ip或port任一为空,则默认服务器地址为 URL
 * @return 成功返回YES，失败返回NO。
 */
+(BOOL)upushAddTag:(NSString *)tag ip:(NSString *)ip port:(NSString *)port appid:(NSString *)appid deviceid:(NSString *)deviceid;
/*! @brief 移除标签
 *
 * 需要移除标签时调用
 * @see upushRemoveTag
 * @param ip 服务器地址
 * @param port 服务器端口
 * @param tag 标签
 * @param appid 在推送网站注册的应用ID
 * 如果ip或port任一为空,则默认服务器地址为 URL
 * @return 成功返回YES，失败返回NO。
 */
+(BOOL)upushRemoveTag:(NSString *)tag ip:(NSString *)ip port:(NSString *)port appid:(NSString *)appid deviceid:(NSString *)deviceid;
/*! @brief 添加位置信息
 *
 * 用户定位时调用
 * @see upushPosition
 * @param ip 服务器地址
 * @param port 服务器端口
 * @param locationInfo 位置经纬度坐标
 * @param appid 在推送网站注册的应用ID
 * 如果ip或port任一为空,则默认服务器地址为 URL
 * @return 成功返回YES，失败返回NO。
 */
+(BOOL)upushPosition:(CLLocation *)locationInfo ip:(NSString *)ip port:(NSString *)port appid:(NSString *)appid deviceid:(NSString *)deviceid;
/*! @brief 开启位置推送
 *
 * 开启定位服务时调用,自动发送定位信息
 * @see upushLBSon
 * @param ip 服务器地址
 * @param port 服务器端口
 * @param lbsOn 开启关闭标识,开启为1,关闭为0
 * @param appid 在推送网站注册的应用ID
 * block 返回定位信息
 * 如果ip或port任一为空,则默认服务器地址为 URL
 * @return 成功返回YES，失败返回NO。
 */
+(BOOL)upushLBSon:(int)lbsOn ip:(NSString *)ip port:(NSString *)port appid:(NSString *)appid deviceid:(NSString *)deviceid block:(UPushServiceOpenLocation)block;
/*! @brief 开启位置推送
 *
 * 开启定位服务时调用,自动发送定位信息,需要用户设置移动间隔和精度
 * @see upushLBSon
 * @param ip 服务器地址
 * @param port 服务器端口
 * @param lbsOn 开启关闭标识,开启为1,关闭为0
 * @param meters 定位间隔(单位:米),如10.0f
 * @param appid 在推送网站注册的应用ID
 * @param locationAccuracy 定位精度,如:kCLLocationAccuracyBest
 * block 返回定位信息
 
 CLLocationAccuracy kCLLocationAccuracyBest; //最佳精度
 CLLocationAccuracy kCLLocationAccuracyNearestTenMeters; //10m精度
 CLLocationAccuracy kCLLocationAccuracyHundredMeters;    //100m精度
 CLLocationAccuracy kCLLocationAccuracyKilometer;    //1km精度
 CLLocationAccuracy kCLLocationAccuracyThreeKilometers;  //3km精度
 
 * 如果ip或port任一为空,则默认服务器地址为 URL
 * @return 成功返回YES，失败返回NO。
 */
+(BOOL)upushLBSon:(int)lbsOn metres:(float)meters locationAccuracy:(CLLocationAccuracy)locationAccuracy ip:(NSString *)ip port:(NSString *)port appid:(NSString *)appid deviceid:(NSString *)deviceid block:(UPushServiceOpenLocation)block;

/*! @brief 获取deviceid
 *
 * 在用户没有自定义deviceid的情况下,获取sdk生成的deviceid
 * @see getDeviceId
 * @return 成功返回YES，失败返回NO。
 */
+(NSString *)getDeviceId;

@end
