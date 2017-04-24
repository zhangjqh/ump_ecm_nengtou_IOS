//
//  UFChartMainAppearanc.h
//  UFCharts
//
//  Created by 宋永强 on 11-4-30.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UFChartAppearanceItems.h"
#import "UFChartFunnelTypeAppearance.h"
#import "UFChartPieTypeAppearance.h"

@interface UFChartMainAppearance : NSObject {
@private
    NSString *_name;
    NSString *_paletteName;
    UFChartAppearance *_chartAppearance;
    UFChartXYPlotAppearance *_xyPlotAppearance;
    UFChartTitleAppearance *_titleAppearance;
    UFChartBarTypeAppearance *_barTypeAppearance;
    UFChartPointTypeAppearance *_pointTypeAppearance;
    UFChartLineTypeAppearance *_lineTypeAppearance;
    UFChartAreaTypeAppearance *_areaTypeAppearance;
    UFChartRadarPlotAppearance *_radarPlotAppearance;
    UFChartFunnelTypeAppearance *_funnelTypeApperance;
    UFChartPieTypeAppearance *_pieTypeApperance;
}

@property(readonly, strong) NSString *name;
@property(readonly, strong) UFChartAppearance *chartAppearance;
@property(readonly, strong) UFChartXYPlotAppearance *xyPlotAppearance;
@property(readonly, strong) UFChartTitleAppearance *titleAppearance;
@property(readonly, strong) UFChartBarTypeAppearance *barTypeAppearance;
@property(readonly, strong) UFChartPointTypeAppearance *pointTypeAppearance;
@property(readonly, strong) UFChartLineTypeAppearance *lineTypeAppearance;
@property(readonly, strong) UFChartAreaTypeAppearance *areaTypeAppearance;
@property(readonly, strong) UFChartRadarPlotAppearance *radarPlotAppearance;
@property(readonly, strong) UFChartFunnelTypeAppearance *funnelTypeApperance;
@property(readonly, strong) UFChartPieTypeAppearance *pieTypeApperance;

- (void)readFromXml:(NSString *)descriptor;

@end


