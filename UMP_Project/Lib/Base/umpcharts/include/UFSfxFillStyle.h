//
//  Created by 宋永强 on 11-9-28.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxObject.h"
#import "UFSfxFillSettings.h"

@class UFSfxDrawColor;
@class UFSfxBrush;

@interface UFSfxFillStyle : UFSfxObject {
@private
    UFSfxDrawColor * _color;
    UFSfxDrawColor *_color2;
    UFSfxDrawColor * _color3;
    UFSfxFillMode _fillMode;
    UFSfxGradientStyle _gradientStyle;
    __unsafe_unretained UFSfxFillSettings * _fillSettings;
}

@property(nonatomic, strong) UFSfxDrawColor *color;
@property(nonatomic, strong) UFSfxDrawColor *color2;
@property(nonatomic, strong) UFSfxDrawColor *color3;
@property(nonatomic) UFSfxFillMode fillMode;
@property(nonatomic) UFSfxGradientStyle gradientStyle;
@property(nonatomic, unsafe_unretained, readonly) UFSfxFillSettings *fillSettings;

- (id)initWithColor:(UFSfxDrawColor *)color color2:(UFSfxDrawColor *)color2;

- (id)initWithColor:(UFSfxDrawColor *)color color2:(UFSfxDrawColor *)color2 color3:(UFSfxDrawColor *)color3;

- (id)initWithColor:(UFSfxDrawColor *)color;

- (UFSfxBrush *)createBrush;

@end