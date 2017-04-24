//
//  Created by 宋永强 on 12-2-28.
//
//


#import <Foundation/Foundation.h>
#import "UMPAbstractAttribute.h"
#import "UMPEnums.h"

@class UMPFieldAttribute;

@interface UMPCollectionAttribute : UMPAbstractAttribute {
@private
    Class _itemType;
    BOOL _isManyToMany;
    UMPFieldAttribute * _toAttribute;
    NSString * _joinTable;
    NSString * _joinFromColumn;
    NSString * _joinToColumn;
    UMPCascadeType _cascadeType;
}

@property(nonatomic, readwrite, assign) Class itemType;
@property(nonatomic, readwrite, copy) NSString *joinTable;
@property(nonatomic, readwrite, copy) NSString *joinFromColumn;
@property(nonatomic, readwrite, copy) NSString *joinToColumn;
@property(nonatomic, readwrite, assign) BOOL isManyToMany;
@property(nonatomic, readwrite, strong) UMPFieldAttribute *toAttribute;
@property(nonatomic, readwrite) UMPCascadeType cascadeType;

@end