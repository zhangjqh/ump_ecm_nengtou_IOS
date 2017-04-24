//
//  UFChartCustomDrawSeriesEventArgs.h
//  UFCharts
//
//  Created by 宋永强 on 11-4-20.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "UFChartSeries.h"
#import "UFSfxSizeF.h"
#import "UFChartDrawOptions.h"
#import "UFSfxDrawColor.h"
#import "UFSfxDrawFont.h"

@class UFChartSeries;

/**
 *	@brief	提供 UFChartSeries 绘制自定义属性。
 */
@interface UFChartCustomDrawSeriesEventArgs : NSObject {
    __unsafe_unretained UFChartSeries *_series;
    UFChartDrawOptions *_drawOptions;
    UFChartDrawOptions *_legendDrawOptions;
    BOOL _legendTextVisible;
    NSString *_legendText;
    UFSfxDrawColor *_legendTextColor;
    UFSfxDrawFont *_legendFont;
    UIImage *_legendMarkerImage;
    UFSfxSizeF *_legendMakerSize;
    BOOL _legendMarkerVisible;
}

/**
 *	@brief	获取数据绘制属性对象。
 */
@property(readonly, strong) UFChartDrawOptions *drawOptions;

/**
 *	@brief	获取图例绘制属性对象。
 */
@property(readonly, strong) UFChartDrawOptions *legendDrawOptions;

/**
 *	@brief	获取要绘制的 UFChartSeries 。
 */
@property(readonly, unsafe_unretained) UFChartSeries *series;

/**
 *	@brief	获取图例文本字体。
 */
@property(nonatomic, readonly, strong) UFSfxDrawFont *legendFont;

/**
 *	@brief	获取或者设置图例文本是否可见。
 */
@property(nonatomic, assign) BOOL legendTextVisible;

/**
 *	@brief	获取或者设置图例的文本。
 */
@property(nonatomic, strong) NSString *legendText;

/**
 *	@brief	获取或者设置图例的文本颜色。
 */
@property(nonatomic, strong) UFSfxDrawColor *legendTextColor;

/**
 *	@brief	获取或设置图例的标记图片。
 */
@property(nonatomic, strong) UIImage *legendMarkerImage;

/**
 *	@brief	获取或者设置图例的标记大小。
 */
@property(nonatomic, strong) UFSfxSizeF *legendMakerSize;

/**
 *	@brief	获取或者设置图例标记是否可见。
 */
@property(nonatomic, assign) BOOL legendMarkerVisible;


- (id)initWith:(UFChartSeries *)series seriesDrawOptions:(UFChartDrawOptions *)drawOptions legendDrawOptions:(UFChartDrawOptions *)legendDrawOptions legendTextVisible:(BOOL)legendTextVisible legendText:(NSString *)legendText legendTextColor:(UFSfxDrawColor *)legendTextColor font:(UFSfxDrawFont *)font legendMarkerImage:(UIImage *)legendMarkerImage legendMarkerSize:(UFSfxSizeF *)legendMarkerSize legendMarkerVisible:(BOOL)legendMarkerVisible;
@end
