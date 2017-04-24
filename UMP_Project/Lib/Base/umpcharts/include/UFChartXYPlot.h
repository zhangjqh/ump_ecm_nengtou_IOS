//
//  UFChartXYPlot.h
//  UFCharts
//
//  Created by 宋永强 on 11-4-15.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UFChartIXYPlot.h"
#import "UFChartPlot.h"
#import "UFChartSeries.h"
#import "UFSfxRectF.h"
#import "UFSfxDouble.h"

@protocol UFChartIAxis;
@class UFChartAxisBase;
@class UFChartAxis2D;
@class UFChartAxisX;
@class UFChartAxisY;

/**
 *	@brief	提供管理 UFChartControl 控件中的XY轴类型图表的画图区域的方法和属性。
 *  XY轴类型图表包含：
 *  <ul>
 *  <li>UFChartPointSeriesView</li>
 *  <li>UFChartLineSeriesView</li>
 *  <li>UFChartAreaSeriesView</li>
 *  <li>UFChartStackedAreaSeriesView</li>
 *  <li>UFChartBarSeriesView</li>
 *  <li>UFChartStackedBarSeriesView</li>
 *  <li>UFChartBubbleSeriesView</li>
 *  </ul>
 */
@interface UFChartXYPlot : UFChartPlot <UFChartIXYPlot> {
@private
    BOOL _rotated;
    UFChartAxisX *_axisX;
    UFChartAxisY *_axisY;
    BOOL _enableScrolling;
    int _scrollOffset;
    UFSfxRectF *_visualSeriesBounds;
    NSMutableArray *_actualSecondaryAxesX;
    NSMutableArray *_actualSecondaryAxesY;
    UFSfxDouble *_minXDistance;
    NSMutableArray *_sbsItems;
    NSUInteger _pointWidth;
}

/**
 *	@brief	返回图表的X坐标轴
 */
@property(readonly, strong) UFChartAxisX *axisX;

/**
 *	@brief	返回图表的Y坐标轴
 */
@property(readonly, strong) UFChartAxisY *axisY;

/**
 *	@brief	返回或者设置图表的X轴和Y轴是否互换。
 */
@property(readwrite, assign) BOOL rotated;

/**
 *	@brief	返回或者设置图表滚动的偏移量
 *  只有在 enableScrolling 属性为 YES 时，该属性才有效。
 */
@property(readwrite, assign) int scrollOffset;

/**
 *	@brief	返回或者设置图表是否允许滚动。
 *  默认为 NO。在图表数据点很多，图表区域无法显示时，可以设置这个属性为YES。
 */
@property(readwrite, assign) BOOL enableScrolling;


/**
 *	@brief	获取或者设置每个数据点的宽度（以像素为单位）。
 *  这个属性只有在 enableScrolling = YES 时有效。表示每个点的宽度。iPad默认为45,iPhone默认为30；
 */
@property(readwrite, assign) NSUInteger pointWidth;


@end
