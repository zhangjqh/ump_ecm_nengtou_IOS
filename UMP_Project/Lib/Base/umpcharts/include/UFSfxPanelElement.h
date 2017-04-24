//
//  UFSfxPanelElement.h
//  UFSfxShared
//
//  Created by 宋永强 on 11-9-2.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UFSfxVisualRenderElement.h"

@class UFSfxFillPrimitiveElement;
@class UFSfxBorderPrimitiveElement;

@interface UFSfxPanelElement : UFSfxVisualRenderElement {    
    UFSfxFillPrimitiveElement * _fillPrimitive;
    UFSfxBorderPrimitiveElement * _borderPrimitive;    
}

@property(nonatomic, strong, readonly) UFSfxFillPrimitiveElement *fillPrimitive;
@property(nonatomic, strong, readonly) UFSfxBorderPrimitiveElement *borderPrimitive;

@end
