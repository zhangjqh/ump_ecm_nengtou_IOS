//
//  Created by 宋永强 on 12-2-6.
//
//


#import <Foundation/Foundation.h>
#import "UMPDataValue.h"

@interface UMPLongValue : UMPDataValue
{
@protected
    long _value;
}

@property(nonatomic, readwrite) long value;

@property(nonatomic, readonly) NSUInteger typeCode;

- (NSString *)toString;

- (UMPLongValue *)finishInit;

+ (UMPLongValue *)newInstance;
@end