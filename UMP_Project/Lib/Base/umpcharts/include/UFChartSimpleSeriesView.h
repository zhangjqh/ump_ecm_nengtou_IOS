//
//  Created by 宋永强 on 11-6-7.
//
//  To change this template use File | Settings | File Templates.
//


#import <Foundation/Foundation.h>
#import "UFChartSeriesView.h"
#import "UFSfxDrawColor.h"
#import "UFChartDrawOptions.h"

@class UFChartRenderContext;
@class UFChartSeriesData;
@class UFChartSeriesPoint;

@interface UFChartSimpleSeriesView : UFChartSeriesView {
    UFChartRenderContext *_renderContext;
}
@end

@interface UFChartSimpleSeriesView (Internal)

- (NSArray *)calculateSeriesLabelsLayout:(UFChartSeriesData *)seriesData pointLayouts:(NSArray *)pointLayouts;

- (UFSfxDrawColor *)getAcutalDrawColor:(UFChartDrawOptions *)drawOptions seriesPoint:(UFChartSeriesPoint *)seriesPoint;

- (NSArray *)calculatePointsLayout:(UFChartSeriesData *)seriesData;


@end