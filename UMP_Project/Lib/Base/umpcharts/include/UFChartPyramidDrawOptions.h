//
//  Created by 宋永强 on 11-6-10.
//
//  To change this template use File | Settings | File Templates.
//


#import <Foundation/Foundation.h>

#import "UFChartSimplePlotDrawOptions.h"
#import "UFChartFillStyle.h"
#import "UFChartBorderStyle.h"

@interface UFChartPyramidDrawOptions : UFChartSimplePlotDrawOptions {
    UFChartFillStyle *_fillStyle;
    UFChartBorderStyle *_borderStyle;
}
@property(nonatomic, readonly, strong) UFChartFillStyle *fillStyle;
@property(nonatomic, readonly, strong) UFChartBorderStyle *borderStyle;


@end