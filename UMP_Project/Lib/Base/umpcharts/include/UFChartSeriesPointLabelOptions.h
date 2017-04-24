//
//  Created by 宋永强 on 11-6-8.
//
//  To change this template use File | Settings | File Templates.
//


#import <Foundation/Foundation.h>
#import "UFChartISeriesPointLabelOptions.h"

#import "UFChartElement.h"
#import "UFChartNumericOptions.h"
#import "UFChartSeries.h"

@class UFChartSeries;

@interface UFChartSeriesPointLabelOptions : UFChartElement <UFChartISeriesPointLabelOptions> {
    NSString *_pattern;
    UFChartNumericOptions *_argumentNumericOptions;
    UFChartNumericOptions *_valueNumericOptions;
    NSString *_valueFormatter;
}

@property(nonatomic, copy) NSString *pattern;
@property(nonatomic, readonly, strong) UFChartNumericOptions *argumentNumericOptions;
@property(nonatomic, readonly, strong) UFChartNumericOptions *valueNumericOptions;

- (UFChartSeries *)getSeries;
@end