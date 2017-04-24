//
//  Created by 宋永强 on 12-2-6.
//
//


#import <Foundation/Foundation.h>
#import "../UMPEnums.h"

@interface UMPDataType : NSObject
{
@protected
    UMPDateTypeCode _code;
    UMPDataType * _itemType;
    NSString * _name;
    BOOL _nullable;
}
@property(nonatomic, readwrite) UMPDateTypeCode code;
@property(nonatomic, readwrite, strong) UMPDataType *itemType;
@property(nonatomic, readwrite, strong) NSString *name;
@property(nonatomic, readwrite) BOOL nullable;

- (id)finishInit;

+ (UMPDataType *)getByName:(NSString *)name;

@end