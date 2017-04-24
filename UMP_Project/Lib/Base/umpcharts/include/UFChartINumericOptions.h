//
//  Created by 宋永强 on 11-6-8.
//
//  To change this template use File | Settings | File Templates.
//


#import "UFChartEnums.h"

@protocol UFChartINumericOptions
- (UFChartNumericOptionsFormat)getFormat;

- (NSUInteger)getPrecision;
@end