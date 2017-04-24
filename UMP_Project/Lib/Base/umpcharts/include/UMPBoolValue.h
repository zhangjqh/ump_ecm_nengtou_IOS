//
//  Created by 宋永强 on 12-2-6.
//
//


#import <Foundation/Foundation.h>
#import "UMPDataValue.h"

@interface UMPBoolValue : UMPDataValue
{
@protected
    BOOL _value;
}
@property(nonatomic, readwrite) BOOL value;

@property(nonatomic, readonly) NSUInteger typeCode;

- (NSString *)toString;

- (UMPBoolValue *)finishInit;

+ (UMPBoolValue *)newInstance;

@end