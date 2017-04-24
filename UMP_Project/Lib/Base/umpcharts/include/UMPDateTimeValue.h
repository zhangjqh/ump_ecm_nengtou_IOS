//
//  Created by 宋永强 on 12-2-6.
//
//


#import <Foundation/Foundation.h>
#import "UMPDataValue.h"

@interface UMPDateTimeValue : UMPDataValue
{
@protected
    NSDate * _value;
}

@property(nonatomic, readwrite, strong) NSDate *value;

@property(nonatomic, readonly) NSUInteger typeCode;

- (NSString *)toString;

- (UMPDateTimeValue *)finishInit;

+ (UMPDateTimeValue *)newInstance;
@end