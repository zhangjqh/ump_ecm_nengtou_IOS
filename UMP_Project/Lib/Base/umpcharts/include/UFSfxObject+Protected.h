//
//  Created by 宋永强 on 11-8-25.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxObject.h"

@class UFSfxPropertyChangedEventArgs;
@class UFSfxObjectPropertyValue;

@interface UFSfxObject(Protected)

- (void)initializeFields;

- (UFSfxObjectPropertyValueCollection *)propertyValues;

- (UFSfxObject *)getInheritanceParent;

- (void)onPropertyChanged:(UFSfxPropertyChangedEventArgs *)args;

- (UFSfxValueUpdateResult)setValueCore:(UFSfxObjectPropertyValue *)propertyValue newValue:(id)newValue valueSource:(UFSfxValueSource)valueSource;

- (UFSfxValueUpdateResult)setValueCore:(UFSfxObjectPropertyValue *)propertyValue newValue:(id)newValue valueSource:(UFSfxValueSource)valueSource silence:(BOOL)silence;

- (UFSfxValueUpdateResult)resetValueCore:(UFSfxObjectPropertyValue *)propertyValue resetFlags:(UFSfxValueResetFlags)flags;

- (id)getDefaultValue:(UFSfxObjectPropertyValue *)propValue baseValue:(id)baseValue;

@end