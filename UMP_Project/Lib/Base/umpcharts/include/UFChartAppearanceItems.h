//
//  UFChartAppearanceBase.h
//  UFCharts
//
//  Created by 宋永强 on 11-5-2.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UFChartFillStyle;
@class UFChartBorderStyle;
@class UFChartLineStyle;
@class UFSfxDrawColor;

@interface UFChartAppearanceBase : NSObject {
}

@end


@interface UFChartLegendAppearance : UFChartAppearanceBase

@property(nonatomic, strong) UFSfxDrawColor *borderColor;
@property(nonatomic, strong) UFSfxDrawColor *backColor;
@property(nonatomic, strong) UFSfxDrawColor *textColor;
@property(nonatomic, strong) UFChartFillStyle *fillStyle;

@end


@interface UFChartTitleBaseAppearance : UFChartAppearanceBase

@property(nonatomic, strong) UFSfxDrawColor *textColor;

@end

@interface UFChartAppearance : UFChartAppearanceBase {
}

@property(nonatomic, strong) UFSfxDrawColor *borderColor;
@property(nonatomic, strong) UFSfxDrawColor *backColor;
@property(nonatomic, strong) UFChartLegendAppearance *legendAppearance;

@end

@interface UFChartGridLinesAppearance : UFChartAppearanceBase

@property(nonatomic, strong) UFSfxDrawColor *color;
@property(nonatomic, strong) UFSfxDrawColor *minorColor;

@end

@interface UFChartAxisLabelAppearance : UFChartTitleBaseAppearance
@end

@interface UFChartAxisTitleAppearance : UFChartTitleBaseAppearance
@end

@interface UFChartAxisAppearance : UFChartAppearanceBase

@property(nonatomic, strong) UFSfxDrawColor *color;
@property(nonatomic, strong) UFChartAxisLabelAppearance *labelAppearance;
@property(nonatomic, strong) UFChartAxisTitleAppearance *titleAppearance;
@property(nonatomic, strong) UFChartGridLinesAppearance *lineAppearance;

@end

@interface UFChartXYPlotAppearance : UFChartAppearanceBase

@property(nonatomic, strong) UFSfxDrawColor *backColor;
@property(nonatomic, strong) UFSfxDrawColor *borderColor;
@property(nonatomic, strong) UFChartFillStyle *fillStyle;
@property(nonatomic, strong) UFChartAxisAppearance *axisAppearance;

@end


@interface UFChartTitleAppearance : UFChartTitleBaseAppearance

@end


@interface UFChartSeriesLabelAppearance : UFChartAppearanceBase

@property(nonatomic, strong) UFSfxDrawColor *backColor;
@property(nonatomic, strong) UFSfxDrawColor *borderColor;
@property(nonatomic, strong) UFSfxDrawColor *textColor;
@property(nonatomic, strong) UFSfxDrawColor *connectorColor;

@end


@interface UFChartBarTypeAppearance : UFChartAppearanceBase

@property(nonatomic, strong) UFChartFillStyle *fillStyle;
@property(nonatomic, strong) UFSfxDrawColor *borderColor;
@property(nonatomic, strong) UFChartSeriesLabelAppearance *labelAppearance;

@end

@interface UFChartPointTypeAppearance : UFChartAppearanceBase

@property(nonatomic, strong) UFSfxDrawColor *borderColor;
@property(nonatomic, strong) UFChartSeriesLabelAppearance *labelAppearance;

@end

@interface UFChartLineTypeAppearance : UFChartAppearanceBase

@property(nonatomic, strong) UFSfxDrawColor *borderColor;

@end

@interface UFChartAreaTypeAppearance : UFChartAppearanceBase

@property(nonatomic, strong) UFSfxDrawColor *borderColor;
@property(nonatomic, strong) UFChartFillStyle *fillStyle;

@end


@interface UFChartRadarAxisAppearance : UFChartAppearanceBase {
    UFChartGridLinesAppearance *_lineAppearance;
    UFSfxDrawColor *_color;
    UFChartAxisLabelAppearance *_labelAppearance;
}

@property(nonatomic, readonly) UFChartGridLinesAppearance *lineAppearance;
@property(nonatomic, strong) UFSfxDrawColor *color;
@property(nonatomic, readonly) UFChartAxisLabelAppearance *labelAppearance;

@end

@interface UFChartRadarPlotAppearance : UFChartAppearanceBase {
    UFChartRadarAxisAppearance *_axisAppearance;
    UFSfxDrawColor *_backColor;
    UFSfxDrawColor *_borderColor;
    UFChartFillStyle *_fillStyle;
}

@property(readonly, strong) UFChartRadarAxisAppearance *axisAppearance;
@property(nonatomic, strong) UFSfxDrawColor *backColor;
@property(nonatomic, strong) UFSfxDrawColor *borderColor;
@property(nonatomic, strong) UFChartFillStyle *fillStyle;

@end



