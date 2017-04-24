//
//  UFChartSeriesCollection.h
//  UFCharts2
//
//  Created by 宋永强 on 11-3-13.
//  Copyright 2011 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UFChartCollection.h"

@class UFChartControl;

/**
 *	@brief	表示 UFChartSeries 的集合。
 */
@interface UFChartSeriesCollection : UFChartCollection {
}

/**
 *	@brief	获取关联的图表控件。
 */
@property(readonly, unsafe_unretained) UFChartControl *chart;

/**
 *	@brief	初始化实例
 *
 *	@param 	chart 	图表控件
 *
 *	@return	实例
 */
- (id)initWithChart:(UFChartControl *)chart;


@end
