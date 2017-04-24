//
//  Created by 宋永强 on 11-9-5.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxButtonItem.h"

@class UFSfxFillPrimitiveElement;
@class UFSfxImagePrimitiveElement;
@class UFSfxBorderPrimitiveElement;
@class UFSfxTextPrimitiveElement;
@class UFSfxImageAndTextLayoutPanel;

@interface UFSfxButtonElement : UFSfxButtonItem {
    UFSfxFillPrimitiveElement * _fillPrimitive;
    UFSfxBorderPrimitiveElement * _borderPrimitive;    
    UFSfxTextPrimitiveElement * _textPrimitive;
    UFSfxImagePrimitiveElement * _imagePrimitive;
    UFSfxImageAndTextLayoutPanel * _layoutPanel;
}

@property(nonatomic) UFSfxContentAlignment imageAlignment;
@property(nonatomic) UFSfxTextImageRelation textImageRelation;
@property(nonatomic, strong) UIImage * image;
@property(nonatomic, strong, readonly) UFSfxFillPrimitiveElement *fillPrimitive;
@property(nonatomic, strong, readonly) UFSfxBorderPrimitiveElement *borderPrimitive;

@end