//
//  UMDevice.h
//  AnimationDemo
//
//  Created by dingheng on 13-8-9.
//  Copyright (c) 2013年 dingheng. All rights reserved.
//

#import <Foundation/Foundation.h>


#import "UMIOSCommon.h"
#import "UMCommon.h"
//#import "UMQRCodeViewController.h"
#import "XEventArgs.h"




/*------BLOCKS------*/
/**
 *
 *  成功标识
 *
 */
typedef void (^UMDeviceFinish)(BOOL success);
/**
 *
 *  二维码返回数据
 *
 */
typedef void (^UMCaptureTwodcode)(NSString * code);

/*
 *  本地设备服务
 */
@interface UMDevice : NSObject



/*
 *  @brief 获取设备信息
 *  @param bindfield     可选    返回值绑定要当前Context的某个字段上。
           callback      可选    获得后执行的CallBack方法
 *  @return 
 {
 "screen": {
 "density": 3,
 "height": 1920,
 "width": 1080
 },
 "os": "android",
 "model": "GT-I9500",
 "manufacturer": "samsung",
 "imei": "355799055308074",
 "cpu": "armeabi-v7a",
 "bootloader": "I9500ZCUFMK1",
 "wfaddress": "CC:3A:61:9A:E1:39",
 "kversion": "3.4.5",
 "version": 18,
 "deviceid": "4d008bb04b1a21bf_355799055308074"
 }

 */
+(NSString *)getDeviceInfo:(XEventArgs *)args;

//UMDevice.getTimeZoneID（返回当前时区的ID，形如：GMT+08:00）点击工程强行关闭了
//UMDevice.getTimeZoneDisplayName（返回当前时区的DisplayName，形如：Asia/Shanghai）点击工程强行关闭了
//UMDevice.getDeviceInfo（获取当前设备的信息）点击没有反应


+(NSString *)getTimeZoneID:(XEventArgs *)args;

+(NSString *)getTimeZoneDisplayName:(XEventArgs *)args;
//打开闪光灯
+(void)openFlash:(XEventArgs *)args;
//关闭闪光灯
+(void)closeFlash:(XEventArgs *)args;

/*
 *  @brief	打开PDF、word、Excel、png等
 *
 *  @param  path 文件路径 
 */
+(void)openFile:(XEventArgs *)args;

/*
 *  @brief	打开通讯录
 */
+(void)openAddressBook:(XEventArgs *)args;

/*
 *  @brief 打开地图
 */
+(void)gotoMapView:(XEventArgs *)args;

/*
 *  @brief 获取经纬度
 */
+(void)getLocation:(XEventArgs *)args;

/*
 *  @brief 打开二维码
 */
+(void)captureTwodcode:(XEventArgs *)args;

+(NSString *)createTwocodeImage:(XEventArgs *)args;

+(void)endScan:(NSString*)txt;

/*
 *  @brief	打开相机
 */
+(void)openCamera:(XEventArgs *)args;

+(void)openVideo:(XEventArgs *)args;
/*
 *  @brief	打开相册
 */
+(void)openPhotoAlbum:(XEventArgs *)args;

/*
 *  @brief	获取视频
 */
+(void)captureVideo:(XEventArgs *)args;

+(void)capturePhoto:(XEventArgs *)args;

+(NSString *)getAppAlbumPath:(XEventArgs *)args;

/*
 *  @brief	发送邮件
 *
 *	@param 	 recevie      收信人邮箱，用逗号分格，或绑定到Ctx的路径，或绑定到Ctx的数组
 *           message      内容，可以绑CTx"
 *
 */
+(void)sendMail:(XEventArgs *)args;

/*
 *  @brief	发送短信
 *
 *	@param 	 recevie      收信人号码，用逗号分格，或绑定到Ctx的路径，或绑定到Ctx的数组
 *           message      内容，可以绑CTx"
 *
 */
+(void)sendMessage:(XEventArgs *)args;
/*
 *  @brief	群发送短信
 *	phones : tels,
 content : $id("textarea1").get("value"),
 "callback" : "sendmsgs()"
 */
+(void)SendMutilMessage:(XEventArgs *)args;

/*
 *  @brief	打电话
 *
 *	@param 	 tel      号码
 *
 */
+(void)callPhone:(XEventArgs *)args;
/*
 *  @brief	保存联系人
 *
 *  @param  tel" 手机电话
 *          employeename"显示名字
 *          jobname"职务        
 *          orgname"部门
 *          adress"地址
 */

+(void)saveContact:(XEventArgs *)args;


+(void)ftpDownload:(XEventArgs *)args;
+(void)ftpUpload:(XEventArgs *)args;

/*
 *  @brief  openurl
 *  @param  url url地址
 */
+(void)openWebView:(XEventArgs *)args;

+(void)screenshot:(XEventArgs *)args;

+(NSString *)getInternalMemoryInfo;

+(NSString *)getExternalStorageInfo;

+(float)getSysVersion;
/*
 *  @brief	震动服务
 *
 */
+(void)vibrator:(XEventArgs *)args;
/*
 *  @brief 获取通讯录信息
 *
 */
+(NSString *)getContactPerson:(XEventArgs *)args;

/**
 *  当前页面 屏幕方向
 *
 *  @param args nil
 */
+(NSString *)currentOrientation:(XEventArgs *)args;

-(NSString *)randFileName;

@end
