//
//  UFChartLineDrawOptions.h
//  UFCharts
//
//  Created by 宋永强 on 11-4-21.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UFChartPointDrawOptions.h"
#import "UFChartLineStyle.h"
#import "UFChartLineSeriesView.h"
#import "UFChartRadarLineSeriesView.h"

@class UFChartLineSeriesView;
@class UFChartRadarLineSeriesView;

/**
 *	@brief	提供 UFChartLineSeriesView 的绘画属性。
 */
@interface UFChartLineDrawOptions : UFChartPointDrawOptions {

    UFChartLineStyle *_lineStyle;
}

/**
 *	@brief	获取线的风格。
 */
@property(readonly, strong) UFChartLineStyle *lineStyle;


/**
 *	@brief	初始化实例
 *
 *	@param 	seriesView 	
 *
 *	@return	实例
 */
- (id)initWithLineView:(UFChartLineSeriesView *)seriesView;

/**
 *	@brief	初始化实例
 *
 *	@param 	seriesView 	
 *
 *	@return	实例
 */
- (id)initWithRadarLineView:(UFChartRadarLineSeriesView *)seriesView;

@end
