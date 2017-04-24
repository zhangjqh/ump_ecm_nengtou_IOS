//
//  Created by 宋永强 on 11-6-8.
//
//  To change this template use File | Settings | File Templates.
//


#import <Foundation/Foundation.h>
#import "UFChartAppearanceItems.h"

#import "UFSfxDrawColor.h"
#import "UFChartFillStyle.h"


@interface UFChartFunnelTypeAppearance : UFChartAppearanceBase {
    UFChartFillStyle *_fillStyle;
    UFSfxDrawColor *_borderColor;
    UFChartSeriesLabelAppearance *_labelAppearance;
}


@property(readonly, strong) UFChartFillStyle *fillStyle;
@property(readonly, strong) UFSfxDrawColor *borderColor;
@property(readonly, strong) UFChartSeriesLabelAppearance *labelAppearance;

@end