//
//  UFChartType.h
//  UFCharts2
//
//  Created by 宋永强 on 11-3-13.
//  Copyright 2011 UFIDA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UFChartElement.h"
#import "UMPClient.h"

@class UFChartControl;
@class UFChartSeriesLabelBase;
@class UFChartSeries;
@class UFChartSeriesPointLabelOptions;
@class UFChartDrawCommand;
@class UFChartSeriesPointLabelOptions;
@class UFChartDrawOptions;

/**
 *	@brief	各种图类型视图的基类。
 */
@interface UFChartSeriesView : UFChartElement {
@private
    UFSfxDrawColor *_mainColor;
    UFSfxDrawColor *_secondColor;
    UFSfxDrawColor *_middleColor;
}

/**
 *	@brief	获取视图是否支持多序列并排为一组。
 */
@property(readonly, assign) BOOL isSideBySide;

/**
 *	@brief	获取视图是否支持多序列堆叠显示。
 */
@property(readonly, assign) BOOL isStacked;

/**
 *	@brief	获取视图是否是基于原点。
 */
@property(readonly, assign) BOOL isOriginDependent;

/**
 *	@brief	获取视图中同一个序列中数据点颜色是否每个点一个颜色。
 */
@property(readonly, assign) BOOL isColorPerPoint;

/**
 *	@brief	获取或者设置视图数据点的主颜色。
 */
@property(nonatomic, strong) UFSfxDrawColor *mainColor;

/**
 *	@brief	获取或者设置视图数据点的次颜色。
 */
@property(nonatomic, strong) UFSfxDrawColor *secondColor;

/**
 *	@brief	获取或者设置视图数据点的中间过渡颜色。
 */
@property(nonatomic, strong) UFSfxDrawColor *middleColor;

/**
 *	@brief	获取视图数据点的实际颜色。
 */
@property(readonly, unsafe_unretained) UFSfxDrawColor *actualMainColor;

/**
 *	@brief	获取视图数据点的实际第二颜色。
 */
@property(readonly, unsafe_unretained) UFSfxDrawColor *actualSecondColor;

/**
 *	@brief	获取视图数据点的实际第三颜色。
 */
@property(readonly, unsafe_unretained) UFSfxDrawColor *actualMiddleColor;

/**
 *	@brief	获取图表控件。
 */
@property(readonly, unsafe_unretained) UFChartControl *chart;

/**
 *	@brief	获取数据序列。
 */
@property(readonly, unsafe_unretained) UFChartSeries *series;



/**
 *	@brief	获取视图和 type 的兼容性。
 *
 *	@param 	type 	要测试的视图类型。
 *
 *	@return	YES表示兼容。
 */
- (BOOL)isCompatible:(UFChartSeriesView *)type;


/**
 *	@brief	获取视图的名称。
 *
 *	@return	视图名称
 */
- (NSString *)name;

- (UFSfxDrawColor *)getPointColor:(int)pointIndex;

- (UFSfxDrawColor *)getPointSecondColor:(int)pointIndex;

- (UFSfxDrawColor *)getPointMiddleColor:(int)pointIndex;

@end


