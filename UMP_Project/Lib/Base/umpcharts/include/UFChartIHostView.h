//
//  Created by 宋永强 on 11-6-23.
//
//  To change this template use File | Settings | File Templates.
//


@class UFChartSeriesPoint;
@class UFChartCustomDrawSeriesEventArgs;
@class UFChartCustomDrawSeriesPointEventArgs;
/**
 *	@brief	公开方法，提供给 UFChartControl 使用以和UFChartView进行交互。
 */
@protocol UFChartIHostView <NSObject>


/**
 *	@brief	在一个 UFChartSeriesPoint 被点击选中时回调此方法。
 *
 *	@param 	seriesPoint 	被点击选中的 UFChartSeriesPoint
 */
- (void)didSeriesPointHited:(UFChartSeriesPoint *)seriesPoint;

/**
 *	@brief	重新绘制图表。
 *
 *	@param 	chart 图表控件。
 */
- (void)didInvalidate;

/**
 *	@brief	自定义 UFChartSeries 绘制属性。
 *
 *	@param 	args 	提供的可自定义的属性。
 */
- (void)customDrawSeries:(UFChartCustomDrawSeriesEventArgs *)args;


/**
 *	@brief	自定义 UFChartSeriesPoint 绘制属性。
 *
 *	@param 	args 	提供的可自定义的属性。
 */
- (void)customDrawSeriesPoint:(UFChartCustomDrawSeriesPointEventArgs *)args;


@end