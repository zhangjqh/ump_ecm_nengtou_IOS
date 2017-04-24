//
//  Created by 宋永强 on 11-8-9.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxGradientBrush.h"

@interface UFSfxLinearGradientBrush : UFSfxGradientBrush {
    float _angle;
}

@property(nonatomic) float angle;

- (id)initWithColors:(UFSfxGradientStopCollection *)colorStops;
- (id)initWithColors:(UFSfxGradientStopCollection *)colorStops angle:(float)angle;
- (id)initWithColors:(UFSfxDrawColor *)startColor endColor:(UFSfxDrawColor *)endColor angle:(float)angle;

- (void)setAngleFromGradientMode:(UFSfxGradientMode)gradientMode;

@end