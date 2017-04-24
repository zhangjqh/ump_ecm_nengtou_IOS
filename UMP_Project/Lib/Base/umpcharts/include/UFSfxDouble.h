//
//  Created by 宋永强 on 11-5-31.
//
//  To change this template use File | Settings | File Templates.
//


#import <Foundation/Foundation.h>


@interface UFSfxDouble : NSObject {
    double _value;
}

@property(nonatomic) double value;

+ (double)MAX_VALUE;

+ (double)MIN_VALUE;

+ (UFSfxDouble *)createFromDouble:(double)value;

+ (UFSfxDouble *)createFromString:(NSString *)string;

+ (BOOL)isPositiveInfinity:(double)value;

- (id)initWithDouble:(double)value;

- (id)initWithString:(NSString *)string;

- (double)doubleValue;

- (float)floatValue;

@end