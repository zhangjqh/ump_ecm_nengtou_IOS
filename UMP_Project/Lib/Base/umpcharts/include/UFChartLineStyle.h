//
//  UFChartLineStyle.h
//  UFCharts
//
//  Created by 宋永强 on 11-4-21.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UFChartElement.h"
#import "UFSfxDrawColor.h"

/**
 *	@brief	获取或设置线的样式。
 */
@interface UFChartLineStyle : UFChartElement {
    NSUInteger _thickness;
    UFSfxDrawColor *_color;
    BOOL _visible;
}
- (id)initWith:(UFChartElement *)owner visible:(BOOL)visible color:(UFSfxDrawColor *)color;


/**
 *	@brief	获取或者设置线的宽度（以像素为单位）。
 */
@property(readwrite, assign) NSUInteger thickness;

/**
 *	@brief	获取或者设置线的颜色。
 */
@property(nonatomic, strong) UFSfxDrawColor *color;

/**
 *	@brief	获取或者设置线是否可见。
 */
@property(nonatomic, assign) BOOL visible;



@end
