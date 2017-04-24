//
//  UMCommonSevice.h
//  UMContainer
//
//  Created by dingheng on 13-12-7.
//  Copyright (c) 2013年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "UMEventArgs.h"
#import "UMCommon.h"
#import "UMBindView.h"
#import "XEventArgs.h"
@interface UMCommonSevice : NSObject

/*
 *  公共服务入口
 */
+(void)callSeviceWithMethod:(XEventArgs *)args;
+(void)JsService:(XEventArgs *)args method:(NSString *)method;
+(void)JSService:(NSDictionary *)info;

//调用本地服务
+(void)localService:(XEventArgs *)args classname:(NSString *)classname sel:(NSString *)selname;

//web调用
+(NSString *)webService:(XEventArgs *)args classname:(NSString *)classname sel:(NSString *)selname;

//同步调用公共服务
+(NSString *)syncCallCommonServiceWithMethod:(NSString *)method andJson:(NSString *)json;
@end


