//
//  Created by 宋永强 on 12-2-6.
//
//


#import <Foundation/Foundation.h>
#import "UMPDataValue.h"

@interface UMPFloatValue : UMPDataValue
{
@protected
    float _value;
}

@property(nonatomic, readwrite) float value;

@property(nonatomic, readonly) NSUInteger typeCode;

- (NSString *)toString;

- (UMPFloatValue *)finishInit;

+ (UMPFloatValue *)newInstance;
@end