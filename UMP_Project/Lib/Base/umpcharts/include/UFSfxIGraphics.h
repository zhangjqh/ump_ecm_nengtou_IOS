//
//  Created by 宋永强 on 11-5-30.
//
//  To change this template use File | Settings | File Templates.
//

#import <Foundation/Foundation.h>
#import "UFSfxCommonEnums.h"
#import "UFSfxFont.h"
#import "UFSfxBrush.h"
#import "UFSfxRectF.h"
#import "UFSfxRect.h"
#import "UFSfxPen.h"
#import "UFSfxSize.h"
#import "UFSfxPointF.h"
#import "UFSfxSizeF.h"

@protocol UFSfxIGraphics

/**
* @graphics: GraphicsContextRef
*/
- (void)setGraphics:(CGContextRef)graphics;

- (CGContextRef)getGraphics;

- (BOOL)useAnimation;

- (void)setFont:(UFSfxFont *)font;

- (UFSfxFont *)getFont;

- (void)setBrush:(UFSfxBrush *)brush;

- (UFSfxBrush *)getBrush;

- (void)saveState;

- (void)restoreState;

- (void)clipToRect:(UFSfxRectF *)rect;

- (void)translateCTM:(float)x y:(float)y;

- (void)textOut:(float)x y:(float)y text:(NSString *)text;

- (void)drawString:(float)x y:(float)y text:(NSString *)text brush:(UFSfxBrush *)brush;

- (void)rectangle:(UFSfxRectF *)bounds;

- (void)rectangle:(UFSfxRectF *)bounds brush:(UFSfxBrush *)brush pen:(UFSfxPen *)pen;

- (void)polygon:(NSArray *)points;

- (void)drawPath:(CGPathRef)path brush:(UFSfxBrush *)brush pen:(UFSfxPen *)pen;

- (void)rotate:(float)degrees;

- (float)textHeight:(NSString *)text;

- (float)textWidth:(NSString *)text;

- (float)textHeight:(UFSfxFont *)font text:(NSString *)text;

- (float)textWidth:(UFSfxFont *)font text:(NSString *)text;

- (void)measureString:(UFSfxSizeF *)dimension font:(UFSfxFont *)font text:(NSString *)text;

- (float)getFontHeight;

- (void)setTextAlign:(UFSfxAlignment)textAlign;

- (UFSfxAlignment)getTextAlign;

- (void)drawLine:(UFSfxPointF *)p1 p2:(UFSfxPointF *)p2 pen:(UFSfxPen *)pen;


@end