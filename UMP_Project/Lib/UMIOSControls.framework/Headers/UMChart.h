//
//  UMChart.h
//  UMPIOSControlsDemo
//
//  Created by zhangnan on 13-8-19.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import "UFChartEnums.h"
#import "UMBindView.h"
@class UFChartView;
@class UFChartSeries;
@class UFChartSeriesPoint;

@interface SeriesPointHitedObject : NSObject
@property(nonatomic,strong) UFChartView * chartView;
@property(nonatomic,strong) UFChartSeries *series;
@property(nonatomic,strong) UFChartSeriesPoint *seriesPoint;
@end

/**
 *	@brief	UFChartSeries数据绑定
 *
 */
@interface ChartData : NSObject{
    
    NSString * seriseName;
    UFChartSeriesViewType  chartType;
    NSMutableArray *dataArray;
}

/**
 *	@brief	图例名称
 */
@property (nonatomic, strong) NSString * seriseName;

/**
 *	@brief	图表类型
 */
@property (nonatomic, assign) UFChartSeriesViewType  chartType;

/**
 *	@brief	X坐标key
 */
//@property (nonatomic, strong) NSArray * keyArr;

/**
 *	@brief	对应value值
 */
//@property (nonatomic, strong) NSArray * valueArr;
@property(nonatomic, strong) NSMutableArray *dataArray;
@end




@interface UMChart : UMBindView

/*
 外部传入的数据
 */
@property (nonatomic,assign) NSArray *seriseData;


/**
 *	@brief	给Y轴标签添加前缀
 */
@property (nonatomic, assign) NSString * beginText;

/**
 *	@brief	给Y轴标签添加后缀
 */
@property (nonatomic, assign) NSString * endText;

/**
 *	@brief	显示图例的位置信息
 */

/**
 *	@brief
 *  目前支持的外观包含：
 *  <ul>
 *  <li>Left</li>
 *  <li>Top</li>
 *  <li>Bottom</li>
 *  <li>Right</li>
 *  <li>None</li>
 *  </ul>
 *  默认的外观为 None。
 */

@property(nonatomic, assign) NSString * dockStyleName;
/**
 *	@brief	整个chart框架的外观。
 */

/**
 *	@brief
 *  目前支持的外观包含：
 *  <ul>
 *  <li>Dark</li>
 *  <li>DarkFlat</li>
 *  <li>Nature</li>
 *  <li>Chameleon</li>
 *  <li>Fog<li>
 *  </ul>
 *  默认的外观为 Drak。
 */
@property(nonatomic, assign) NSString * appearanceName;

/**
 *	@brief	绘制chart series的调色板。
 */

/**
 *	@brief
 *  目前支持的颜色风格包含：
 *  <ul>
 *  <li>Flow</li>
 *  <li>Nature</li>
 *  <li>Chameleon</li>
 *  <li>Apex</li>
 *  <li>Aspect</li>
 *  <li>Gray</li>
 *  <li>Origin</li>
 *  <li>Hay</li>
 *  <li>BlackWhite</li>
 *  <li>Metro</li>
 *  <li>Crystal</li>
 *  </ul>
 *  默认的颜色风格为 Crystal
 */
@property(nonatomic, assign) NSString * paletteName;

/**
 *	@brief	获取或者设置是否可以使用动画效果。
 *  默认为YES，当前版本在 UFBarChart 和 UFLineChart 支持动画效果。
 */
@property(nonatomic, assign) BOOL useAnimation;
/**
 *	@brief	返回或者设置图表是否允许滚动。
 *  默认为 NO。在图表数据点很多，图表区域无法显示时，可以设置这个属性为YES。
 */
@property(nonatomic, assign) BOOL enableScrolling;

/**
 *	@brief	返回或者设置图表的X轴和Y轴是否互换。
 */
@property(nonatomic, assign) BOOL rotated;
/**
 *	@brief	返回或者设置图表是否可以点击
 */
@property(nonatomic, assign) BOOL isHitTestEnabled;

/**
 *	@brief	返回或者设置图表的X轴标签文字的旋转角度。
 */
@property(nonatomic, assign) float axisXLabelAngle;

/**
 *	@brief	返回或者设置图表的Y轴标签文字的旋转角度。
 */
@property(nonatomic, assign) float axisYLabelAngle;

/**
 *	@brief	在 UFChartSeriesPoint 被点击选中时发生。
 *
 *	@param 	chartView 	点击的UFChartView。
 *	@param 	series 	点击选中点所在的 UFChartSeries。
 *	@param 	seriesPoint 	点击选中的 UFChartSeriesPoint。
 */
- (void)addTarget:(id)target actionForSeriesPointHited:(SEL)action;
//- (void)didSeriesPointHited:(UFChartView *)chartView series:(UFChartSeries *)series seriesPoint:(UFChartSeriesPoint *)seriesPoint;
/**
 *	@brief	自定义 UFChartSeries 的绘制属性。
 *
 *	@param 	chartView 	要绘制的 UFChartView
 *	@param 	args 	提供的可自定义属性。
 */
- (void)addTarget:(id)target actionForCustomDrawSeries:(SEL)action;
//- (void)customDrawSeries:(UFChartView *)chartView args:(UFChartCustomDrawSeriesEventArgs *)args;
/**
 *	@brief	自定义 UFChartSeriesPoint 的绘制属性。
 *
 *	@param 	chartView 	要绘制的 UFChartView
 *	@param 	args 	提供的可自定义属性。
 */
- (void)addTarget:(id)target actionForCustomDrawSeriesPoint:(SEL)action;
//- (void)customDrawSeriesPoint:(UFChartView *)chartView args:(UFChartCustomDrawSeriesPointEventArgs *)args;


@end
