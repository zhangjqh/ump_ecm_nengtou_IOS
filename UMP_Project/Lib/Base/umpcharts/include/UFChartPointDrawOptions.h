//
//  UFChartPointDrawOptions.h
//  UFCharts
//
//  Created by 宋永强 on 11-4-20.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UFChartMarkerBase.h"
#import "UFChartDrawOptions.h"

@class UFChartPointSeriesView;
@class UFChartRadarPointSeriesView;

/**
 *	@brief	提供 UFChartPointSeriesView 的数据点属性。
 */
@interface UFChartPointDrawOptions : UFChartDrawOptions {

    UFChartMarkerBase *_marker;
}

/**
 *	@brief	获取数据点的标记对象。
 */
@property(readonly, strong) UFChartMarkerBase *marker;


/**
 *	@brief	初始化实例。
 *
 *	@param 	seriesView 	视图
 *
 *	@return	实例。
 */
- (id)initWithPointSeriesView:(UFChartPointSeriesView *)seriesView;


/**
 *	@brief	初始化实例。
 *
 *	@param 	seriesView 	视图
 *
 *	@return	实例。
 */
- (id)initWithRadarPointSeriesView:(UFChartRadarPointSeriesView *)seriesView;


@end
