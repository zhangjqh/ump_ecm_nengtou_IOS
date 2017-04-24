
/*!
 @header CWAJSONParserUtils.h
 @abstract JSON工具类
 @author Created by sunset.z 
 @version Copyright (c) 2012 __wa__. All rights reserved.1.00 on 12-3-29

 */
#import <Foundation/Foundation.h>
#import "JSONKit.h"



/*!
 @class
 @abstract JSON工具类：可以将符合json展现格式的数据转换成json格式的NSString,NSData等，
                      也可以将json展现格式的NSString,NSData等转换成NSDictionary,NSArray等
 @discussion 本对象需要手动释放
 */
@interface CWAJSONParserUtils : NSObject



/*!
 @method 
 @abstract NSData的JSON解析 
 @discussion 转成NSArray 或者NSDictionary，取决于NSData格式,NSData必须为UTF8 encoded
 @param aData   
 @result NSArray,NSDictionary,nil,error 返回的是对象的引用，如果要保持对象请自行retain
 */
+(id)parseWithData:(NSData *)aData ;

/*!
 @method 
 @abstract NSString的JSON解析 
 @discussion 取决于NSString格式(先将NSString 转 NSData 含 UTF8 encoded)
 @param NSString   
 @result NSArray, NSDictionary,nil,error 返回的是对象的引用，如果要保持对象请自行retain
 */
+(id)parserWithNSString:(NSString*)aString;

/*!
 @method 
 @abstract NSString的JSON解析 
 @discussion 取决于NSString格式(先将NSString 转 NSData 含 UTF8 encoded)
 @param aString
 @param theError 如果有异常会产生 NSError object,theError会指向该object
 @result NSArray, NSDictionary,nil,error 返回的是对象的引用，如果要保持对象请自行retain
 */
+(id)parserWithNSString:(NSString*)aString  
                   error:(NSError**)theError;

/*!
 @method 
 @abstract 将任何json表现格式的values转换成 json形式的 NSData 
 @discussion
 @param aValues 可以转换成json表现格式的对象
 @result NSData json展现形式的NSData 返回的是对象的引用，如果要保持对象请自行retain
 */
+(NSData*)jsonSyleDataFromValues:(id)aValues;

/*!
 @method 
 @abstract 将任何json表现格式的values转换成 json形式的 NSString 
 @discussion
 @param aValues 可以转换成json表现格式的对象
 @result NSString json展现形式的NSString 返回的是对象的引用，如果要保持对象请自行retain
 */
+(NSString*)jsonStyleStringFromValues:(id)aValues;

/*!
 @method 
 @abstract 将任何json表现格式的values转换成 json形式的 NSString 
 @discussion
 @param aValues 可以转换成json表现格式的对象
 @param theError 如果有异常会产生 NSError object,theError会指向该object
 @result NSData json展现形式的NSString 返回的是对象的引用，如果要保持对象请自行retain
 */
+(NSString*) jsonStyleStringFromValues:(id)aValues 
                              error:(NSError**)theError;

/*!
 @method 
 @abstract 从json结构根一级中 根据key获取对应的值
 @discussion 如果Json结构中有重名的key 则默认取第一个出现的key对应的value
 @param aJson 符合json格式的对象 
 @param aKey 需要取值的key
 @result id key对应的value
 */
+(id) getValueFromJson:(id)aJson 
                ForKey:(NSString*)aKey;
/*!
 @method 
 @abstract 从json结构根一级中 根据key的级次结构获取对应的值
 @discussion 如果Json结构中有重名的key 则默认取第一个出现的key对应的value
 @param aJson 符合json格式的对象 
 @param aKey 结构符合 根级.子集.再下一层级. 依次类推
 @result id key对应的value
 */
+(id) getValueFromJson:(id)aJson 
            ForKeyPath:(NSString*)akeyPath;

@end
