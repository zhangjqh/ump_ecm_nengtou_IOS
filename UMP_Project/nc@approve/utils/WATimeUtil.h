/*!
 @header CWATimeUtil.h
 @abstract 时间基础类 主要是获取时间，日期，处理时间戳，格林等常用的网络时间
 @author Berry yu 
 @version 0.5 2012/03/28 Creation 
 @Copyright 2012 Ufida. All rights reserved.
 */

#import <Foundation/Foundation.h>


@interface CWATimeUtil : NSObject {
 
  
}

/*!
 @method
 @abstract 获取在线时间
 @discussion 
 @result  返回结果不需要释放 
 */
+ (NSString *)dateline;

/*!
 @method
 @abstract 格林时间转换为标准时间
 @discussion 
 @result  返回结果不需要释放 
 */
+ (NSString *)datelineToString:(NSString *)aDateline;


+ (NSString *)datelineToString:(NSString *)aDateline Format:(NSString *)aFormat;

/*!
 @method
 @abstract    获取当前系统时间对应的GMT时间与GMT0时区只见的秒数差
 @discussion  
 @result     返回结果为NSInteger
 */
+ (NSInteger)getCurSystemGMTTimeInterval;

/*!
 @method
 @abstract    获取传入的NSDate对应的GMT时间中的时间串，格式为传入的aformatStr
 @discussion
 @param       参数aDate，需要转化的时间
 @param       参数aFormatStr，需要的时间格式
 @result      返回结果为NSString。
 */
+ (NSString *)getGMTTimeDate:(NSDate *)aDate
                  withFormat:(NSString *)aFormatStr;

/*!
 @method
 @abstract    获取当前系统时间对应的GMT时间与GMT0时区之间的时间差，格式为HH:mm
 @discussion  
 @result      返回结果为NSString
 */
+ (NSString *)getCurSystemGMTTimeOffSet;

/*!
 @method
 @abstract 获取系统当前日期
 @discussion 时间格式 yyyy-MM-dd
 @result  返回结果不需要释放 
 */
+ (NSString *)getTodayDateString;


/*!
 	@method
 	@abstract	获取系统当前日期
 	@discussion	时间格式 yyyy年MM月dd日
 	@result	返回结果不需要释放
 */
+ (NSString *)getChTodayDateString;

/*!
 @method
 @abstract 获取系统当前日期
 @discussion 时间格式 yyyyMMdd
 @result  返回结果不需要释放
 */
+ (NSString *)getTodayDateStringNoline;


/*!
 	@method
 	@abstract 获取星期
 	@discussion
 	@result	
 */
+ (NSString *)getTodayWeekday;

/*!
 @method
 @abstract    利用时间戳来计算某个时间点具现在的时间差 
 @discussion  准确计算某个时间点距现在的时间差的代码 如"几分钟之前"  
 @param       参数atheDate  起始时间的时间戳。
 @result      返回结果不需要释放 
 */

+ (NSString *)intervalSinceNow: (NSString *) aTheDate; 

/*!
 @method
 @abstract    利用时间戳获取日期间隔 
 @discussion  如2010-3-3 11:00 至2010-3-4 12:00  结果1天1小时
 @param       参数aTimeStart  起始时间的时间戳。
 @param       参数aTimeEnd    终止时间的时间戳。
 @result      返回结果不需要释放 
 */

+ (NSString *)TimeintervalToString:(NSString *)aTimeStart TimeEnd:(NSString *)aTimeEnd;



@end
