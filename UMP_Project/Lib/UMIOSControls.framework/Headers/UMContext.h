//
//  UMContext.h
//  AnimationDemo

//  JsonContext 操作类

//  Created by dingheng on 13-5-24.
//  Copyright (c) 2013年 dingheng. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ICursor : NSObject<NSCopying,NSMutableCopying>

@property(nonatomic,retain) NSString * arrayPath;
@property(nonatomic,retain) NSString * syscontext;
@property(nonatomic,assign) NSInteger  group;
@property(nonatomic,assign) BOOL isSection;
@property(nonatomic,assign) NSInteger  CurrentIndex;
@property(nonatomic,assign) NSInteger  CurrentGroup;
@property(nonatomic,retain) NSMutableDictionary * mlist;//序列存储

@end

@interface UMContext : NSObject<NSCopying,NSMutableCopying>{
    
    NSString * currentJson;//当前对象
    NSMutableDictionary * contexts;//本地context管理
}
@property (nonatomic, retain)  NSString * currentJson;
@property (nonatomic, retain)  NSMutableDictionary * contexts;
@property (nonatomic, retain)  NSMutableDictionary * mCursorSet;
@property (nonatomic, retain)  NSMutableDictionary * currentDic;
@property (nonatomic, readonly)  NSMutableDictionary * parameterinfo;
@property (nonatomic, retain)  NSString * keyPath;


/*
 *  初始化 context对象
 */

- (id)initWithJSON:(NSString *)json;


/*
 *  添加参数
 */

-(void)addParameter:(NSString *)value withKey:(NSString *)key;

-(void)addParameterFromDictionary:(NSMutableDictionary *)dic;

-(NSMutableDictionary *)getParameterinfo;

/*
 * 更新
 */
-(void)updateCtx:(NSString *)json;

/*
 * key 一级键值 

 */
-(id)getObject:(NSString *)key;

/*
 * 创建本地对象
 */
-(void)creatChild:(NSString *)json;


/*
 *  添加游标
 *  cursor 游标对象
 *  name   游标别名
 */
-(void)setCursor:(ICursor *)cursor name:(NSString *)name;

/*
 *  获取游标
 *
 *  name   游标别名
 */
-(ICursor *)getCursor:(NSString *)name;

/*
 * 获取json key值
 */
-(NSString *)getJsonValue:(NSString *)path JsonData:(NSString *)value;
- (NSString *)getJsonValue:(NSString *)path forDict:(NSDictionary*)dict;

/*
 *  设置context 对象
 
 *  path 路径
 value = jsonData
 Source 替换数据
 */
-(NSString *)setJsonValue:(NSString *)path JsonData:(NSString *)value Source:(NSString *)source;

- (BOOL)isPureInt:(NSString *)string;
@end
