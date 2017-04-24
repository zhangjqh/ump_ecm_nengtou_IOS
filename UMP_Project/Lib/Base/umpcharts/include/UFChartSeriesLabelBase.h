//
//  UFChartSeriesLabelBase.h
//  UFCharts
//
//  Created by 宋永强 on 11-4-22.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UFChartElement.h"
#import "UFChartBorderStyle.h"
#import "UFChartFillStyle.h"
#import "UFChartLineStyle.h"
#import "UFChartEnums.h"
#import "UFChartTextPropertiesProvider.h"

@class UFChartSeriesView;
@class UFChartSeries;

/**
 *	@brief	表示 UFChartSeriesView 的数据点标签。
 */
@interface UFChartSeriesLabelBase : UFChartElement <UFChartTextPropertiesProvider> {
    BOOL _visible;
    UFSfxDrawColor *_backColor;
    UFSfxDrawColor *_textColor;
    UFSfxDrawColor *_lineColor;
    UFChartBorderStyle *_borderStyle;
    UFChartFillStyle *_fillStyle;
    UFSfxDrawFont *_font;
    UFSfxAlignment _hAlignment;
    UFSfxAlignment _vAlignment;
    float _angle;
    BOOL _lineVisible;
    UFChartLineStyle *_lineStyle;
}

/**
 *	@brief	获取标签的边框样式。
 */
@property(nonatomic, readonly, strong) UFChartBorderStyle *borderStyle;

/**
 *	@brief	获取标签的填充样式。
 */
@property(nonatomic, readonly, strong) UFChartFillStyle *fillStyle;

/**
 *	@brief	获取标签的连接线样式。
 */
@property(nonatomic, readonly, strong) UFChartLineStyle *lineStyle;


/**
 *	@brief	获取或者设置标签的连接线颜色。
 */
@property(nonatomic, strong) UFSfxDrawColor *lineColor;


/**
 *	@brief	获取或者设置标签连接线是否可见。
 */
@property(nonatomic, assign) BOOL lineVisible;

/**
 *	@brief	获取或者设置标签是否可见。
 */
@property(nonatomic, assign) BOOL visible;

/**
 *	@brief	获取或者设置标签的背景颜色。
 */
@property(nonatomic, strong) UFSfxDrawColor *backColor;

/**
 *	@brief	获取或者设置标签的文本颜色。
 */
@property(nonatomic, strong) UFSfxDrawColor *textColor;

/**
 *	@brief	获取或者设置标签文本字体。
 */
@property(nonatomic, strong) UFSfxDrawFont *font;

/**
 *	@brief	获取或者设置标签文本水平对齐方式。
 */
@property(nonatomic, assign) UFSfxAlignment hAlignment;

/**
 *	@brief	获取或者设置标签文本垂直对齐方式。
 */
@property(nonatomic, assign) UFSfxAlignment vAlignment;

/**
 *	@brief	获取或者设置标签旋转角度。
 */
@property(nonatomic, assign) float angle;


/**
 *	@brief	初始化实例
 *
 *	@param 	owner 	序列的视图对象。
 *
 *	@return	实例
 */
- (id)initWithSeriesView:(UFChartSeriesView *)owner;


@end
