//
//  Created by 宋永强 on 11-9-28.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxObject.h"

@class UFSfxGradientStopCollection;

@interface UFSfxFillSettings : UFSfxObject {
@private
    UIImage * _backgroundImage;
    float _gradientAngle;
    UFSfxImageMode _imageMode;
    UFSfxGradientStopCollection * _colorStops;
}

@property(nonatomic, strong) UIImage *backgroundImage;
@property(nonatomic) float gradientAngle;
@property(nonatomic) UFSfxImageMode imageMode;
@property(nonatomic, strong) UFSfxGradientStopCollection *colorStops;

- (id)initWithColorStops:(UFSfxGradientStopCollection *)colorStops gradientAngle:(float)gradientAngle;

@end