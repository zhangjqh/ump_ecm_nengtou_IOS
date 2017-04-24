//
//  UFChartFloatRange.h
//  UFCharts2
//
//  Created by 宋永强 on 11-3-14.
//  Copyright 2011 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface UFChartDoubleRange : NSObject {
    double _min;
    double _max;
}

@property(nonatomic, assign) double min;
@property(nonatomic, assign) double max;

+ (UFChartDoubleRange *)createWithValues:(double)min max:(double)max;

- (double)center;

- (UFChartDoubleRange *)unionValue:(double)min max:(double)max;

@end
