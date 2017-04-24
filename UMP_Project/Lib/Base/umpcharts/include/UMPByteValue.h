//
//  Created by 宋永强 on 12-2-6.
//
//


#import <Foundation/Foundation.h>
#import "UMPDataValue.h"

@interface UMPByteValue : UMPDataValue
{
@protected
    signed char _value;
}
@property(nonatomic, readwrite) signed char value;

@property(nonatomic, readonly) NSUInteger typeCode;

- (NSString *)toString;

- (UMPByteValue *)finishInit;

+ (UMPByteValue *)newInstance;

@end