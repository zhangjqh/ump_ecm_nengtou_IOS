//
//  UFChartFillStyle.h
//  UFCharts
//
//  Created by 宋永强 on 11-4-20.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UFChartElement.h"
#import "UFChartEnums.h"
#import "UMPClient.h"


@class UFChartDrawCommand;

/**
 *	@brief	获取或设置背景的填充样式。
 */
@interface UFChartFillStyle : UFChartElement {
@private
    UFSfxGradientMode _gradientMode;
    UFSfxGradientStyle _gradientStyle;
    UFSfxFillMode _fillMode;
    UFSfxDrawColor *_color2;
    UFSfxBrush * _fillBrush;
}

/**
 *	@brief	获取或设置背景渐变样式。
 */
@property(nonatomic, assign) UFSfxGradientMode gradientMode;

@property(nonatomic, assign) UFSfxGradientStyle gradientStyle;

/**
 *	@brief	获取或设置背景填充样式。
 */
@property(nonatomic, assign) UFSfxFillMode fillMode;

/**
 *	@brief	获取或设置背景渐变样式下的第二个颜色。
 */
@property(nonatomic, strong) UFSfxDrawColor *color2;

/**
 *	@brief	获取或设置。
 */
@property(nonatomic, strong) UFSfxBrush *fillBrush;

- (id)initWith:(UFChartElement *)owner fillMode:(UFSfxFillMode)fillMode color2:(UFSfxDrawColor *)color2;

@end
