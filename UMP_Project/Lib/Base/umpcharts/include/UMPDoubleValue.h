//
//  Created by 宋永强 on 12-2-6.
//
//


#import <Foundation/Foundation.h>
#import "UMPDataValue.h"

@interface UMPDoubleValue : UMPDataValue
{
@protected
    double _value;
}

@property(nonatomic, readwrite) double value;

@property(nonatomic, readonly) NSUInteger typeCode;

- (NSString *)toString;

- (UMPDoubleValue *)finishInit;

+ (UMPDoubleValue *)newInstance;
@end