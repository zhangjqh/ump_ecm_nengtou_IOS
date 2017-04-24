//
//  AppDelegate.h
//
//
//  Created by zhangyuv.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <UMIOSControls/UMIOSControls.h>
#import "WXApi.h"

#define APPID @"180"

@class CustomUI_ecm_flashController;

@interface AppDelegate:UIResponder <UIApplicationDelegate,WXApiDelegate,UIAlertViewDelegate>
@property (nonatomic,strong) UIWindow* window;
@property (nonatomic,strong) UMContainer* currentContainer;
@property (nonatomic,strong) UMPNavigationController* navigationCtl;
@property (nonatomic,strong) NSMutableDictionary* plugDict;
@property (strong) CustomUI_ecm_flashController* ecm_flash;
@property (nonatomic,assign) NSString* flag;
@property (nonatomic,strong) NSDictionary *userInfo;
@property (nonatomic,strong) NSString *pushToken;
- (CustomUI_ecm_flashController*)ecm_flash BV_OBJC_METHOD_FAMILY_NONE;




#pragma mark weixin
/*
 enum WXScene {
 
 WXSceneSession  = 0,        // 聊天界面
 WXSceneTimeline = 1,        // 朋友圈
 WXSceneFavorite = 2,        // 收藏
 };
 */
@property (nonatomic,assign) enum WXScene scene;//微信分享类型

/*
 * 微信 发送消息
 */
- (void) sendTextContent:(NSString*)msg;

/*
 * 微信 发送图片
 */
- (void) sendImageContent:(UIImage *)image;
/*
 * 微信 发送link
 */
- (void) sendLinkContent:(NSString*)url title:(NSString *)title description:(NSString *)des image:(UIImage *)image;
@end
