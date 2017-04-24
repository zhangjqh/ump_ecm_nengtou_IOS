//
//  UMEventArgs.h
//  UMContainer
//
//  Created by dingheng on 13-8-15.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UMEntityContext.h"
#import "UMContextCollection.h"
#import "InvokeInfo.h"
#import "UMControlBase.h"
@class InvokeInfo;

@interface UMEventArgs : NSObject<UMEventArgsProtocol,NSCopying>

@property(nonatomic,strong) UMContext * currentCtx;
@property(nonatomic,strong) NSMutableDictionary * info;
@property(nonatomic,strong) UMContextCollection * collection;
@property(nonatomic,strong) id currentObj;
@property(nonatomic,strong) InvokeInfo *  invoke;
/*
 * @brief 初始化方法
 * @param ctx 当前ctx对象
 */
-(id)initWithCtx:(UMContext *)ctx;
/*
 * @brief 初始化方法
 * @param ctx 当前ctx对象
 *        sender 传递的对象
 */
-(id)initWithCtx:(UMContext *)ctx param:(id)sender;
/*
 * @brief 验证参数
 * @param key 需要的key
 */
-(void)check:(NSString *)key;

/*
 * @brief 设置key - value
 * @param value 
 *        key
 */
-(void)setValue:(id)value withKey:(NSString *)key;


/*
 * @brief 通过Key取值
 * @param key 
 */
-(id)getValueForkey:(NSString *)key;



@end
