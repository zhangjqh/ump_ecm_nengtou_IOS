//
//  Created by 宋永强 on 12-2-6.
//
//


#import <Foundation/Foundation.h>
#import "UMPDataValue.h"

@interface UMPIntValue : UMPDataValue
{
@protected
    int _value;
}

@property(nonatomic, readwrite) int value;

@property(nonatomic, readonly) NSUInteger typeCode;

- (NSString *)toString;

- (UMPIntValue *)finishInit;

+ (UMPIntValue *)newInstance;
@end