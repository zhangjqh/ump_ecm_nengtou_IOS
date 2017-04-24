//
//  UMCtx.h
//  AnimationDemo
//
//  Created by dingheng on 13-8-9.
//  Copyright (c) 2013年 dingheng. All rights reserved.
//

#import <Foundation/Foundation.h>


#import "UMService.h"
#import "XEventArgs.h"

#define STATUS   @"status"
#define IDField  @"recid"
#define VERSION  @"versionno"


@interface UMCtx : NSObject

+(void)dataCollect:(XEventArgs *)args;

+(void)dataBind:(XEventArgs *)args;

+(void)setValue:(XEventArgs *)args;

+(NSString *)getValue:(XEventArgs *)args;

+(void)setAppValue:(XEventArgs *)args;
/*
 * @brief 更新ctx
 *
 */
+(void)setUMContext:(XEventArgs *)args;

/*
 * @brief 写APP上下文
 *
 */
+(void)setAppValue:(XEventArgs *)args;

/*
 *  @brief	创建一个导航游标
 *
 *	@param 	 alias      游标的别名
 *           arrayPath      数组的路径
 *
 */
+(void)createCursor:(XEventArgs *)args;

/*
 *  @brief	新增一行数据
 *
 *	@param 	 node      数组的路径
 *
 */
+(void)addRow:(XEventArgs *)args;

/*
 *  @brief	修改一行数据
 *
 *	@param 	 node      数组的路径
 *
 */
+(void)editRow:(XEventArgs *)args;

/*
 *  @brief	删除一行数据
 *
 *	@param 	 node      数组的路径
 *
 */
+(void)deleteRow:(XEventArgs *)args;


/*
 *  @brief	移动游标到第一行
 *
 *	@param 	 cursor     游标的别名
 *
 */
+(void)moveFirst:(XEventArgs *)args;


/*
 *  @brief	移动游标到上一行
 *
 *	@param 	 cursor     游标的别名
 *
 */
+(void)movePrev:(XEventArgs *)args;

/*
 *  @brief	移动游标到下一行
 *
 *	@param 	 cursor     游标的别名
 *
 */
+(void)moveNext:(XEventArgs *)args;


/*
 *  @brief	移动游标到最后一行
 *
 *	@param 	 cursor     游标的别名
 *
 */
+(void)moveLast:(XEventArgs *)args;



@end
