//
//  Created by 宋永强 on 11-8-25.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxCommonEnums.h"

@class UFSfxObjectPropertyValueCollection;
@class UFSfxObjectProperty;
@class UFSfxObjectPropertyValue;
@class UFSfxBinding;
@class UFSfxPropertyChangedEventArgs;
@protocol UFSfxObjectPropertyChangedListener;

@interface UFSfxObject : NSObject {
@private
    NSMutableArray * _propertyChangedlistenerList;
    UFSfxObjectPropertyValueCollection * _propertyValues;
    id _dataContext;
}

@property(nonatomic, readwrite, strong) id dataContext;

- (void)registerPropertyChangedListener:(id<UFSfxObjectPropertyChangedListener>)listener;

- (void)unRegisterPropertyChangedListener:(id<UFSfxObjectPropertyChangedListener>)listener;

/**
 *	@brief	获取指定的property的UFSfxObjectPropertyValue。
 *
 *	@param 	property 	指定的ObjectProperty
 *
 *	@return	UFSfxObjectPropertyValue
 */
- (UFSfxObjectPropertyValue *)getPropertyValue:(UFSfxObjectProperty *)property;

- (id)getValue:(UFSfxObjectProperty *)property;

- (BOOL)getValueAsBool:(UFSfxObjectProperty *)property;

- (int)getValueAsInt:(UFSfxObjectProperty *)property;

- (long)getValueAsLong:(UFSfxObjectProperty *)property;

- (char)getValueAsChar:(UFSfxObjectProperty *)property;

- (float)getValueAsFloat:(UFSfxObjectProperty *)property;

- (id)getInheritedValue:(UFSfxObjectProperty *)property;

- (UFSfxValueUpdateResult)setValueInt:(UFSfxObjectProperty *)property value:(int)value;

- (UFSfxValueUpdateResult)setValueLong:(UFSfxObjectProperty *)property value:(long)value;

- (UFSfxValueUpdateResult)setValueDouble:(UFSfxObjectProperty *)property value:(double)value;

- (UFSfxValueUpdateResult)setValueFloat:(UFSfxObjectProperty *)property value:(float)value;

- (UFSfxValueUpdateResult)setValueBool:(UFSfxObjectProperty *)property value:(BOOL)value;

- (UFSfxValueUpdateResult)setValueChar:(UFSfxObjectProperty *)property value:(char)value;

- (UFSfxValueUpdateResult)setValue:(UFSfxObjectProperty *)property value:(id)value;

- (UFSfxValueUpdateResult)setValue:(UFSfxObjectProperty *)property value:(id)value silence:(BOOL)silence;

- (UFSfxValueUpdateResult)setValue:(UFSfxObjectProperty *)property intValue:(int)value;

- (UFSfxValueUpdateResult)setValue:(UFSfxObjectProperty *)property longValue:(long)value;

- (UFSfxValueUpdateResult)setValue:(UFSfxObjectProperty *)property doubleValue:(double)value;

- (UFSfxValueUpdateResult)setValue:(UFSfxObjectProperty *)property floatValue:(float)value;

- (UFSfxValueUpdateResult)setValue:(UFSfxObjectProperty *)property boolValue:(BOOL)value;

- (UFSfxValueUpdateResult)setValue:(UFSfxObjectProperty *)property charValue:(char)value;

- (UFSfxValueUpdateResult)resetValue:(UFSfxObjectProperty *)property resetFlags:(UFSfxValueResetFlags)flags;

- (void)setBinding:(NSString *)property binding:(UFSfxBinding *)binding;

@end

@protocol UFSfxObjectPropertyChangedListener <NSObject>
- (void)onPropertyChanged:(UFSfxObject *)object args:(UFSfxPropertyChangedEventArgs *)args;
@end
