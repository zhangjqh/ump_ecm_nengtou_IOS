/*!
 @header MWABaseVO.h
 @abstract MWABaseVO 通用业务对象
 @author Created by sunset.z 
 @version Copyright (c) 2012 __wa__. All rights reserved. 1.00 12-3-23 Creation 
 */


#import "WABaseVO.h"
#import "WAJSONParserUtils.h"
#include <objc/message.h>

@implementation CWABaseVO

@synthesize primaryKey;
@synthesize voDictionary;
@synthesize metaDictionary;
@synthesize pkValue;
@synthesize fileName;


#pragma mark 初始化方法initialize metods 

/*!
 @method
 @abstract 以NSDictionary初始化 CWABaseVO
 @discussion  实际上参数NSDictionary初始化了voDictionary
 @param dictionary 用于初始化的dictionary 
 @result CWABaseVO (owned)
 */
+ (CWABaseVO*)baseVOWithDictionary: (NSDictionary*)aDictionary
{
  return [[self alloc]initWithDictionary:aDictionary];
}

/*!
 @method
 @abstract 以单对key-value 初始化 CWABaseVO
 @discussion  实际上初始化了voDictionary
 @param objects值对象数组
 @param keys key对象数组 
 @result CWABaseVO (owned)
 */
+ (CWABaseVO*)baseVOWithObject:(id)anObject forKey:(NSString*)aKey
{
  
  NSDictionary *dict= [NSDictionary dictionaryWithObject:anObject forKey:aKey];
  return [[self alloc]initWithDictionary:dict];
}

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
                          count:(NSUInteger)cnt
{
  
  NSDictionary *dict = [NSDictionary dictionaryWithObjects:objects forKeys:keys count:cnt];
  return [[self alloc] initWithDictionary:dict];
}

/*!
 @method
 @abstract 以一组key-value 初始化 CWABaseVO
 @discussion  实际上初始化了voDictionary
 @param objects值对象数组
 @param keys key对象数组 
 @result CWABaseVO (owned)
 */
+ (CWABaseVO*)baseVOWithObjects:(NSArray *)objects 
                        forKeys:(NSArray *)keys
{
  
  NSDictionary *dict = [NSDictionary dictionaryWithObjects:objects forKeys:keys];
  return [[self alloc] initWithDictionary:dict];
}

/*!
 @method
 @abstract 初始化CWABaseVO
 @discussion  实际上初始化了voDictionary 
 @param dictionary K-Vs
 @result CWABaseVO (not owned)
 */
-(CWABaseVO*)initWithDictionary :(NSDictionary*)aDictionary
{
  
  if( self = [super init] )
  {
    NSMutableDictionary *mdic = [aDictionary mutableCopy];
    [self setVoDictionary:mdic];
  }
    
  
  return self;    
}

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
                        count:(NSUInteger)cnt
{
  
    
  NSMutableDictionary * dict = [[NSMutableDictionary alloc] initWithObjects:objects forKeys:keys count:cnt];
  CWABaseVO *basevo= [self initWithDictionary:dict];

    
  
  return basevo;
}

/*!
 @method
 @abstract 以一组key-value 初始化 CWABaseVO
 @discussion  实际上初始化了voDictionary
 @param objects 值对象数组
 @param keys key对象数组
 @result CWABaseVO (not owned)
 */
- (CWABaseVO*)initWithObjects:(NSArray *)objects 
                      forKeys:(NSArray *)keys
{
  
  NSMutableDictionary *dict = [[NSMutableDictionary alloc] initWithObjects:objects forKeys:keys];
  CWABaseVO *basevo = [self initWithDictionary :dict];

  
  
  return basevo;
}

/*!
 @method
 @abstract 初始化CWABaseVO中的voDictionary的容量
 @discussion  如果keyArray中的某个key在 voDictionary中不存在则什么都不做
 @param numItmes 指定的个数 
 @result  CWABaseVO (not owned)
 */
- (CWABaseVO*)initWithCapacity:(NSUInteger)numItems
{
  
    
  NSMutableDictionary *mdic = [[NSMutableDictionary alloc] initWithCapacity:numItems];
  CWABaseVO *basevo=[self initWithDictionary:mdic];

  
  
  return basevo;
}

#pragma mark 依照属性装载basevo
/*!
 @method
 @abstract 依照给名称的plist文件，装载voDictionary 
 @discussion  plist包含全部子vo中需要装载的属性名称，plist必须为数组格式
 @param aPlistName vo属性plist
 @result  id 返回vo对象本身 已装载好voDictionary
 */
-(id)loadDictionaryByPlistName:(NSString *)aPlistName
{   
  NSMutableDictionary *mDict = [[NSMutableDictionary alloc]init];
  NSString *path = [[NSBundle mainBundle] pathForResource:aPlistName ofType:@"plist"];
  NSMutableArray *array1 = [[NSMutableArray alloc] initWithContentsOfFile:path];

  [array1 enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
    SEL sel=nil;
    if( [obj isKindOfClass:([NSString class])] && [obj length]>0 )
    {
      sel = NSSelectorFromString(obj);
      id value =[self performSelector:sel];
      [mDict setValue:value forKey:obj];
    }
  }];
     

  [self setVoDictionary:mDict];

    
  
  return self;
}

