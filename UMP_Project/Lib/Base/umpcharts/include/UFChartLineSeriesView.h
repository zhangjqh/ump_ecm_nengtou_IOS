//
//  UFChartLineType.h
//  UFCharts2
//
//  Created by 宋永强 on 11-3-17.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UFChartPointSeriesView.h"
#import "UFChartPointMarker.h"
#import "UFChartPointSeriesView.h"
#import "UFChartLineStyle.h"

/**
 *	@brief	表示 UFChartSeriesViewLine 的视图
 */
@interface UFChartLineSeriesView : UFChartPointSeriesView {

    UFChartLineStyle *_lineStyle;
}

/**
 *	@brief	获取线样式对象。
 */
@property(readonly, strong) UFChartLineStyle *lineStyle;


/**
 *	@brief	获取线的数据点标记对象。
 *
 *	@return	标记对象。
 */
- (UFChartPointMarker *)getLinePointMarker;


@end
