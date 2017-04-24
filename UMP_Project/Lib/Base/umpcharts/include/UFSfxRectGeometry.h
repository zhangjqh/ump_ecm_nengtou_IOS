//
//  UFSfxRectGeometry.h
//  UFSfxShared
//
//  Created by 宋永强 on 11-8-18.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UFSfxGeometry.h"

@interface UFSfxRectGeometry : UFSfxGeometry {
    UFSfxRectF * _boudns;
}

@property(nonatomic, copy) UFSfxRectF * bounds;

- (id)initWithBounds:(UFSfxRectF *)bounds radiusX:(float)radiusX radiusY:(float)radiusY;

@end
