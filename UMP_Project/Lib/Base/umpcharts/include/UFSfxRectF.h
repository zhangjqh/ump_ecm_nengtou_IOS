//
//  Created by 宋永强 on 11-5-30.
//
//  To change this template use File | Settings | File Templates.
//


#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

@class UFSfxPointF;
@class UFSfxSizeF;
/**
 *	@brief	表示一个区域，提供了 top、left、right和bottom的属性。
 */
@interface UFSfxRectF : NSObject <NSCopying> {
@private
    float _left;
    float _top;
    float _right;
    float _bottom;
    UFSfxSizeF * _cachedSize;
    UFSfxPointF * _cachedLocation;
}

@property(nonatomic, assign) float left;
@property(nonatomic, assign) float top;
@property(nonatomic, assign) float right;
@property(nonatomic, assign) float bottom;
@property(nonatomic, assign) float width;
@property(nonatomic, assign) float height;
@property(nonatomic, unsafe_unretained) UFSfxSizeF * size;
@property(nonatomic, unsafe_unretained, readonly) UFSfxPointF * location;
@property(nonatomic, assign, readonly) CGPoint CGLocation;
@property(nonatomic, assign, readonly) BOOL isEmpty;

- (id)initWithPoints:(float)left top:(float)top right:(float)right bottom:(float)bottom;

- (id)initWithLocation:(UFSfxPointF *)location size:(UFSfxSizeF *)size;

- (id)initWithCGRect:(CGRect)bounds;

- (id)initWithRectF:(UFSfxRectF *)rect;

- (id)initWithSizeF:(UFSfxSizeF *)size;

- (void)set:(UFSfxRectF *)rect;

- (void)set:(float)left top:(float)top right:(float)right bottom:(float)bottom;

- (void)setCenter:(UFSfxPointF *)center;

- (float)centerX;

- (float)centerY;

- (void)inset:(float)dx dy:(float)dy;

- (BOOL)contains:(float)x y:(float)y;

- (BOOL)intersects:(float)left top:(float)top right:(float)right bottom:(float)bottom;

- (void)offset:(float)dx dy:(float)dy;

- (CGRect)CGRectValue;

@end