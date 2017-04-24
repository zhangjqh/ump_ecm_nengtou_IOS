//
//  Created by 宋永强 on 11-6-1.
//
//  To change this template use File | Settings | File Templates.
//


#import <Foundation/Foundation.h>


@interface UFSfxInteger : NSObject <NSCopying> {
    int _value;
}

@property(nonatomic) int value;

+ (int)MAX_VALUE;

+ (int)MIN_VALUE;

+ (UFSfxInteger *)fromInteger:(int)value;

+ (UFSfxInteger *)createFromString:(NSString *)string;

- (id)initWithInteger:(int)value;

- (id)initWithString:(NSString *)string;

- (int)intValue;

@end