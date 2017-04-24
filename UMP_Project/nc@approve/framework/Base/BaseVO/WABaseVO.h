/*!
 @header MWABaseVO.h
 @abstract MWABaseVO 通用业务对象
 @author Created by sunset.z 
 @version Copyright (c) 2012 __wa__. All rights reserved. 1.00 12-3-23 Creation 
 */


#import <Foundation/Foundation.h>

#define kCWABaseVODictionary @"VoDictionary"
#define kPrimarykey @"PrimaryKey"
#define KPKValue @"PkValue"
#define GET_IVAR(ivarName)
/*!
 @protocol
 @abstract 通用数据对象protocol
 @discussion 通用数据对象protocol，持有业务数据集，请求条件集，业务主键kv两属性，dao操作设定方法
 */
@protocol MWAVOProtocol <NSObject>
@required

/*!
 @property
 @abstract 业务主键名称
 */
@property (nonatomic,copy) NSString *primaryKey;
 
/*!
 @property
 @abstract 业务主键的值
 */
@property (nonatomic,retain) id pkValue;

/*!
 @property
 @abstract 业务数据kv集合
 */
@property (nonatomic,copy) NSMutableDictionary *voDictionary;

/*!
 @property
 @abstract 指定http request的头条件k-v对儿
 */
@property (nonatomic,copy) NSDictionary *metaDictionary;
@end


/*!
 @class
 @abstract MWABaseVO 通用业务对象
 */
@interface CWABaseVO : NSObject<NSCoding,NSCopying,MWAVOProtocol>

@property (nonatomic,retain) NSString* fileName;

#pragma mark  读值方法 

/*!
 @method
 @abstract 根据key取值
 @discussion 
 @param  key 指定取值的key
 @result id 值对象
 */
- (id)getValueByKey:(NSString*)aKey;

/*!
 @method
 @abstract 业务主键取值
 @discussion 
 @param  key 指定取值的业务主键名称
 @result id 值对象
 */
- (id)getValueOfPrimaryKey:(NSString*)aPrimaryKey;

/*!
 @method
 @abstract 批量key取值
 @discussion 返回值中的元素位置与keys数组位置一对一
 @param NSArray keys 数组
 @param id marker 如果某个key的value没有找到，那么将由markers填充返回值数组中key对应value的位置
 @result NSArray 值对象数据
 */
- (NSArray*)objectsForKeys:(NSArray *)theKeys 
             notFoundMarker:(id)aMarker;



/*!
 @method
 @abstract 获取全部key集合
 @discussion  实际上是voDictionary的key集合
 @param bvo 
 @result NSArray key数组
 */
- (NSArray*)allKeysInBaseVO:(CWABaseVO*)aBaseVO;

/*!
 @method
 @abstract 获取全部value集合
 @discussion  实际上是voDictionary的value集合
 @result NSArray value数组
 */
- (NSArray*)allBVOValues;

/*!
 @method
 @abstract 获取value值相同key集合
 @discussion  
 @param anObject 
 @result NSArray key集合数组
 */
- (NSArray*)allKeysForObject:(id)anObject;  

/*!
 @method
 @abstract 获取CWABaseVO的key-value个数
 @discussion  实际上是voDictionary的KV个数
 @param CWABaseVO
 @result NSInteger返回个数 
 */
- (NSInteger)counts;

/*!
 @method
 @abstract 枚举全部value
 @discussion  实际上是voDictionary的values枚举
 @result NSEnumerator 
 */
- (NSEnumerator*)objectEnumerator;

#pragma mark 比较器 comparison 
/*!
 @method
 @abstract 比较两个CWABaseVO 
 @discussion 
 @param bvo
 @result NSEnumerator 
 */
    //尚未实现
//- (BOOL)isEqual: (CWABaseVO*)bvo;

#pragma mark 初始化  
/* @description 以NSDictionary初始化*/

/*!
 @method
 @abstract 以NSDictionary初始化 CWABaseVO
 @discussion  实际上参数NSDictionary初始化了voDictionary
 @param dictionary 用于初始化的dictionary 
 @result CWABaseVO (owned)
 */
+ (CWABaseVO*)baseVOWithDictionary:(NSDictionary*)aDictionary;

/*!
 @method
 @abstract 以单对key-value 初始化 CWABaseVO
 @discussion  实际上初始化了voDictionary
 @param objects值对象数组
 @param keys key对象数组 
 @result CWABaseVO (owned)
 */
+ (CWABaseVO*)baseVOWithObject:(id)anObject 
                        forKey:(NSString*)aKey;

/*!
 @method
 @abstract 以一组key-value 初始化 CWABaseVO 指定个数count
 @discussion  实际上初始化了voDictionary 指定个数count不能超过key和value数组的长度，如果key或value是nil则会发生NSInvalidArgumentException 异常
 @param objects值对象数组
 @param keys key对象数组
 @param cnt指定的个数
 @result CWABaseVO (owned)
 */
+ (CWABaseVO*)baseVOWithObjects:(const id [])objects 
                        forKeys:(const id [])keys 
                          count:(NSUInteger)cnt;

/*!
 @method
 @abstract 以一组key-value 初始化 CWABaseVO
 @discussion  实际上初始化了voDictionary
 @param objects值对象数组
 @param keys key对象数组 
 @result CWABaseVO (owned)
 */
+ (CWABaseVO*)baseVOWithObjects:(NSArray*)objects 
                        forKeys:(NSArray*)keys;

