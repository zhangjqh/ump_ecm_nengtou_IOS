//
//  Created by 宋永强 on 11-6-8.
//
//  To change this template use File | Settings | File Templates.
//


#import <Foundation/Foundation.h>

#import "UFChartRadarLineSeriesView.h"
#import "UFChartBorderStyle.h"
#import "UFChartFillStyle.h"
#import "UFChartAppearanceItems.h"

@interface UFChartRadarAreaSeriesView : UFChartRadarLineSeriesView {
    UFChartFillStyle *_fillStyle;
    UFChartBorderStyle *_borderStyle;
    NSUInteger _opacity;
}

@property(readonly, strong) UFChartAreaTypeAppearance *appearance;
@property(readonly, strong) UFChartFillStyle *actualFillStyle;
@property(readonly, strong) UFChartFillStyle *fillStyle;
@property(readonly, strong) UFChartBorderStyle *borderStyle;
@property(readwrite, assign) NSUInteger opacity;

@end