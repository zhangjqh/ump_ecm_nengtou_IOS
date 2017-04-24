//
//  UMViewService.h
//  UMContainer
//
//  Created by dingheng on 13-10-31.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "UMEventArgs.h"
#import "UMIOSCommon.h"
#import "UMBaseViewController.h"
#import "UMLayoutView.h"
#import "UmpStartController.h"
@class UMContainer;


@interface UMViewService : NSObject<UIAlertViewDelegate>

+ (UMViewService *)sharedInstance;

+(void)gotoPortal:(XEventArgs *)args;

/*
 * portal跳转
 */
+(void)openPortal:(XEventArgs *)args;
/*
 * 在Web开发中，在HTML的JS中也能通过调用原生的方式打开一个新页面
 
 参数： viewid
 
 */
+(void)changePage:(XEventArgs *)args;

+(void)openPicker:(XEventArgs *)args;

/*
 * 打开弹窗
 
 参数： viewid
 
 */
+(void)openPop:(XEventArgs * )args;
+(void)closePop:(XEventArgs *)args;

/*
 * 打开提示框
 
 参数：titile 
 message 
 okaction
 cancelaction
 okbuttontitle
 cancelbuttontitle
 
 */
+(void)openDialog:(XEventArgs *)args;

/*
 * 打开页面
 
 参数： viewid
 animation-type
 animation-direction
 animation-time
 
 */
+(void)open:(XEventArgs *)args;
/*
 * 关闭页面
 
 参数
 animation-type
 animation-direction
 animation-time
 
 */
+(void)close:(XEventArgs *)args;

/*
 * 打开欢迎页面
 
 */
+(void)openWelcom:(XEventArgs *)args;

/*
 *  打开参照 服务
 
 参数:  referenceid
 mapping
 
 */
+(void)openReference:(XEventArgs *)args;



/*
 * 打开下拉菜单
 */
+(void)openDropDownList:(XEventArgs *)args;
-(void)dropdownlistClick:(id)sender;
/*
 * 通过路径 取值
 */
+(NSString *)check:(NSString *)path json:(NSString *)value;


#pragma mark
#pragma mark -- json操作

/*
 * 适配json字符串
 */
+(NSString *)writeJson:(NSString *)json;

+(void)exitApplication;

@end