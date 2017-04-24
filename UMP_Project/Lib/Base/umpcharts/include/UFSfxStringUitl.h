//
//  Created by 宋永强 on 12-2-6.
//
//


#import <Foundation/Foundation.h>

@interface UFSfxStringUitl : NSObject

+ (NSString *)uniqueString;

+ (NSString *)toStringWithBinary:(NSData *)value;

+ (NSString *)toStringWithBool:(BOOL)b;

+ (NSString *)toStringWithByte:(char)b;

+ (NSString *)toStringWithChar:(char)b;

+ (NSString *)toStringWithDate:(NSDate *)b;

+ (NSString *)toStringWithDateTime:(NSDate *)b;

+ (NSString *)toStringWithDecimal:(NSNumber *)b;

+ (NSString *)toStringWithDouble:(double)b;

+ (NSString *)toStringWithFloat:(float)b;

+ (NSString *)toStringWithInteger:(NSNumber *)b;

+ (NSString *)toStringWithInt:(int)b;

+ (NSString *)toStringWithLong:(long)b;

+ (NSString *)toStringWithShort:(short)b;

+ (NSString *)toStringWithString:(NSString *)b;

+ (NSString *)toStringWithTime:(NSDate *)b;
@end