-(void)fillVoDictionary
{
}
/*
 + (BaseVO*)initWithObjectsAndKeys:(id)firstObject, ... NS_REQUIRES_NIL_TERMINATION{
 
 //
 
 }
 - (BaseVO*)baseVOInitWithObjectsAndKeys:(id)firstObject, ... NS_REQUIRES_NIL_TERMINATION{
 }
                                                                                                                                                                
 - (id)baseVOInitWithDictionary:(NSDictionary *)otherDictionary copyItems:(BOOL)flag{
 }
 */

#pragma mark 比较comparison 
// BaseVO 比较
/*
- (BOOL)isEqual: (CWABaseVO*)bvo{

    if([self.voDictionary isEqualToDictionary:bvo.voDictionary] && [self.metaDictionary isEqualToDictionary:bvo.metaDictionary]&& [self.primaryKey isEqualToString:bvo.primaryKey]&& [self.pkValue isEqualToString:bvo.pkValue]){
        return YES;
    }else {
        return NO;
    }

}
 */

#pragma mark 取值方法

/*!
 @method
 @abstract 根据key取值
 @discussion 
 @param  key 指定取值的key
 @result id 值对象
 */
- (id)getValueByKey: (NSString*)aKey
{
  
  if( ! self.voDictionary )
  {
    return [self.voDictionary valueForKey:aKey];
  }
  
  return nil;
}

/*!
 @method
 @abstract 业务主键取值
 @discussion 
 @param  key 指定取值的业务主键名称
 @result id 值对象
 */
- (id)getValueOfPrimaryKey: (NSString*)aKey
{
  return [self pkValue];
}

/*!
 @method
 @abstract 批量key取值
 @discussion 返回值中的元素位置与keys数组位置一对一
 @param NSArray keys 数组
 @param id marker 如果某个key的value没有找到，那么将由markers填充返回值数组中key对应value的位置
 @result NSArray 值对象数据
 */
- (NSArray*)objectsForKeys:(NSArray *)keys notFoundMarker:(id)aMarker
{
  if(!self.voDictionary)
  {
    return [self.voDictionary objectsForKeys:keys notFoundMarker:aMarker];
  }
  return nil;
}

/*!
 @method
 @abstract 获取全部key集合
 @discussion  实际上是voDictionary的key集合
 @param bvo 
 @result NSArray key数组
 */
- (NSArray*)allKeysInBaseVO:(CWABaseVO*)aBaseVO
{
  if( ! aBaseVO.voDictionary )
  {
    return [aBaseVO.voDictionary allKeys];
  }
  return nil;
}

/*!
 @method
 @abstract 获取全部value集合
 @discussion  实际上是voDictionary的value集合
 @result NSArray value数组
 */
- (NSArray*)allBVOValues
{
  
  if( ! self.voDictionary )
  {
    return [self.voDictionary allValues];
  }
  
  return nil;
}

/*!
 @method
 @abstract 获取value值相同key集合
 @discussion  
 @param anObject 
 @result NSArray key集合数组
 */
- (NSArray*)allKeysForObject:(id)anObject
{
  if( ! self.voDictionary )
  {
    return [self.voDictionary allKeysForObject:anObject];
  }
  return nil;
}

/*!
 @method
 @abstract 获取CWABaseVO的key-value个数
 @discussion  实际上是voDictionary的KV个数
 @param CWABaseVO
 @result NSInteger返回个数 
 */
- (NSInteger)counts
{
  if( ! self.voDictionary )
  {
    return [self.voDictionary count];
  }
  return 0;
}

/*!
 @method
 @abstract 枚举全部value
 @discussion  实际上是voDictionary的values枚举
 @result NSEnumerator 
 */
- (NSEnumerator*)objectEnumerator
{
  if( ! self.voDictionary ) 
  {
    return [ self.voDictionary objectEnumerator];
  }
  return nil;
}

#pragma mark 变更方法modify methods 
/*!
 @method
 @abstract 移出一个key和它对应的value
 @discussion  如果key不存在就什么都不做
 @param aKey 要移除K-V的key key必须confirm to copying protocol
 @result  
 */
- (void)removeObjectForKey:(id)aKey
{
  if( ! self.voDictionary )
  {
    NSMutableDictionary * mdic = [self.voDictionary mutableCopy];
    [mdic removeObjectForKey:aKey];
    [self setVoDictionary:mdic];

  }
}

/*!
 @method
 @abstract 增加一组key - value
 @discussion  实际上是增加到CWABaseVO 的 voDitionary中
 @param aKey 增加的key key必须confirm to copying protocol
 @param anObject 增加的key对应的value
 @result  
 */
