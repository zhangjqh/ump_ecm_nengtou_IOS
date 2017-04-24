//
//  Created by 宋永强 on 11-8-2.
//
//


#import <Foundation/Foundation.h>


@interface UFSfxFloat : NSObject {
    float _value;
}

@property(nonatomic) float value;

+ (float)MAX_VALUE;

+ (float)MIN_VALUE;

+ (UFSfxFloat *)createFromFloat:(float)value;

+ (UFSfxFloat *)createFromString:(NSString *)string;

- (id)initWithFloat:(float)value;

- (id)initWithString:(NSString *)string;

- (double)doubleValue;

- (float)floatValue;

@end