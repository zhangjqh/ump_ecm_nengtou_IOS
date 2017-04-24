//
//  UFChartGridLines.h
//  UFCharts
//
//  Created by 宋永强 on 11-5-3.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "UFChartAxisBase.h"
#import "UFSfxDrawColor.h"
#import "UFChartElement.h"
#import "UFChartLineStyle.h"
#import "UFChartAppearanceItems.h"

@class UFChartAxisBase;

/**
 *	@brief	表示轴的网格线。
 */
@interface UFChartGridLines : UFChartElement {

    BOOL _visible;
    BOOL _minorVisible;
    UFSfxDrawColor *_color;
    UFSfxDrawColor *_minorColor;
    UFChartLineStyle *_lineStyle;
    UFChartLineStyle *_minorLineStyle;
}


/**
 *	@brief	获取或者设置轴的主要网格线是否可见。
 */
@property(nonatomic, assign) BOOL visible;

/**
 *	@brief	获取或者设置轴的次要网格线是否可见。
 */
@property(nonatomic, assign) BOOL minorVisible;

/**
 *	@brief	获取或设置主要网格线颜色。
 */
@property(nonatomic, strong) UFSfxDrawColor *color;

/**
 *	@brief	获取或设置次要网格线颜色。
 */
@property(nonatomic, strong) UFSfxDrawColor *minorColor;

/**
 *	@brief	获取主要网格线的样式。
 */
@property(nonatomic, readonly, strong) UFChartLineStyle *lineStyle;

/**
 *	@brief	获取次要网格线的样式。
 */
@property(nonatomic, readonly, strong) UFChartLineStyle *minorLineStyle;

- (id)initWithAxis:(UFChartAxisBase *)axis;

- (UFChartAxisBase *)getAxis;

- (UFSfxDrawColor *)getActualColor:(UFChartGridLinesAppearance *)appearance;

- (UFSfxDrawColor *)getActualMinorColor:(UFChartGridLinesAppearance *)appearance;

@end
