//
//  UMBase.h
//  UMIOSControls
//
//  Created by dingh on 14/11/29.
//  Copyright (c) 2014年 zhangnan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XEventArgs.h"
#import "UMCommon.h"
#import "UMEntityContext.h"

/**
 *	@brief	tableviewgetnextpage 请求返回数据
 *
 *	@return data 返回数据
 *
 */
//typedef void (^ TableGetMoreFinishBlock)(NSString * data);

@interface UMBase : NSObject

@property(nonatomic,strong)NSString *dySourcePath;//动态资源路径

+(instancetype)sharedInstance;

/*
 * @brief 当前controller
 */
+(UMBaseViewController *)currentControler;

/*
 * @brief 当前ctx
 */
+(UMEntityContext *)currentCtx;


+(void)umonload;

/*
 * @brief 当前方法执行完，再次检查callback
 */
+(void)callback:(XEventArgs *)args;

+(BOOL)error:(XEventArgs *)args;

/*
 * @brief 当前controller重新绑定，刷新页面数据
 */
+(void)currentDataBind;

/*
 * @brief 公共信息提示
 *
 * @pram  msg
 */
+(void)alert:(NSString *)msg;

/*
 * @brief 当前时间
 *
 * @return date
 */
+(NSString *)currentDateTime;

/*
 * @brief 判断是否是jsaction 是就执行
 */
+(BOOL)callJSAction:(NSString *)name args:(XEventArgs *)args;

@end
