//
//  Created by 宋永强 on 11-8-5.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxGeometry.h"

@interface UFSfxEllipseGeometry : UFSfxGeometry {
    float _radiusX;
    float _radiusY;
    UFSfxPointF * _center;
}

@property(nonatomic) float radiusX;
@property(nonatomic) float radiusY;
@property(nonatomic, copy) UFSfxPointF *center;
@property(nonatomic, strong, readonly) UFSfxRectF * bounds;

- (id)initWithRect:(UFSfxRectF *)rect;

- (id)initWithCenter:(UFSfxPointF *)center radiusX:(float)radiusX radiusY:(float)radiusY;


@end