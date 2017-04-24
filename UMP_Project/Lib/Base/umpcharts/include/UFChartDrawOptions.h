//
//  UFChartDrawOptions.h
//  UFCharts
//
//  Created by 宋永强 on 11-4-20.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UFChartElement.h"
#import "UFChartSeriesView.h"
#import "UFChartSeriesPoint.h"
#import "UFSfxDrawColor.h"

@class UFChartSeriesView;
@class UFChartSeriesPoint;

/**
 *	@brief	各种图类型视图的绘制属性基类。
 */
@interface UFChartDrawOptions : UFChartElement {
@private
    UFSfxDrawColor *_mainColor;
    UFSfxDrawColor *_secondColor;
    UFSfxDrawColor *_middleColor;
}

/**
 *	@brief	获取或者设置第一颜色。
 */
@property(nonatomic, strong) UFSfxDrawColor *mainColor;

/**
 *	@brief	获取或者设置第二颜色。
 */
@property(nonatomic, strong) UFSfxDrawColor *secondColor;

/**
 *	@brief	获取或者设置第三颜色。
 */
@property(nonatomic, strong) UFSfxDrawColor *middleColor;

/**
 *	@brief	初始化实例
 *
 *	@param 	seriesView 	
 *
 *	@return	实例
 */
- (id)initWithSeriesView:(UFChartSeriesView *)seriesView;


/**
 *	@brief	初始化实例
 *
 *	@param 	seriesView 	
 *	@param 	point 	数据点
 *	@param 	index 	数据点的索引
 */
- (void)initSeriesPointDrawOptions:(UFChartSeriesView *)seriesView point:(UFChartSeriesPoint *)point index:(int)index;


@end
