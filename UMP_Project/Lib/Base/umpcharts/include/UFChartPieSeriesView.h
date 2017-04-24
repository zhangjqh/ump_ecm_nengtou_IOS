//
//  Created by 宋永强 on 11-6-10.
//
//  To change this template use File | Settings | File Templates.
//


#import <Foundation/Foundation.h>

#import "UFChartSimpleSeriesView.h"
#import "UFChartFillStyle.h"
#import "UFChartBorderStyle.h"
#import "UFSfxRectF.h"

@interface UFChartPieSeriesView : UFChartSimpleSeriesView {
@private
    UFSfxRectF *pieBounds;
    double allValue;
    UFChartFillStyle *_fillStyle;
    UFChartBorderStyle *_borderStyle;
    float radius;
    float labelOffset;
    BOOL outsideLabels;
    BOOL alignLabels;
    NSUInteger tickSize;
    double aOffset;
    NSMutableArray *labels;
    float centerX;
    float centerY;
}

@property(readonly, strong) UFChartFillStyle *actualFillStyle;
@property(nonatomic, readonly, strong) UFChartFillStyle *fillStyle;
@property(nonatomic, readonly, strong) UFChartBorderStyle *borderStyle;

@end