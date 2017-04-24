//
//  Created by 宋永强 on 11-5-30.
//
//  To change this template use File | Settings | File Templates.
//


#import <Foundation/Foundation.h>
#import "UFSfxCommonEnums.h"
#import "UFSfxIGraphics.h"

@class UFSfxBrush;
@class UFSfxFont;
@class UFSfxSize;
@class UFSfxSizeF;
@class UFSfxRectF;
@class UFSfxPen;


@interface UFSfxGraphics2D : NSObject <UFSfxIGraphics> {
    CGContextRef _canvas;
    __unsafe_unretained UIView *_hostView;
    __unsafe_unretained CALayer *_hostLayer;
    UFSfxFont *_font;
    UFSfxSizeF *_textSize;
    UFSfxRectF *_textBounds;
    UFSfxAlignment _textAlign;
    UFSfxBrush *_brush;
    UFSfxPen *_pen;
    BOOL _useAnimation;
}
- (id)initWithCanvas:(CGContextRef)canvas;


@property(nonatomic, unsafe_unretained) UIView *hostView;
@property(nonatomic, unsafe_unretained) CALayer *hostLayer;
@property(nonatomic) BOOL useAnimation;


@end