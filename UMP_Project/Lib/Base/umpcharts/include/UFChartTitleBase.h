//
//  UFChartTitleBase.h
//  UFCharts
//
//  Created by 宋永强 on 11-4-27.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UFChartElement.h"

@class UFSfxDrawFont;
@class UFSfxDrawColor;
@class UFChartMainAppearance;
@class UFChartTitleBaseAppearance;

/**
 *	@brief	图表中的标题基类
 */
@interface UFChartTitleBase : UFChartElement {
    BOOL _visible;
    BOOL _antialiasing;
    float _angle;
    UFSfxDrawFont *_font;
    UFSfxDrawColor *_textColor;
}

/**
 *	@brief	获取或者设置是否可见。
 */
@property(nonatomic, assign) BOOL visible;

/**
 *	@brief	获取或者设置文本在绘制时是否使用抗锯齿。
 */
@property(nonatomic, assign) BOOL antialiasing;

/**
 *	@brief	获取或者设置标题的字体。
 */
@property(nonatomic, strong) UFSfxDrawFont *font;

/**
 *	@brief	获取或者设置标题的文本颜色。
 */
@property(nonatomic, strong) UFSfxDrawColor *textColor;

/**
 *	@brief	获取或者设置标题文本的旋转角度。
 */
@property(nonatomic, assign) float angle;


- (UFSfxDrawColor *)getActualTextColor;

- (UFChartTitleBaseAppearance *)getAppearance:(UFChartMainAppearance *)actualAppearance;

- (BOOL)getDefaultVisible;

- (BOOL)getDefaultAntialiasing;

- (UFSfxDrawFont *)getDefaultFont;


@end
