//
//  UFChartAreaType.h
//  UFCharts2
//
//  Created by 宋永强 on 11-3-17.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "UFChartLineSeriesView.h"
#import "UFChartFillStyle.h"
#import "UFChartBorderStyle.h"
#import "UFChartAppearanceItems.h"

/**
 *	@brief	表示 UFChartSeriesViewArea 的视图
 */
@interface UFChartAreaSeriesView : UFChartLineSeriesView {
@private
    UFChartFillStyle *_fillStyle;
    UFChartBorderStyle *_borderStyle;
    NSUInteger _opacity;
}

/**
 *	@brief	获取样式外观。
 */
@property(readonly, strong) UFChartAreaTypeAppearance *appearance;

/**
 *	@brief	获取实际的填充样式。
 */
@property(readonly, strong) UFChartFillStyle *actualFillStyle;

/**
 *	@brief	获取填充样式。
 */
@property(readonly, strong) UFChartFillStyle *fillStyle;

/**
 *	@brief	获取边框样式。
 */
@property(readonly, strong) UFChartBorderStyle *borderStyle;

/**
 *	@brief	获取或者设置透明度（0~255）。
 */
@property(readwrite, assign) NSUInteger opacity;

@end
