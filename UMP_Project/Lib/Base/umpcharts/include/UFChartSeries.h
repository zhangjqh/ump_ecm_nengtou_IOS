//
//  UFChartSeries.h
//  UFCharts2
//
//  Created by 宋永强 on 11-3-13.
//  Copyright 2011 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UFChartElement.h"
#import "UFChartEnums.h"

@protocol UFChartISeriesPointLabelOptions;
@class UFChartControl;
@class UFChartPlot;
@class UFChartSeriesView;
@class UFChartSeriesPointCollection;
@class UFChartLegend;
@class UFChartCustomDrawSeriesEventArgs;
@class UFChartSeriesData;
@class UFChartDoubleRange;
@class UFSfxRectF;
@class UFChartDrawCommand;
@class UFChartDrawOptions;
@class UFChartSeriesPointData;
@class UFChartSeriesLabelBase;
@class UFChartSeriesLabelBase;
@class UFChartSeriesPointCollection;

/**
 *	@brief	图表中存储数据点的序列。
 */
@interface UFChartSeries : UFChartElement {
@private
    NSString *_stackGroup;
    UFChartDoubleRange *_xRange;
    UFChartDoubleRange *_yRange;
    UFChartSeriesData *_seriesData;
    UFChartSeriesPointCollection *_labelSamplePoints;
    BOOL _showInLegend;
    UFChartArgumentType _argumentType;
    NSString *_name;
    UFChartSeriesViewType _viewType;
    UFChartSeriesLabelBase *_label;
    UFChartSeriesView *_seriesView;
    UFChartSeriesPointCollection *_points;
    id <UFChartISeriesPointLabelOptions> _pointLabelOptions;
    NSString *_legendText;
}

/**
 *	@brief	获取或设置一个标志，该标志指示是否在图例中显示项。
 */
@property(nonatomic, assign) BOOL showInLegend;

/**
 *	@brief	获取或者返回数据堆叠分组名称。
 *
 *  相同名称的数据序列会依次堆叠显示。
 */
@property(nonatomic, copy) NSString *stackGroup;

/**
 *	@brief	获取或者设置数据序列的名称。
 */
@property(nonatomic, readonly, copy) NSString *name;

/**
 *	@brief	获取数据序列中数据点标签文本的显示属性。
 */
@property(nonatomic, readonly, strong) id <UFChartISeriesPointLabelOptions> pointLabelOptions;

/**
 *	@brief	获取序列关联的显示视图对象。
 */
@property(nonatomic, readonly, strong) UFChartSeriesView *seriesView;

/**
 *	@brief	获取序列的标签对象。
 */
@property(nonatomic, readonly, strong) UFChartSeriesLabelBase *label;

/**
 *	@brief	获取数据序列的视图类型。
 */
@property(nonatomic, readonly, assign) UFChartSeriesViewType viewType;

/**
 *	@brief	获取序列的数据点集合。
 */
@property(nonatomic, readonly, strong) UFChartSeriesPointCollection *points;

/**
 *	@brief	获取或设置图例中项的文本。
 */
@property(nonatomic, copy) NSString *legendText;

/**
 *	@brief	获取序列的图表控件对象。
 */
@property(readonly, strong) UFChartControl *chart;


- (id)initWithViewType:(UFChartSeriesViewType)viewType;

- (id)initWithName:(NSString *)name viewType:(UFChartSeriesViewType)viewType;

/**
 *	@brief	生成示例数据。
 */
- (void)generateSamplePoints;


/**
 *	@brief	清除示例数据。
 */
- (void)clearSamplePoints;


@end

#pragma 内部调用方法，开发人员请不要使用。

@interface UFChartSeries (Internal)

@property(readonly) Class plotType;
@property(readonly) NSString *actualLegendText;
@property(nonatomic, readonly) UFChartDoubleRange *xRange;
@property(nonatomic, readonly) UFChartDoubleRange *yRange;

- (UFChartSeriesData *)createSeriesData;

- (NSArray *)getActualPoints;

- (NSString *)getActualLegendText;

- (UFChartDrawCommand *)createLegendMarkerDrawCommand:(UFSfxRectF *)rect seriesPointDrawOptions:(UFChartDrawOptions *)seriesPointDrawOptions seriesDrawOptions:(UFChartDrawOptions *)seriesDrawOptions seriesData:(UFChartSeriesData *)seriesData seriesPointData:(UFChartSeriesPointData *)seriesPointData;

@end