//
//  UFChartAxis2D.h
//  UFCharts
//
//  Created by 宋永强 on 11-5-8.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UFChartAxisBase.h"

@class UFChartXYPlot;
@class UFChartAxisAppearance;
@class UFChartTitleBase;
@class UFChartAxisTitle;

/**
 *	@brief	表示XY轴类型图表中的轴基类。
 */
@interface UFChartAxis2D : UFChartAxisBase {

    BOOL _visible;
    UFSfxDrawColor *_color;
    NSUInteger _thickness;
    UFChartAxisTitle * _title;
}

/**
 *	@brief	获取或者设置轴是否可见。
 */
@property(nonatomic, assign) BOOL visible;

/**
 *	@brief	获取或者设置轴的线的颜色。
 */
@property(nonatomic, strong) UFSfxDrawColor *color;

/**
 *	@brief	获取或者设置轴的线的宽度（以像素为单位）。
 */
@property(nonatomic, assign) NSUInteger thickness;

/**
 *	@brief	获取轴的标题对象。
 */
@property(nonatomic, readonly, strong) UFChartAxisTitle *title;

- (UFChartXYPlot *)getXYPlot;

- (UFChartAxisAppearance *)getAppearance;

@end
