//
//  Created by 宋永强 on 11-8-25.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxCommonEnums.h"

@class UFSfxObject;
@class UFSfxObjectProperty;
@class UFSfxObjectPropertyMetadata;


@interface UFSfxObjectPropertyValue : NSObject {
    __unsafe_unretained UFSfxObject * _owner;
    __unsafe_unretained UFSfxObjectProperty * _property;
    __unsafe_unretained UFSfxObjectPropertyMetadata * _metadata;
    id _localValue;
    id _currentValue;
    id _defaultValueOveride;
    id _inheritedValue;
    BOOL _isInheritedValueValid;
    UFSfxValueSource _valueSource;
}

@property(nonatomic, unsafe_unretained, readonly) UFSfxObject *owner;
@property(nonatomic, unsafe_unretained, readonly) UFSfxObjectProperty *property;
@property(nonatomic, unsafe_unretained, readonly) UFSfxObjectPropertyMetadata *metadata;
@property(nonatomic, readonly) id currentValue;
@property(nonatomic, readonly) UFSfxValueSource valueSource;

- (void)composeCurrentValue;

@end