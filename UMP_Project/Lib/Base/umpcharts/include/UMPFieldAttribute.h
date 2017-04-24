//
//  Created by 宋永强 on 12-2-9.
//
//


#import <Foundation/Foundation.h>
#import "UMPAbstractAttribute.h"

@class UMPDataType;
@protocol UMPMetaDataIVisitable;

@interface UMPFieldAttribute : UMPAbstractAttribute<UMPMetaDataIVisitable> {
@protected
    NSString * _column;
    UMPDataType * _dataType;
    int _length;
    int _precision;
    int _scale;
    NSString * _defaultValue;
    BOOL _isNullable;
    BOOL _isUnique;
    BOOL _isLazy;
    BOOL _isReplay;
    BOOL _isStatic;
    BOOL _isSystem;
    BOOL _isPersistent;
}

@property(nonatomic, readwrite, strong) NSString *column;
@property(nonatomic, readwrite, strong) UMPDataType *dataType;
@property(nonatomic, readwrite) int length;
@property(nonatomic, readwrite) int precision;
@property(nonatomic, readwrite) int scale;
@property(nonatomic, readwrite, strong) NSString *defaultValue;
@property(nonatomic, readwrite) BOOL isNullable;
@property(nonatomic, readwrite) BOOL isUnique;
@property(nonatomic, readwrite) BOOL isLazy;
@property(nonatomic, readwrite) BOOL isReplay;
@property(nonatomic, readwrite) BOOL isStatic;
@property(nonatomic, readwrite) BOOL isSystem;
@property(nonatomic, readwrite) BOOL isPersistent;

@end
