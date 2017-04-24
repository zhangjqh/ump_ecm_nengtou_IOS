//
//  UFChartBorderStyle.h
//  UFCharts
//
//  Created by 宋永强 on 11-4-20.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UFChartElement.h"
#import "UMPClient.h"

@class UFChartDrawCommand;

/**
 *	@brief	表示 UFChartControl 中各种图的元素的边框样式。
 */
@interface UFChartBorderStyle : UFChartElement {

    UFSfxDrawColor *_color;
    BOOL _visible;
    NSUInteger _thickness;
}

/**
 *	@brief	获取或者设置边框的颜色。
 */
@property(nonatomic, strong) UFSfxDrawColor *color;

/**
 *	@brief	获取或者设置边框是否可见。
 */
@property(nonatomic, assign) BOOL visible;

/**
 *	@brief	获取或者设置边框线的宽度（以像素为单位）。
 */
@property(nonatomic, assign) NSUInteger thickness;

@end
