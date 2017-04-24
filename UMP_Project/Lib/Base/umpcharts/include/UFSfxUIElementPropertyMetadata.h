//
//  Created by 宋永强 on 11-8-25.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxCommonEnums.h"
#import "UFSfxObjectPropertyMetadata.h"

@interface UFSfxUIElementPropertyMetadata : UFSfxObjectPropertyMetadata {
    UFSfxUIElementPropertyOptions _options;
}

@property(nonatomic, readonly) UFSfxUIElementPropertyOptions options;
@property(nonatomic, readwrite) BOOL canInheritValue;
@property(nonatomic, readwrite) BOOL affectsLayout;
@property(nonatomic, readwrite) BOOL affectsDisplay;
@property(nonatomic, readwrite) BOOL affectsMeasure;
@property(nonatomic, readwrite) BOOL affectsArrange;
@property(nonatomic, readwrite) BOOL affectsParentMeasure;
@property(nonatomic, readwrite) BOOL affectsParentArrange;
@property(nonatomic, readwrite) BOOL invalidatesLayout;
@property(nonatomic, readonly) BOOL isAffectsLayout;

- (id)initWithDefaultValue:(id)defaultValue options:(UFSfxUIElementPropertyOptions)options;


@end