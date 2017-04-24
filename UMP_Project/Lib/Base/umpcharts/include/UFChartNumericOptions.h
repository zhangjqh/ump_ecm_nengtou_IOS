//
//  Created by 宋永强 on 11-6-8.
//
//  To change this template use File | Settings | File Templates.
//


#import <Foundation/Foundation.h>
#import "UFChartEnums.h"
#import "UFChartINumericOptions.h"

@protocol UFChartINumericOptions;


@interface UFChartNumericOptions : NSObject <UFChartINumericOptions> {
    NSUInteger _precision;
    UFChartNumericOptionsFormat _format;
}
- (id)initWithPrecision:(NSUInteger)precision format:(UFChartNumericOptionsFormat)format;


@property(nonatomic, assign) NSUInteger precision;
@property(nonatomic, assign) UFChartNumericOptionsFormat format;

@end