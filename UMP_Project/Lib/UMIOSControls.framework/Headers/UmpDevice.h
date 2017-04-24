//
//  UmpDevice.h
//  AnimationDemo
//
//  Created by dingheng on 13-7-31.
//  Copyright (c) 2013年 dingheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "sys/utsname.h"
/*
 * 本地信息管理
 */
@interface UmpDevice : NSObject{

    
}
@property (nonatomic,strong) NSString * usercode;
@property (nonatomic,strong) NSString * password;
@property (nonatomic,strong) NSString * config;

+ (UmpDevice *)shareDevice;
/*
 * 设备信息
 * @pram return
 
   Model         类型 iphone/andorid/wp
   OS            系统 ios/andorid/wp7
   Version       版本 2.3
   DeviceID      设备ID 
   localPhoneModel  本地化
 
 */
-(NSDictionary *)getDeviceData;

/*
 * 用户信息
 * @pram return
 
   usercode
 
 */
-(NSDictionary *)getUserData;

/*
 * app信息
 * @pram return
 
   AppId          应用ID
   AppVersion     应用版本号
 
 */
-(NSDictionary *)getAppData;

/*
 * Config服务配置
 * @pram return
   
   appconfig   服务信息
 
 */
-(NSDictionary *)getAppConfigData;

@end
