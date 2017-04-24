//
//  Created by 宋永强 on 11-6-8.
//
//  To change this template use File | Settings | File Templates.
//


#import <Foundation/Foundation.h>

#import "UFChartRadarPointSeriesView.h"
#import "UFChartPointMarker.h"
#import "UFChartLineStyle.h"

@interface UFChartRadarLineSeriesView : UFChartRadarPointSeriesView {
    UFChartLineStyle *_lineStyle;
}

@property(readonly, strong) UFChartLineStyle *lineStyle;

- (UFChartPointMarker *)getLinePointMarker;
@end