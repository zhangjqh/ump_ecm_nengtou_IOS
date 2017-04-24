//
//  Created by 宋永强 on 11-8-5.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxBrush.h"
#import "UFSfxPen.h"
#import "UFSfxGeometry.h"
#import "UFSfxDrawFont.h"
#import "UFSfxDrawColor.h"

@class UFSfxTransform;

@interface UFSfxDrawingContext : NSObject {

}

- (void)drawGeometry:(UFSfxBrush *)brush pen:(UFSfxPen *)pen geometry:(UFSfxGeometry *)geometry;
- (void)drawPath:(CGPathRef)path brush:(UFSfxBrush *)brush pen:(UFSfxPen *)pen;
- (void)drawEllipse:(UFSfxBrush *)brush pen:(UFSfxPen *)pen center:(UFSfxPointF *)center radiusX:(float)radiusX radiusY:(float)radiusY;
- (void)drawLine:(UFSfxPen *)pen p1:(UFSfxPointF *)p1 p2:(UFSfxPointF *)p2;
- (void)drawRect:(UFSfxBrush *)brush pen:(UFSfxPen *)pen rect:(UFSfxRectF *)rect;
- (void)drawRoundRect:(UFSfxBrush *)brush pen:(UFSfxPen *)pen rect:(UFSfxRectF *)rect 
            ovalWidth:(float)ovalWidth ovalHeight:(float)ovalHeight;
- (void)drawText:(UFSfxDrawFont *)font text:(NSString *)text x:(float)x y:(float)y;
- (void)drawImage:(CGImageRef)image rect:(UFSfxRectF *)rect;

- (void)clip;
- (void)clipToRect:(UFSfxRectF *)rect;
- (void)saveState;
- (void)pushTransform:(UFSfxTransform *)transform;
- (void)pop;
- (void)restoreState;

- (int)getOpacity;

- (void)changeOpacity:(int)opacity;
@end