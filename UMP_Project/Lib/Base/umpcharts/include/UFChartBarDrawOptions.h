//
//  UFChartBarDrawOptions.h
//  UFCharts
//
//  Created by 宋永强 on 11-4-20.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UFChartDrawOptions.h"
#import "UFChartBorderStyle.h"
#import "UFChartFillStyle.h"

/**
 *	@brief	表示 UFChartSeriesViewBar 的绘制属性。
 */
@interface UFChartBarDrawOptions : UFChartDrawOptions {

    UFChartBorderStyle *_borderStyle;
    UFChartFillStyle *_fillStyle;
}

/**
 *	@brief	获取边框样式。
 */
@property(readonly, strong) UFChartBorderStyle *borderStyle;

/**
 *	@brief	获取填充样式。
 */
@property(readonly, strong) UFChartFillStyle *fillStyle;


@end
