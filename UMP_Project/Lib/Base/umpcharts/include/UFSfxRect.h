//
//  Created by 宋永强 on 11-7-18.
//
//


#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

@class UFSfxSize;
@class UFSfxPoint;
/**
 *	@brief	表示一个区域，提供了 top、left、right和bottom的属性。
 */
@interface UFSfxRect : NSObject <NSCopying> {
    int _left;
    int _top;
    int _right;
    int _bottom;
}

@property(nonatomic, assign) int left;
@property(nonatomic, assign) int top;
@property(nonatomic, assign) int right;
@property(nonatomic, assign) int bottom;
@property(nonatomic, readwrite, assign) int width;
@property(nonatomic, readwrite, assign) int height;
@property(nonatomic, unsafe_unretained, readonly) UFSfxSize * size;
@property(nonatomic, unsafe_unretained, readonly) UFSfxPoint * location;

- (id)initWithLeft:(int)left top:(int)top right:(int)right bottom:(int)bottom;

- (id)initWithCGRect:(CGRect)bounds;

- (id)initWithRect:(UFSfxRect *)rect;

- (id)initWithLocation:(UFSfxPoint *)location size:(UFSfxSize *)size;

- (void)set:(UFSfxRect *)rect;

- (void)setSize:(UFSfxSize *)size;

- (void)setLocationAndSize:(UFSfxPoint *)location size:(UFSfxSize *)size;

- (void)set:(int)left top:(int)top right:(int)right bottom:(int)bottom;

- (float)centerX;

- (float)centerY;

- (void)inset:(int)dx dy:(int)dy;

- (BOOL)contains:(int)x y:(int)y;

- (BOOL)intersectsWith:(UFSfxRect *)rect;

- (BOOL)intersects:(int)left top:(int)top right:(int)right bottom:(int)bottom;

- (BOOL)isEmpty;

- (void)offset:(int)dx dy:(int)dy;

- (CGRect)CGRectValue;

+ (UFSfxRect *)empty;

@end