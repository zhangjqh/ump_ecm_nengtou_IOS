//
//  UFChartView.h
//  UFCharts2
//
//  Created by 宋永强 on 11-3-13.
//  Copyright 2011 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "UFChartIHostView.h"

@protocol UFChartViewDelegate;
@class UFChartControl;
@class UFChartCustomDrawSeriesEventArgs;
@class UFChartCustomDrawSeriesPointEventArgs;
@class UFChartSeries;
@class UFChartSeriesPoint;

/**
 *	@brief	图表的UI控件对象。
 */
@interface UFChartView : UIView <UFChartIHostView> {
@private
//    UIPanGestureRecognizer * panGesture;
    __unsafe_unretained id <UFChartViewDelegate> _delegate;
    UFChartControl *_chart;
    float _lastScrollPoint;
    BOOL _useAnimation;
    CGSize _cacheSize;
}

/**
 *	@brief	获取图表控件。
 */
@property(readonly, strong) UFChartControl *chart;

/**
 *	@brief	获取或者设置图表的回调方法处理对象。
 */
@property(nonatomic, unsafe_unretained) id <UFChartViewDelegate> delegate;

@end

/**
 *	@brief	提供 UFChartView 的回调处理定义。
 */
@protocol UFChartViewDelegate <NSObject>

@optional

- (void)onPlotInitialize:(UFChartView *)chartView;

/**
 *	@brief	在 UFChartView 绘制完成时发生。
 *
 *	@param 	chartView 	绘制的 UFChartView。
 */
- (void)didDrawChart:(UFChartView *)chartView;


/**
 *	@brief	在 UFChartSeriesPoint 被点击选中时发生。
 *
 *	@param 	chartView 	点击的UFChartView。
 *	@param 	series 	点击选中点所在的 UFChartSeries。
 *	@param 	seriesPoint 	点击选中的 UFChartSeriesPoint。
 */
- (void)didSeriesPointHited:(UFChartView *)chartView series:(UFChartSeries *)series seriesPoint:(UFChartSeriesPoint *)seriesPoint;

/**
 *	@brief	自定义 UFChartSeries 的绘制属性。
 *
 *	@param 	chartView 	要绘制的 UFChartView
 *	@param 	args 	提供的可自定义属性。
 */
- (void)customDrawSeries:(UFChartView *)chartView args:(UFChartCustomDrawSeriesEventArgs *)args;

/**
 *	@brief	自定义 UFChartSeriesPoint 的绘制属性。
 *
 *	@param 	chartView 	要绘制的 UFChartView
 *	@param 	args 	提供的可自定义属性。
 */
- (void)customDrawSeriesPoint:(UFChartView *)chartView args:(UFChartCustomDrawSeriesPointEventArgs *)args;


@end
