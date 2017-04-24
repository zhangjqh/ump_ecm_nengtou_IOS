//
//  Created by 宋永强 on 12-2-14.
//
//


#import <Foundation/Foundation.h>


@interface UMPDataReader : NSObject {

}

@property(nonatomic, readonly) int fieldCount;

- (BOOL)next;
- (void)close;
- (id)objectForName:(NSString *)fieldName;
- (id)objectForIndex:(int)index;
- (NSData *)dataForName:(NSString *)fieldName;
- (NSData *)dataForIndex:(int)index;
- (int)intForName:(NSString *)fieldName;
- (int)intForIndex:(int)index;
- (long)longForName:(NSString *)fieldName;
- (long)longForIndex:(int)index;
- (double)doubleForName:(NSString *)fieldName;
- (double)doubleForIndex:(int)index;
- (BOOL)boolForName:(NSString *)fieldName;
- (BOOL)boolForIndex:(int)index;
- (NSString *)stringForName:(NSString *)fieldName;
- (NSString *)stringForIndex:(int)index;
- (NSDate *)dateForName:(NSString *)fieldName;
- (NSDate *)dateForIndex:(int)index;
- (BOOL)isNullForName:(NSString *)fieldName;
- (BOOL)isNullForIndex:(int)index;
@end