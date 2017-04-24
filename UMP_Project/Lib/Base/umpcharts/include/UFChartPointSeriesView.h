//
//  UFChartPointType.h
//  UFCharts2
//
//  Created by 宋永强 on 11-3-18.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "UFChartXYSeriesView.h"
#import "UFSfxPointF.h"
#import "UFChartMarkerBase.h"

@class UFChartPointSeriesViewPainter;

/**
 *	@brief	表示 UFChartSeriesViewPoint 的视图
 */
@interface UFChartPointSeriesView : UFChartXYSeriesView {
    UFSfxPointF * _originalPoint;
    UFChartMarkerBase *_marker;
    UFChartPointSeriesViewPainter *_painter;
}

/**
 *	@brief	获取类型的数据点标记对象。
 */
@property(readonly, strong) UFChartMarkerBase *marker;



@end
