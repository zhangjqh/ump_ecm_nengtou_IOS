//
//  Created by 宋永强 on 12-2-6.
//
//


#import <Foundation/Foundation.h>
#import "UMPDataValue.h"

@interface UMPShortValue : UMPDataValue
{
@protected
    short _value;
}

@property(nonatomic, readwrite) short value;

@property(nonatomic, readonly) NSUInteger typeCode;

- (NSString *)toString;

- (UMPShortValue *)finishInit;

+ (UMPShortValue *)newInstance;
@end