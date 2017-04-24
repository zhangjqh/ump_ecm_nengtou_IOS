//
//  UFChartPlot.h
//  UFCharts
//
//  Created by 宋永强 on 11-4-15.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UFChartElement.h"
#import "UFChartSeries.h"
#import "UFSfxRectF.h"
#import "UFSfxThickness.h"
#import "UFSfxPointF.h"
#import "UFChartIXYPlot.h"

@class UFChartSeries;
@class UFChartControl;

/**
 *	@brief	提供管理 UFChartControl 控件中的图表的画图区域的方法和属性。
 */
@interface UFChartPlot : UFChartElement {
    NSMutableDictionary *_regions;
    UFSfxRectF *_seriesBounds;
    UFSfxThickness *_padding;
    NSMutableArray *_visibleSeries;
    __unsafe_unretained UFChartSeries *_primarySeries;
}

/**
 *	@brief	获取图表的边距
 */
@property(readonly, strong) UFSfxThickness *padding;

/**
 *	@brief	获取图表的绘制数据的区域
 */
@property(readonly, strong) UFSfxRectF *seriesBounds;

/**
 *	@brief	获取图表中可点击图表元素的区域集合
 */
@property(readonly, strong) NSMutableDictionary *regions;

/**
 *	@brief	获取或者设置图表控件
 */
@property(readonly, unsafe_unretained) UFChartControl *chart;

/**
 *	@brief	获取可视的图表数据序列集合
 */
@property(readonly, strong) NSArray *visibleSeries;

/**
 *	@brief	或者实际的图表数据区域。
 */
@property(readonly, unsafe_unretained) UFSfxRectF *visualSeriesBounds;

/**
 *	@brief	获取主数据序列。
 */
@property(nonatomic, readonly, unsafe_unretained) UFChartSeries *primarySeries;


/**
 *	@brief	提供一个坐标进行测试，返回包含该坐标的图表元素。
 *
 *	@param 	x 	x坐标
 *	@param 	y 	y坐标
 *
 *	@return	所有包含该坐标的图表元素。
 */
- (NSArray *)hitTest:(float)x y:(float)y;


/**
 *	@brief	获取一个坐标是否处于可视区域
 *
 *	@param 	point 	坐标
 *
 *	@return	YES表示可见，NO表示不可见。
 */
- (BOOL)isVisiblePoint:(UFSfxPointF *)point;


/**
 *	@brief	获取一个矩阵区域是否处于可视区域
 *
 *	@param 	rect 	矩阵区域
 *
 *	@return	YES表示可见，NO表示不可见。
 */
- (BOOL)isVisibleRect:(UFSfxRectF *)rect;


@end