/*!
 @method
 @abstract 初始化CWABaseVO
 @discussion  实际上初始化了voDictionary 
 @param dictionary K-Vs
 @result CWABaseVO (not owned)
 */
- (CWABaseVO*)initWithDictionary:(NSDictionary*)aDictionary;

/*!
 @method
 @abstract 以一组key-value 初始化 CWABaseVO 指定个数count
 @discussion  实际上初始化了voDictionary 指定个数count不能超过key和value数组的长度，如果key或value是nil则会发生NSInvalidArgumentException 异常
 @param objects值对象数组
 @param keys key对象数组
 @param cnt指定的个数
 @result CWABaseVO (not owned)
 */
- (CWABaseVO*)initWithObjects:(const id [])objects 
                      forKeys:(const id [])keys 
                        count:(NSUInteger)cnt;

/*!
 @method
 @abstract 以一组key-value 初始化 CWABaseVO
 @discussion  实际上初始化了voDictionary
 @param objects 值对象数组
 @param keys key对象数组
 @result CWABaseVO (not owned)
 */
- (CWABaseVO*)initWithObjects:(NSArray*)objects 
              forKeys:(NSArray*)keys;

/*!
 @method
 @abstract 初始化CWABaseVO中的voDictionary的容量
 @discussion  如果keyArray中的某个key在 voDictionary中不存在则什么都不做
 @param numItmes 指定的个数 
 @result  CWABaseVO (not owned)
 */
- (CWABaseVO*)initWithCapacity:(NSUInteger)numItems;
//- (BaseVO*)baseVOInitWithObjectsAndKeys:(id)firstObject, ... NS_REQUIRES_NIL_TERMINATION;
//+ (BaseVO*)initWithObjectsAndKeys:(id)firstObject, ... NS_REQUIRES_NIL_TERMINATION;                                                                                                                                                                       
//- (id)baseVOInitWithDictionary:(NSDictionary *)otherDictionary copyItems:(BOOL)flag;



#pragma mark 变更方法 modify methods

/*!
 @method
 @abstract 移出一个key和它对应的value
 @discussion  如果key不存在就什么都不做
 @param aKey 要移除K-V的key key必须confirm to copying protocol
 @result  
 */
- (void)removeObjectForKey:(id)aKey;

/*!
 @method
 @abstract 增加一组key - value
 @discussion  实际上是增加到CWABaseVO 的 voDitionary中
 @param aKey 增加的key key必须confirm to copying protocol
 @param anObject 增加的key对应的value
 @result  
 */
- (void)setObject:(id)anObject forKey:(id)aKey;

/*!
 @method
 @abstract CWABaseVO中增加一组key - value
 @discussion  将所有otherDictionary中的K-V增加到voDitionary中，所有的key必须confirm to         copying protocol
 @param otherDictionary 用于添加K-V的dictionary
 @result  
 */
- (void)addEntriesFromDictionary:(NSDictionary *)otherDictionary;

/*!
 @method
 @abstract 清空CWABaseVO中的voDictionary
 @discussion  voDictionary中的每一对K-V都分别通知release
 @result  
 */
- (void)removeAllObjects;

/*!
 @method
 @abstract 依照给定数组中的keys 清空CWABaseVO中其对应的K-V 
 @discussion  如果keyArray中的某个key在 voDictionary中不存在则什么都不做
 @param keyArray给定的一组keys 
 @result  
 */
- (void)removeObjectsForKeys:(NSArray *)keyArray;

#pragma mark 依照属性装载basevo
/*!
 @method
 @abstract 依照给名称的plist文件，装载voDictionary 
 @discussion  plist包含全部子vo中需要装载的属性名称，plist必须为数组格式
 @param aPlistName vo属性plist
 @result  id 返回vo对象本身 已装载好voDictionary
 */
-(id)loadDictionaryByPlistName:(NSString*)aPlistName;
/*!
 @method
 @abstract 填充请求vo的voDictionary
 @discussion  
 @result  
 */
-(void)fillVoDictionary;

#pragma mark 数据转换 异常处理 克隆方法 
/*!
 @method
 @abstract 将CWABaseVO中的voDictionary转换成json表现形式的NSString 
 @discussion
 @result  NSString 
 */
-(NSString*) parseVOToJSONString;

/*!
 @method
 @abstract 将CWABaseVO中的voDictionary转换成json表现形式的NSData
 @discussion
 @result  NSData 
 */
-(NSData*) parseVOToJSONData;


/* xml parser 尚未实现
-(NSString*) parseVOToXML;
 */

/* 克隆方法 尚未实现
- (id) clone;
 */
/* 异常处理 尚未实现
- (void) handleException;
*/
/* vo转NSData
- (NSData*) voToNSData: (id<PBaseVO> *)voObject;
*/

#pragma mark protocol method 

- (id)copyWithZone:(NSZone *)zone;
/* 尚未实现
- (id)initWithCoder:(NSCoder *)aDecoder;
*/

- (void)encodeWithCoder:(NSCoder *)aCoder;



/* nsmutabledictionary methods
 + (id)dictionaryWithCapacity:(NSUInteger)numItems;
 */
/*
 - (BOOL)writeToFile:(NSString *)path atomically:(BOOL)useAuxiliaryFile;
 - (BOOL)writeToURL:(NSURL *)url atomically:(BOOL)atomically; 
 */

#pragma mark description

//-(NSString*)description;
@end


