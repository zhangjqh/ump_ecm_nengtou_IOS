//
//  Created by 宋永强 on 11-6-10.
//
//  To change this template use File | Settings | File Templates.
//


#import <Foundation/Foundation.h>

#import "UFChartSimplePlotDrawOptions.h"
#import "UFChartFillStyle.h"
#import "UFChartBorderStyle.h"

@interface UFChartPieDrawOptions : UFChartSimplePlotDrawOptions {
    UFChartAnimatedPiePointerLocation _pointerLocation;
}

@property(nonatomic, assign) UFChartAnimatedPiePointerLocation pointerLocation;


@end