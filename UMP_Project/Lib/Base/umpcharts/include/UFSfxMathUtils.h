//
//  Created by 宋永强 on 11-8-1.
//
//


#import <Foundation/Foundation.h>

@class UFSfxRectF;
@class UFSfxPointF;
@class UFSfxTransform;
@class UFSfxThickness;

@interface UFSfxMathUtils : NSObject

+ (UFSfxRectF *)strongRoundRectF:(UFSfxRectF *)rect;

+ (float)strongRoundFloat:(float)value;

+ (int)signFloat:(float)value;

+ (UFSfxPointF *)getCenterOfRect:(UFSfxRectF *)rect;

+ (UFSfxPointF *)getRadiusVector:(float)rx ry:(float)ry alpha:(float)alpha;

+ (float)calcEllipticalRadiusVectorAngle:(UFSfxPointF *)origin orientation:(UFSfxPointF *)orientation rx:(float)rx ry:(float)ry;

+ (float)calcRadiusVectorAngle:(UFSfxPointF *)origin orientation:(UFSfxPointF *)orientation;

+ (UFSfxRectF *)getBoundingRect:(UFSfxRectF *)rect transform:(UFSfxTransform *)tranform;

+ (void)transformPoints:(NSArray *)points elements:(NSArray *)elements;


@end