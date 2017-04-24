//
//  Created by 宋永强 on 12-2-6.
//
//


#import <Foundation/Foundation.h>
#import "UMPDataValue.h"

@interface UMPTimeValue : UMPDataValue
{
@protected
    NSDate * _value;
}

@property(nonatomic, readwrite, strong) NSDate *value;

@property(nonatomic, readonly) NSUInteger typeCode;

- (NSString *)toString;

- (UMPTimeValue *)finishInit;

+ (UMPTimeValue *)newInstance;
@end