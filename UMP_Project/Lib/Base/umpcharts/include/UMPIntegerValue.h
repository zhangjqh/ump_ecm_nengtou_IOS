//
//  Created by 宋永强 on 12-2-6.
//
//


#import <Foundation/Foundation.h>
#import "UMPDataValue.h"

@interface UMPIntegerValue : UMPDataValue
{
@protected
    NSNumber * _value;
}

@property(nonatomic, readwrite, strong) NSNumber *value;

@property(nonatomic, readonly) NSUInteger typeCode;

- (NSString *)toString;

- (UMPIntegerValue *)finishInit;

+ (UMPIntegerValue *)newInstance;
@end