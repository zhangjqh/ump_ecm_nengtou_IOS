//
//  Created by 宋永强 on 12-2-6.
//
//


#import <Foundation/Foundation.h>
#import "UMPDataValue.h"

@interface UMPStringValue : UMPDataValue
{
@protected
    NSString * _value;
}

@property(nonatomic, readwrite, strong) NSString *value;

@property(nonatomic, readonly) NSUInteger typeCode;

- (NSString *)toString;

- (UMPStringValue *)finishInit;

+ (UMPStringValue *)newInstance;
@end