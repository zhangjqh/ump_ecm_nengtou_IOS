//
//  UFChartPointSeriesLabel.h
//  UFCharts
//
//  Created by 宋永强 on 11-4-22.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UFChartSeriesLabelBase.h"


@class UFSfxInteger;
/**
 *	@brief	表示 UFChartPointSeriesView 的数据点标签。
 */
@interface UFChartPointSeriesLabel : UFChartSeriesLabelBase {
    NSUInteger _connectorLength;
}

/**
 *	@brief	标签的连接线的长度
 */
@property(nonatomic, assign) NSUInteger connectorLength;


@end
