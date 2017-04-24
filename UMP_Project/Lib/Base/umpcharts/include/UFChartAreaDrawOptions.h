//
//  UFChartAreaDrawOptions.h
//  UFCharts
//
//  Created by 宋永强 on 11-4-21.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "UFChartLineDrawOptions.h"
#import "UFChartFillStyle.h"
#import "UFChartBorderStyle.h"
#import "UFChartAreaSeriesView.h"
#import "UFChartRadarAreaSeriesView.h"

/**
 *	@brief	表示 UFChartSeriesViewArea 和 UFChartSeriesViewStackedAreas 的绘制属性
 */
@interface UFChartAreaDrawOptions : UFChartLineDrawOptions {
    UFChartFillStyle *_fillStyle;
    UFChartBorderStyle *_borderStyle;
}

/**
 *	@brief	使用指定的视图类型初始化 UFChartAreaDrawOptions 类的新实例
 *
 *	@param 	chartType 	
 *
 *	@return	实例
 */
- (id)initWithAreaView:(UFChartAreaSeriesView *)chartType;


/**
 *	@brief	使用指定的视图类型初始化 UFChartAreaDrawOptions 类的新实例
 *
 *	@param 	chartType 	
 *
 *	@return	实例
 */
- (id)initWithRadarAreaView:(UFChartRadarAreaSeriesView *)chartType;


/**
 *	@brief	获取填充样式。
 */
@property(readonly) UFChartFillStyle *fillStyle;

/**
 *	@brief	获取边框样式。
 */
@property(readonly) UFChartBorderStyle *borderStyle;


@end
