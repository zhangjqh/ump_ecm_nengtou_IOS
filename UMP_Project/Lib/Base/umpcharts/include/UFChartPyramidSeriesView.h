//
//  Created by 宋永强 on 11-6-8.
//
//  To change this template use File | Settings | File Templates.
//


#import <Foundation/Foundation.h>
#import "UFChartEnums.h"
#import "UFChartSimpleSeriesView.h"
#import "UFChartFillStyle.h"
#import "UFChartBorderStyle.h"
#import "UFSfxRectF.h"

@interface UFChartPyramidSeriesView : UFChartSimpleSeriesView {
    UFChartFillStyle *_fillStyle;
    UFChartBorderStyle *_borderStyle;
    float centerX;
    float height;
    float width2;
    double gap;
    double minPyramid;
    UFSfxRectF *seriesBounds;
}

@property(readonly, strong) UFChartFillStyle *actualFillStyle;
@property(nonatomic, readonly, strong) UFChartFillStyle *fillStyle;
@property(nonatomic, readonly, strong) UFChartBorderStyle *borderStyle;

@end