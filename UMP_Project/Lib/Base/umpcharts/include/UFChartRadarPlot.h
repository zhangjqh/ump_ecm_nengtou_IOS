//
//  Created by 宋永强 on 11-6-2.
//
//  To change this template use File | Settings | File Templates.
//


#import <Foundation/Foundation.h>
#import "UFChartIXYPlot.h"
#import "UFChartPlot.h"
#import "UFSfxDouble.h"

@class UFChartRadarAxis;
@class UFChartRadarAxisX;
@class UFChartRadarAxisY;

@interface UFChartRadarPlot : UFChartPlot <UFChartIXYPlot> {
    UFChartRadarAxisX *_axisX;
    UFChartRadarAxisY *_axisY;
    NSMutableArray *_sbsItems;
    UFSfxDouble *_minXDistance;
}

@property(readonly, strong) UFChartRadarAxisX *axisX;
@property(readonly, strong) UFChartRadarAxisY *axisY;
//
//- (UFChartRadarAxisX *)getAxisX;
//- (UFChartRadarAxisY *)getAxisY;


@end