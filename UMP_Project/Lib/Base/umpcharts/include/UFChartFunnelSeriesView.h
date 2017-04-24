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

@interface UFChartFunnelSeriesView : UFChartSimpleSeriesView {
@private
    UFChartFillStyle *_fillStyle;
    UFChartBorderStyle *_borderStyle;
    float _centerX;
    float _height;
    float _width2;
    float _gap;
    float _minFunnel;
    UFSfxRectF *_seriesBounds;
    UFChartFunnelStyle _funelStyle;
}

@property(readonly, strong) UFChartFillStyle *actualFillStyle;
@property(readonly, strong) UFChartFillStyle *fillStyle;
@property(readonly, strong) UFChartBorderStyle *borderStyle;
@property(nonatomic, readonly, assign) UFChartFunnelStyle style;


@end