- (void)setObject:(id)anObject forKey:(id)aKey
{
  NSMutableDictionary *mdic;
  if( ! self.voDictionary )
  {
    mdic = [[NSMutableDictionary alloc] init];
  }
  else
  {
    mdic = [self.voDictionary mutableCopy];
  }
  if( mdic )
  {
    [mdic setValue:anObject forKey:aKey];
    [self setVoDictionary:mdic];

  }
}
    
/*!
 @method
 @abstract CWABaseVO中增加一组key - value
 @discussion  将所有otherDictionary中的K-V增加到voDitionary中，所有的key必须confirm to         copying protocol
 @param otherDictionary 用于添加K-V的dictionary
 @result  
 */
- (void)addEntriesFromDictionary:(NSDictionary *)otherDictionary
{
  NSMutableDictionary *mdic;
  if( ! self.voDictionary )
  {
    mdic = [[NSMutableDictionary alloc] init];
  }
  else
  {
    mdic = [self.voDictionary mutableCopy];
  }
  if( mdic )
  {
    [mdic addEntriesFromDictionary:otherDictionary];
    [self setVoDictionary:mdic];

  }
}

/*!
 @method
 @abstract 清空CWABaseVO中的voDictionary
 @discussion  voDictionary中的每一对K-V都分别通知release
 @result  
 */
- (void)removeAllObjects
{
  NSMutableDictionary *mdic;
  if( ! self.voDictionary )
  {
    mdic = [[NSMutableDictionary alloc] init];
  }
  else
  {
    mdic = [self.voDictionary mutableCopy];
  }
  if( mdic )
  {
    [mdic removeAllObjects];
    [self setVoDictionary:mdic];

  }
}

/*!
 @method
 @abstract 依照给定数组中的keys 清空CWABaseVO中其对应的K-V 
 @discussion  如果keyArray中的某个key在 voDictionary中不存在则什么都不做
 @param keyArray给定的一组keys 
 @result  
 */
- (void)removeObjectsForKeys:(NSArray*)keyArray
{
  NSMutableDictionary *mdic;
  if( ! self.voDictionary )
  {
    mdic = [[NSMutableDictionary alloc] init];
  }
  else
  {
    mdic = [self.voDictionary mutableCopy];
  }
  if( mdic )
  {    
    [mdic removeObjectForKey:keyArray];
    [self setVoDictionary: mdic];

  }
}
    
#pragma mark 数据转换 异常处理 克隆方法 
/*
 - (NSData*) voConversToNSData : (NSDictionary*) dic{
 
 if(!self.voDictionary){
 
 }
 return nil;
 
 }
 */

/*!
 @method
 @abstract 将CWABaseVO中的voDictionary转换成json表现形式的NSString 
 @discussion
 @result  NSString 
 */
-(NSString*) parseVOToJSONString
{
  NSDictionary *dataDictionary = [self voDictionary];
  NSString* str= [CWAJSONParserUtils jsonStyleStringFromValues:dataDictionary];
  return str;
}

/*!
 @method
 @abstract 将CWABaseVO中的voDictionary转换成json表现形式的NSData
 @discussion
 @result  NSData 
 */
-(NSData*) parseVOToJSONData
{
  NSDictionary * dataDictionary = [self voDictionary];
  NSData * data  = [CWAJSONParserUtils jsonSyleDataFromValues:dataDictionary];
  return data;
}

/*
 -(NSString*) parseVOToXML{
 // xml utils parser
 
 return nil;
 }
 - (id) clone{
 
 }
 - (void) handleException{
 
 }
 */


#pragma mark private methods 
/*
 私有方法 尚未实现 从本地文件初始化BaseVO
 + (id
 ontentsOfFile:(NSString *)path;
 + (id)dictionaryWithContentsOfURL:(NSURL *)url;
 - (id)initWithContentsOfFile:(NSString *)path;
 - (id)initWithContentsOfURL:(NSURL *)url;
 */

/* Returns a string object that represents the contents of the dictionary, formatted as a property list.
- (NSString *)description
 - (NSString *)descriptionInStringsFileFormat;
 - (NSString *)descriptionWithLocale:(id)locale;
 - (NSString *)descriptionWithLocale:(id)locale indent:(NSUInteger)level;
 */
# pragma mark  协议方法 protocol method 

- (id)copyWithZone:(NSZone *)zone
{
  return nil;
}

-(void)encodeWithCoder:(NSCoder *)aCoder
{
  if(self.voDictionary)
  {
    [aCoder encodeObject:self.voDictionary forKey:kCWABaseVODictionary];
    [aCoder encodeObject:self.pkValue forKey:KPKValue];
    [aCoder encodeObject:self.primaryKey forKey:kPrimarykey];
  }
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
  [self setVoDictionary:[aDecoder decodeObjectForKey:kCWABaseVODictionary]];
  [self setPkValue:[aDecoder decodeObjectForKey:KPKValue]];
  [self setPrimaryKey:[aDecoder decodeObjectForKey:kPrimarykey]];
  return self;
}

@end
