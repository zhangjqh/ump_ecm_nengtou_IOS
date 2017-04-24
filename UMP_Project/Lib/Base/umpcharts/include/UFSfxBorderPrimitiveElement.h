//
//  Created by 宋永强 on 11-9-5.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxCommonEnums.h"
#import "UFSfxBasePrimitiveElement.h"

@interface UFSfxBorderPrimitiveElement : UFSfxBasePrimitiveElement {
    
}

@property(nonatomic) UFSfxBorderBoxStyle borderBoxStyle;
@property(nonatomic) float width;
@property(nonatomic) float leftWidth;
@property(nonatomic) float topWidth;
@property(nonatomic) float rightWidth;
@property(nonatomic) float bottomWidth;
@property(nonatomic, strong) UFSfxBrush *leftBrush;
@property(nonatomic, strong) UFSfxBrush *topBrush;
@property(nonatomic, strong) UFSfxBrush *rightBrush;
@property(nonatomic, strong) UFSfxBrush *bottomBrush;
@property(nonatomic, strong) UFSfxBrush *leftShadowBrush;
@property(nonatomic, strong) UFSfxBrush *topShadowBrush;
@property(nonatomic, strong) UFSfxBrush *rightShadowBrush;
@property(nonatomic, strong) UFSfxBrush *bottomShadowBrush;


@end

@interface UFSfxBorderPrimitiveElement (ObjectProperty)
+ (UFSfxObjectProperty *)borderBoxStyleProperty;

+ (UFSfxObjectProperty *)widthProperty;

+ (UFSfxObjectProperty *)leftWidthProperty;

+ (UFSfxObjectProperty *)topWidthProperty;

+ (UFSfxObjectProperty *)rightWidthProperty;

+ (UFSfxObjectProperty *)bottomWidthProperty;

+ (UFSfxObjectProperty *)leftBrushProperty;

+ (UFSfxObjectProperty *)topBrushProperty;

+ (UFSfxObjectProperty *)rightBrushProperty;

+ (UFSfxObjectProperty *)bottomBrushProperty;

+ (UFSfxObjectProperty *)leftShadowProperty;

+ (UFSfxObjectProperty *)topShadowProperty;

+ (UFSfxObjectProperty *)rightShadowProperty;

+ (UFSfxObjectProperty *)bottomShadowProperty;


@end