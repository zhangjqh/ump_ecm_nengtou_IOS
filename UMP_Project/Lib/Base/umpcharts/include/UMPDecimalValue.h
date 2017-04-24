//
//  Created by 宋永强 on 12-2-6.
//
//


#import <Foundation/Foundation.h>
#import "UMPDataValue.h"

@interface UMPDecimalValue : UMPDataValue
{
@protected
    NSNumber * _value;
}

@property(nonatomic, readwrite, strong) NSNumber *value;

@property(nonatomic, readonly) NSUInteger typeCode;

- (NSString *)toString;

- (UMPDecimalValue *)finishInit;

+ (UMPDecimalValue *)newInstance;
@end