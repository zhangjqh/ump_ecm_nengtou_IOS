//
//  UFChartColumnType.h
//  UFCharts2
//
//  Created by 宋永强 on 11-3-14.
//  Copyright 2011 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UFChartXYSeriesView.h"
#import "UFChartBorderStyle.h"
#import "UFChartFillStyle.h"

/**
 *	@brief	表示 UFChartSeriesViewBar 的视图
 */
@interface UFChartBarSeriesView : UFChartXYSeriesView {

    UFChartBorderStyle *_borderStyle;
    UFChartFillStyle *_fillStyle;
}

/**
 *	@brief	获取边框样式对象。
 */
@property(readonly, strong) UFChartBorderStyle *borderStyle;

/**
 *	@brief	获取填充样式对象。
 */
@property(readonly, strong) UFChartFillStyle *fillStyle;


@end
