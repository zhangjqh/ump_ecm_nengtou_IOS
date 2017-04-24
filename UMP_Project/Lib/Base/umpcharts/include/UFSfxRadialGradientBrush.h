//
//  UFSfxRadialGradientBrush.h
//  UFSfxShared
//
//  Created by 宋永强 on 11-8-21.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UFSfxGradientBrush.h"

@interface UFSfxRadialGradientBrush : UFSfxGradientBrush {
@private
    float _angle;
}

@property(nonatomic) float angle;

- (id)initWithColors:(UFSfxGradientStopCollection *)colorStops;
- (id)initWithColors:(UFSfxGradientStopCollection *)colorStops angle:(float)angle;
- (id)initWithColors:(UFSfxDrawColor *)startColor endColor:(UFSfxDrawColor *)endColor angle:(float)angle;

- (void)setAngleFromGradientMode:(UFSfxGradientMode)gradientMode;

@end
