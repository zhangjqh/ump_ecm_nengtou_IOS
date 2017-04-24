//
//  Created by 宋永强 on 12-2-6.
//
//


#import <Foundation/Foundation.h>
#import "UMPDataValue.h"

@interface UMPBinaryValue : UMPDataValue
{
@protected
    NSData * _value;
}
@property(nonatomic, readwrite, strong) NSData *value;
@property(nonatomic, readonly) NSUInteger typeCode;

- (NSString *)toString;

- (UMPBinaryValue *)finishInit;

+ (UMPBinaryValue *)newInstance;

@end
