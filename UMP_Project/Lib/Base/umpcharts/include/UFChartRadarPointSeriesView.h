//
//  Created by 宋永强 on 11-6-8.
//
//  To change this template use File | Settings | File Templates.
//


#import <Foundation/Foundation.h>
#import "UFChartRadarSeriesViewBase.h"
#import "UFChartMarkerBase.h"

@class UFChartPointSeriesViewPainter;

@interface UFChartRadarPointSeriesView : UFChartRadarSeriesViewBase {
    UFChartPointSeriesViewPainter *_painter;
    UFChartMarkerBase *_marker;
}
@property(nonatomic, readonly, strong) UFChartMarkerBase *marker;


@end