/*
    CWALauncherBnsHandler.h
 	@abstract	九宫格数据处理类
 	@discussion
 	@author	huych
 	@copyright	ufida
 	@version	1.0 2014-05-29 10:48:23 Creation
 */
#import <Foundation/Foundation.h>
@interface CWALauncherBnsHandler : NSObject


/*!
 	@method
 	@abstract	使用key,保存数据到文件
 	@discussion
 	@param 	object 	需要保存的数据
 	@param 	key 	需要是用的key
 	@result
 */
+ (void)saveToUserDefaults:(id)object key:(NSString *)key;

/*!
 	@method
 	@abstract	通过key查询保存的数据
 	@discussion
 	@param 	key 	需要查询的key
 	@result
 */
+ (id)retrieveFromUserDefaults:(NSString *)key;


@end
