//
//  UFChartLegend.h
//  UFCharts
//
//  Created by 宋永强 on 11-4-28.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UFChartEnums.h"
#import "UFChartIDockableLayoutItem.h"
#import "UFSfxDrawFont.h"
#import "UFSfxSizeF.h"
#import "UFChartElement.h"
#import "UFChartFillStyle.h"
#import "UFChartBorderStyle.h"
#import "UFSfxThickness.h"
#import "UFSfxRectF.h"
#import "UFSfxDrawColor.h"
#import "UFChartCollection.h"

@class UFChartControl;

/**
 *	@brief	提供管理 UFChartControl 中的图例的属性和方法。
 */
@interface UFChartLegend : UFChartElement <UFChartIDockableLayoutItem> {

    BOOL _visible;
    NSUInteger _textOffset;
    NSUInteger _verticalIndent;
    NSUInteger _horizontalIndent;
    UFSfxDockStyle _dockStyle;
    BOOL _markerVisible;
    UFSfxSizeF *_markerSize;
    BOOL _textVisible;
    UFSfxDrawFont *_font;
    UFSfxThickness *_padding;
    UFChartFillStyle *_fillStyle;
    UFChartBorderStyle *_borderStyle;
    UFSfxDrawColor *_textColor;
    UFSfxDrawColor *_backColor;
    UFChartCollection *_itemGroups;
    UFSfxSizeF *_legendSize;
    UFSfxRectF *_bounds;
    __unsafe_unretained UFChartControl *_chart;
}

/**
* @brief 返回或者设置图例的停靠位置，默认停靠在右边。
*/
@property(readwrite, assign) UFSfxDockStyle dockStyle;

/**
* @brief 返回或者设置图例的文本颜色
*/
@property(nonatomic, strong) UFSfxDrawColor *textColor;

/**
* @brief 返回或者设置图例文本的字体
*/
@property(nonatomic, strong) UFSfxDrawFont *font;

/**
* @brief 返回或者设置图例的背景颜色
*/
@property(nonatomic, strong) UFSfxDrawColor *backColor;

/**
* @brief 返回图例的背景填充样式
*/
@property(readonly, strong) UFChartFillStyle *fillStyle;

/**
* @brief 返回图例的边框样式
*/
@property(readonly, strong) UFChartBorderStyle *borderStyle;

/**
* @brief 返回或者设置图例的文本是否可见，默认为YES
*/
@property(readwrite, assign) BOOL textVisible;

/**
* @brief 返回或者设置是否显示图例在图表中，默认为YES
*/
@property(readwrite, assign) BOOL visible;

/**
 *	@brief	返回或者设置图例中项目之间垂直距离。
 */
@property(readwrite, assign) NSUInteger verticalIndent;

/**
 *	@brief	返回或者设置图例中项目之间水平距离。
 */
@property(readwrite, assign) NSUInteger horizontalIndent;

/**
 *	@brief	返回或者设置图例中项目的图形的大小。
 */
@property(nonatomic, strong) UFSfxSizeF *markerSize;

/**
 *	@brief	返回或者设置图例中项目的图形是否可见。
 */
@property(readwrite, assign) BOOL markerVisible;

/**
 *	@brief	返回或者设置图例中项目的文本和图形之间的间距。
 */
@property(readwrite, assign) NSUInteger textOffset;


/**
 *	@brief	返回或者设置图例所在的 UFChartControl 对象。
 */
@property(readonly, assign) UFChartControl *chart;


/**
 *	@brief	返回图例的边距。
 */
@property(readonly, strong) UFSfxThickness *padding;


- (id)initWithChart:(UFChartControl *)chart;

- (UFSfxDrawColor *)getActualTextColor;

@end
