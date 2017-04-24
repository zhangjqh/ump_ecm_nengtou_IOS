//
//  Created by 宋永强 on 11-6-3.
//
//  To change this template use File | Settings | File Templates.
//


#import <Foundation/Foundation.h>
#import "UFChartIXYSeriesView.h"
#import "UFChartSeriesView.h"
#import "UFChartRadarAxisX.h"
#import "UFChartRadarAxisY.h"
#import "UFChartSeriesPoint.h"

@class UFChartSeriesPointLayout;
@class UFChartRadarPlotRenderContext;

@interface UFChartRadarSeriesViewBase : UFChartSeriesView <UFChartIXYSeriesView> {
    BOOL _colorEach;
    __unsafe_unretained UFChartRadarAxisX *_axisX;
    __unsafe_unretained UFChartRadarAxisY *_axisY;
    UFChartRadarPlotRenderContext *_renderContext;
}

@property(nonatomic, assign) BOOL colorEach;
@property(nonatomic, assign) UFChartRadarAxisX *axisX;
@property(nonatomic, assign) UFChartRadarAxisY *axisY;

- (UFChartSeriesPointLayout *)calculateSeriesPointLayout:(UFChartSeriesPoint *)seriesPoint;
@end