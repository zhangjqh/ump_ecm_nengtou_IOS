//
//  UFChartAxisBase.h
//  UFCharts
//
//  Created by 宋永强 on 11-5-8.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UFChartElement.h"
#import "UFChartIAxis.h"
#import "UFChartEnums.h"

@class UFChartAxisMapping;
@class UFChartGridLines;
@class UFChartAxisLabel;
@class UFSfxDrawColor;

/**
 *	@brief	表示图表轴的基类。
 */
@interface UFChartAxisBase : UFChartElement <UFChartIAxis> {
    UFChartGridLines *_gridLines;
    UFChartAxisLabel *_label;
    UFChartAxisMapping *_axisMapping;
}

/**
 *	@brief	用图表初始化实例
 *
 *	@param 	plot 	图表
 *
 *	@return	实例
 */
- (id)initWithPlot:(UFChartPlot *)plot;


/**
 *	@brief	获取轴是否是垂直的。
 *
 *	@return	YES表示该轴是垂直，NO表示该轴为水平。
 */
- (BOOL)isVertical;


/**
 *	@brief	获取轴是否是数值轴。
 *
 *	@return	YES表示该轴是数值轴。
 */
- (BOOL)isValueAxis;


/**
 *	@brief	获取轴是否是主轴。
 *  主轴一般是显示数据点 Argument 的第一个轴。
 *
 *	@return	YES表示该轴为主轴。
 */
- (BOOL)isPrimaryAxis;


/**
 *	@brief	获取轴的线条实际显示颜色。
 *
 *	@return	轴的线条颜色。
 */
- (UFSfxDrawColor *)actualColor;

/**
 *	@brief	获取轴的线条宽度（以像素为单位）。
 *
 *	@return	线条宽度。
 */
- (NSUInteger)getThickness;

/**
 *	@brief	获取轴的网格线对象。
 *
 *	@return	轴的网格线对象。
 */
- (UFChartGridLines *)getGridLines;

/**
 *	@brief	获取轴的位置。
 *
 *	@return	轴的位置。
 */
- (UFChartAxisPosition)getAxisPosition;

/**
 *	@brief	获取轴标签文本的显示位置。
 *
 *	@return	轴标签文本的显示位置。
 */
- (UFChartNearTextPosition)getNearTextPosition;


@end
