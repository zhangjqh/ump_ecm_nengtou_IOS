//
//  UMJS.h
//  UMIOSControls
//
//  Created by dingheng on 14-10-13.
//  Copyright (c) 2014年 zhangnan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XEventArgs.h"
#import "UMWebView.h"
@interface UMJS : NSObject


+(void)runjs:(XEventArgs *)args;

+(void)animation:(XEventArgs *)args;

+(void)refresh:(XEventArgs *)args;

/**
 *  获取当前时间
 *
 *  @param args nil
 */
+(NSString *)getTimeTicks:(XEventArgs *)args;


+(void)createControl:(XEventArgs *)args;

+(void)removeControl:(XEventArgs *)args;

+(void)removeAllControl:(XEventArgs *)args;

/**
 *  URL编码
 *
 *  @param args nil
 */     
+(NSString *)urlEncode:(XEventArgs *)args;

/**
 *  URL解码
 *
 *  @param args nil
 */
+(NSString *)urlDecode:(XEventArgs *)args;

/**
 *  当前页面id
 *
 *  @param args nil
 */
+(NSString *)currentController:(XEventArgs *)args;



/**
 *  提示框
 *
 *  @param args nil
 */
+(void)toast:(XEventArgs *)args;



+(NSString *)getListProperty:(XEventArgs *)args;

+(void)setListProperty:(XEventArgs *)args;

+(NSString *)randomUUID;

/**
 *  设置请求是否显示loading
 *
 *  @param args isshow true false
 */
+(void)setIsShowLoadingForHttpService:(XEventArgs *)args;

@end
