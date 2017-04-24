//
//  UFChartAxisMapping.h
//  UFCharts
//
//  Created by 宋永强 on 11-5-8.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol UFChartIAxis;
@class UFChartAxisBase;
@class UFSfxDouble;
@class UFChartIntervalIterator;

@interface UFChartAxisMapping : NSObject {
    __unsafe_unretained UFChartAxisBase *_axis;
    UFSfxDouble *_minimum;
    UFSfxDouble *_maximum;
    UFSfxDouble *_interval;
    NSArray *_defaultIntervalDivs;
    NSUInteger _desiredIntervalCount;
    BOOL _inverted;
    double _onePerlength;
    double _start;
    double _length;
    double _margin;
    int _scrollOffset;
    double _visibleInterval;
    double _currentMin;
    double _currentMax;
    double _visibleMin;
    double _visibleMax;
    double _realMax;
    double _realMin;
}

@property(nonatomic, assign) double margin;
@property(nonatomic, assign) int scrollOffset;
@property(nonatomic, readonly, assign) double visibleInterval;


- (id)initWithAxis:(UFChartAxisBase *)axis;

- (UFSfxDouble *)getInterval;

- (void)setInterval:(double)interval;

- (UFChartIntervalIterator *)createIterator;

- (void)computeRange:(double)min max:(double)max;

- (void)recalculate;

- (float)valueToCoefficient:(double)value;

- (NSString *)getValueText:(double)value;

@end
