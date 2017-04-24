//
//  Created by 宋永强 on 11-9-4.
//
//


#import <Foundation/Foundation.h>

#import "UFSfxVisualElement.h"

@class UFSfxFillPrimitiveElement;
@class UFSfxBorderPrimitiveElement;
@class UFSfxTextPrimitiveElement;
@class UFSfxImagePrimitiveElement;
@class UFSfxImageAndTextLayoutPanel;

@interface UFSfxLabelElement : UFSfxVisualElement {
    UFSfxFillPrimitiveElement * _fillPrimitive;
    UFSfxBorderPrimitiveElement * _borderPrimitive;
    UFSfxTextPrimitiveElement * _textPrimitive;
    UFSfxImagePrimitiveElement * _imagePrimitive;
    UFSfxImageAndTextLayoutPanel * _layoutPanel;
}

//@property(nonatomic) UFSfxContentAlignment textAlignment;
@property(nonatomic) UFSfxContentAlignment imageAlignment;
@property(nonatomic) UFSfxTextImageRelation textImageRelation;
@property(nonatomic, strong) UIImage * image;
@property(nonatomic, strong, readonly) UFSfxFillPrimitiveElement *fillPrimitive;
@property(nonatomic, strong, readonly) UFSfxBorderPrimitiveElement *borderPrimitive;


@end

@interface UFSfxLabelElement (ObjectProperty)
//+ (UFSfxObjectProperty *)imageAlignmentProperty;
//
//+ (UFSfxObjectProperty *)textAlignmentProperty;
//
//+ (UFSfxObjectProperty *)textImageRelationProperty;
@end