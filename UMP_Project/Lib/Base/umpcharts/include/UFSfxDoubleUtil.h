//
//  Created by 宋永强 on 11-8-23.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxRectF.h"
#import "UFSfxPointF.h"
#import "UFSfxSizeF.h"

@interface UFSfxDoubleUtil : NSObject 

+ (BOOL)areValueClosed:(float)value1 value2:(float)value2;
+ (BOOL)areRectClosed:(UFSfxRectF *)rect1 rect2:(UFSfxRectF *)rect2;
+ (BOOL)arePointClosed:(UFSfxPointF *)point1 point2:(UFSfxPointF *)point2;
+ (BOOL)areSizeClosed:(UFSfxSizeF *)size1 size2:(UFSfxSizeF *)size2;
+ (BOOL)greaterThan:(float)value1 value2:(float)value2;
+ (BOOL)greaterThanOrClose:(float)value1 value2:(float)value2;
+ (BOOL)lessThan:(float)value1 value2:(float)value2;
+ (BOOL)lessThanOrClose:(float)value1 value2:(float)value2;
+ (BOOL)isBetweenZeroAndOne:(float)value;
+ (BOOL)isOne:(float)value;
+ (BOOL)isZore:(float)value;
+ (int)floatToInt:(float)value;


@end