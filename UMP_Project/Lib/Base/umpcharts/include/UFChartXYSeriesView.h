//
//  Created by 宋永强 on 11-4-19.
//
//  To change this template use File | Settings | File Templates.
//


#import <Foundation/Foundation.h>
#import "UFChartSeriesView.h"
#import "UFChartAxis2D.h"

@class UFChartXYPlotRenderContext;

/**
 *	@brief	XY轴类型图的视图基类。
 */
@interface UFChartXYSeriesView : UFChartSeriesView {

    UFChartAxis2D *_axisX;
    UFChartAxis2D *_axisY;
    UFChartXYPlotRenderContext *_renderContext;
    BOOL _colorEach;
}

/**
 *	@brief	获取或者设置视图的数据点颜色是否每个都取不同颜色。
 */
@property(nonatomic, assign) BOOL colorEach;

/**
 *	@brief	获取视图实际的X坐标轴
 *
 *	@return	坐标轴，如果图表是旋转的，则返回Y坐标轴。
 */
- (UFChartAxis2D *)actualAxisX;

/**
 *	@brief	获取视图实际的Y坐标轴
 *
 *	@return	坐标轴，如果图表是旋转的，则返回X坐标轴。
 */
- (UFChartAxis2D *)actualAxisY;

@end

@interface UFChartXYSeriesView ()

/**
 *	@brief	获取或者设置XY轴视图的X坐标轴。
 */
@property(nonatomic, strong) UFChartAxis2D *axisX;

/**
 *	@brief	获取或者设置XY轴视图的Y坐标轴。
 */
@property(nonatomic, strong) UFChartAxis2D *axisY;

@end