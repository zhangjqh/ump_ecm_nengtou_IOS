//
//  Created by 宋永强 on 12-2-6.
//
//


#import <Foundation/Foundation.h>
#import "UMPDataValue.h"

@interface UMPCharValue : UMPDataValue
{
@protected
    char _value;
}
@property(nonatomic, readwrite) char value;

@property(nonatomic, readonly) NSUInteger typeCode;

- (NSString *)toString;

- (UMPCharValue *)finishInit;

+ (UMPCharValue *)newInstance;

@end