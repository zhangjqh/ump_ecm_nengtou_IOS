//
//  UMContextCollection.h
//  AnimationDemo
//
//  Created by dingheng on 13-8-8.
//  Copyright (c) 2013年 dingheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UMEntityContext.h"

/*
 * context数组
 */
@interface UMContextCollection : NSObject<NSCopying,NSMutableCopying>{

}
@property(atomic,strong) NSMutableArray * list;//context数组
@property(nonatomic,strong) NSString * currentJson;
@property(atomic,strong) NSMutableDictionary * contexts;
@property (atomic,strong) NSMutableArray * contextlist;
@property(nonatomic,strong) NSString * keyPath;

/*
 * 初始化
 */
-(id)initWithJSON:(NSString *)json;

/*
 * 获取context对象
 */
-(UMEntityContext *)getAtIndex:(int)index;
/*
 * 根据index删除对象
 */
-(void)removeCtxAtIndex:(NSInteger)index;
/*
 * 添加ctx对象
 */
-(void)addCtxFromArray:(NSArray *)ctxList;

-(void)insertFromArray:(NSArray *)ctxList;

-(void)updataFromArray:(NSArray *)ctxList;

/*
 * 替换index对象
 */
-(void)replaceCtxAtIndex:(NSInteger)index withDictionary:(NSDictionary *)dic;

-(int)getCount;

@end
