//
//  Created by 宋永强 on 11-6-8.
//
//  To change this template use File | Settings | File Templates.
//


#import "UFChartINumericOptions.h"
#import "UFChartSeriesPoint.h"

@class UFChartSeriesPoint;

@protocol UFChartISeriesPointLabelOptions <NSObject>
- (NSString *)getPattern;

- (id <UFChartINumericOptions>)getArgumentNumericOptions;

- (id <UFChartINumericOptions>)getValueNumericOptions;

- (NSString *)getPointValueAsString:(UFChartSeriesPoint *)seriesPoint;
@end