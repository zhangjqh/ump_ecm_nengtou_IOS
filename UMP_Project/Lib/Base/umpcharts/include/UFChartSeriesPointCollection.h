//
//  UFChartPointCollection.h
//  UFCharts2
//
//  Created by 宋永强 on 11-3-14.
//  Copyright 2011 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UFChartCollection.h"

@class UFChartSeries;
@class UFChartSeriesPoint;

/**
 *	@brief	表示 UFChartSeriesPoint 的集合。
 */
@interface UFChartSeriesPointCollection : UFChartCollection {

}

- (id)initWithSeries:(UFChartSeries *)series;

/**
 *	@brief	获取数据序列。
 *
 *	@return	数据序列对象。
 */
- (UFChartSeries *)getSeries;

/**
 *	@brief	添加数据点到集合。
 *
 *	@param 	argument 	数据点在X坐标的文本。
 *	@param 	value 	数据值
 *
 *	@return	添加的数据点对象。
 */
- (UFChartSeriesPoint *)addPoint:(NSString *)argument value:(double)value;
- (UFChartSeriesPoint *)addPoint:(NSString *)argument value:(double)value value2:(double)value2;

@end
