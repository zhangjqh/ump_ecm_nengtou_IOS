//
//  Created by 宋永强 on 12-2-6.
//
//


#import <Foundation/Foundation.h>

@interface UFSfxDateUtil : NSObject

+ (BOOL)equal:(NSDate *)a:(NSDate *)b;
+ (BOOL)notEqual:(NSDate *)a:(NSDate *)b;
+ (NSDate *)now;
+ (NSUInteger)year:(NSDate *)date;
+ (NSUInteger)month:(NSDate *)date;
+ (NSUInteger)day:(NSDate *)date;
+ (NSDate *)getDateWithYMD:(NSUInteger)year:(NSUInteger)month:(NSUInteger)day;
+ (NSString *)toString:(NSDate *)date;
@end