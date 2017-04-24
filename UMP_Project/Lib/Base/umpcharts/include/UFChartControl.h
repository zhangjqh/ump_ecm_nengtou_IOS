//
//  UFChartEngine.h
//  UFCharts
//
//  Created by 宋永强 on 11-6-17.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UFChartElement.h"
#import "UFChartLegend.h"
#import "UFChartPlot.h"
#import "UFChartSeriesCollection.h"
#import "UFChartTitleCollection.h"
#import "UFChartMainAppearance.h"
#import "UFChartPalette.h"

@class UFChartCustomDrawSeriesPointEventArgs;
@class UFChartSeriesPoint;
@protocol UFChartIHostView;

/**
 *	@brief	提供UFCharts的图表控件的属性和方法。
 *  UFChartControl 不是一个UI控件。
 *  当前版本支持的图表类型 @see UFChartSeriesViewType
 */
@interface UFChartControl : UFChartElement {
@private
    __unsafe_unretained id <UFChartIHostView> _hostView;
    BOOL _isHitTestEnabled;
    NSUInteger _elemetsSpacing;
    /*
     * 绘制图表的数据和轴的区域，plot会根据数据序列的ViewType自动进行判断。
     */
    UFChartPlot *_plot;
    UFChartLegend *_legend;
    UFChartTitleCollection *_titles;
    UFChartSeriesCollection *_dataSeries;
    UFChartMainAppearance *_appearance;
    UFChartPalette *_palette;
    NSUInteger _samplePointCount;
    BOOL _useSamplePoints;
    NSMutableArray *_highlightPoints;

    BOOL _useAnimation;
    
    BOOL _useAppearanceBackColor;
}

@property(nonatomic, assign) BOOL useAppearanceBackColor;

/**
 *	@brief	获取或者设置是否可以使用动画效果。
 *  默认为YES，当前版本在 UFChartSeriesViewBar 和 UFChartSeriesViewLine 支持动画效果。
 */
@property(nonatomic, assign) BOOL useAnimation;

/*
 * @brief  获取图表区域。系统会根据数据序列的ViewType自动进行判断。
*/
@property(nonatomic, readonly, strong) UFChartPlot *plot;

/**
 *	@brief	获取图表的图例对象。
 */
@property(nonatomic, readonly, strong) UFChartLegend *legend;

/**
 *	@brief	获取图表的数据序列集合对象。
 */
@property(readonly, strong) UFChartSeriesCollection *dataSeries;

/**
 *	@brief	获取图表的标题集合对象
 */
@property(readonly, strong) UFChartTitleCollection *titles;

/**
 *	@brief	获取或者设置图表是否支持坐标点测试。
 *  如果想响应图表中的元素点击，这需要设置该属性为 YES。默认为 NO。
 */
@property(readwrite, assign) BOOL isHitTestEnabled;

/**
 *	@brief	获取或者设置图表中坐标轴、标题、图例和数据绘制区域之间的间距大小。
 */
@property(readwrite, assign) NSUInteger elemetsSpacing;

/**
 *	@brief	获取或者设置图表的外观名称。
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
@property(nonatomic, copy) NSString *appearanceName;

/**
 *	@brief	获取或者设置图表的外观。
 */
@property(nonatomic, strong) UFChartMainAppearance *appearance;

/**
 *	@brief	获取或者设置图表数据绘制的颜色风格名称
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
@property(nonatomic, copy) NSString *paletteName;

/**
 *	@brief	获取或者设置图表数据绘制的颜色风格
 */
@property(nonatomic, strong) UFChartPalette *palette;

/**
 *	@brief	获取或者设置示例数据点的数量。
 */
@property(nonatomic, assign) NSUInteger samplePointCount;

/**
 *	@brief	获取是否使用示例数据
 */
@property(readonly, assign) BOOL isUseSamplePoints;


/**
 *	@brief	返回图表控件的拥有者。
 */
@property(nonatomic, unsafe_unretained, readonly) id <UFChartIHostView> hostView;


/**
 *	@brief	初始化 UFChartControl 类的实例。
 *
 *	@param 	hostView 	拥有者
 *
 *	@return	实例
 */
- (id)initWithHostView:(id <UFChartIHostView>)hostView;


/**
 *	@brief	清除示例数据。
 */
- (void)clearSamplePoints;


/**
 *	@brief	创建示例数据。
 */
- (void)createSamplePoints;


/**
 *	@brief	获取series在x，y坐标点最匹配的数据点对象。
 *
 *	@param 	series 	数据序列，可以为nil。这时系统会自动判断并且进行匹配点的选择。
 *	@param 	x 	x坐标
 *	@param 	y 	y坐标
 *
 *	@return	找到的最匹配的数据点。如果没有找到则返回nil。
 */
- (UFChartSeriesPoint *)bestMatchPointInSeries:(UFChartSeries *)series x:(float)x y:(float)y;


/**
 *	@brief	获取x坐标点匹配的所有数据点。
 *
 *	@param 	x 	x坐标
 *
 *	@return	找到的所有匹配的数据点。
 */
- (NSArray *)hitTestX:(float)x;


/**
 *	@brief	获取y坐标点匹配的所有数据点。
 *
 *	@param 	y 	y坐标
 *
 *	@return	找到的所有匹配的数据点。
 */
- (NSArray *)hitTestY:(float)y;


/**
 *	@brief	获取x，y坐标点匹配的所有数据点。
 *
 *	@param 	x 	x坐标
 *	@param 	y 	y坐标
 *
 *	@return	找到的所有匹配的数据点。
 */
- (NSArray *)hitTest:(float)x y:(float)y;


/**
 *	@brief	获取所有高亮的数据点
 *
 *	@return	<#return value description#>
 */
- (NSArray *)getAllHighlightPoints;


/**
 *	@brief	获取是否存在高亮选中的数据点。
 *
 *	@return	YES表示存在
 */
- (BOOL)hasHighlightPoints;


/**
 *	@brief	清除所有数据点的高亮选中状态。
 */
- (void)removeAllPointHighlighting;


/**
 *	@brief	设置一个数据点的高亮选中状态。
 *
 *	@param 	point 	数据点
 *	@param 	highlight 	YES表示设置为高亮选中，NO表示取消高亮选中。
 */
- (void)setPointHighlighting:(UFChartSeriesPoint *)point highlight:(BOOL)highlight;


/**
 *	@brief	设置一组数据点的高亮选中状态。
 *
 *	@param 	points 	数据点
 *	@param 	highlight YES表示设置为高亮选中，NO表示取消高亮选中。
 */
- (void)setPointsHighlighting:(NSArray *)points highlight:(BOOL)highlight;

/**
 *	@brief	返回数据点的占据位置,位置坐标从 UFChartView 的左上角坐标(0,0)算起。
 *
 *	@param 	seriesPoint 	seriesPoint
 *
 *	@return	<#return value description#>
 */
- (UFSfxRectF *)getSeriesPointBounds:(UFChartSeriesPoint *)seriesPoint;

+ (void)setDefaultPaletteName:(NSString *)paletteName;

+ (NSString *)defaultPaletteName;

@end