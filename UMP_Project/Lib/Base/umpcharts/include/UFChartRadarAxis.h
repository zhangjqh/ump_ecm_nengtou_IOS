//
//  Created by 宋永强 on 11-6-2.
//
//  To change this template use File | Settings | File Templates.
//


#import <Foundation/Foundation.h>

#import "UFChartAxisBase.h"
#import "UFSfxDrawColor.h"
#import "UFChartRadarPlot.h"
#import "UFChartAppearanceItems.h"

@class UFChartRadarPlot;

@interface UFChartRadarAxis : UFChartAxisBase {
    UFSfxDrawColor *_color;
    BOOL _visible;
    NSUInteger _thickness;
}

@property(nonatomic, strong) UFSfxDrawColor *color;
@property(nonatomic, assign) BOOL visible;
@property(nonatomic, assign) NSUInteger thickness;

- (UFChartRadarPlot *)getRadarPlot;

- (UFChartRadarAxisAppearance *)getAppearance;

@end