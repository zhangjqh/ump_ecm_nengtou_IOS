//
//  UFChartMarkerBase.h
//  UFCharts
//
//  Created by 宋永强 on 11-4-20.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UFChartElement.h"
#import "UFChartEnums.h"
#import "UFChartFillStyle.h"
#import "UFChartBorderStyle.h"

/**
 *	@brief	提供图表中的一个点的标记基类。
 */
@interface UFChartMarkerBase : UFChartElement {

    UFChartFillStyle *_fillStyle;
    UFChartBorderStyle *_borderStyle;
}

/**
 *	@brief	获取点标记的填充样式。
 */
@property(readonly, strong) UFChartFillStyle *fillStyle;

/**
 *	@brief	获取点标记的边框样式。
 */
@property(readonly, strong) UFChartBorderStyle *borderStyle;


@end
