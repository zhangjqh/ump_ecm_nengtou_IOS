//
//  UFChartPoint.h
//  UFCharts2
//
//  Created by 宋永强 on 11-3-14.
//  Copyright 2011 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UFChartElement.h"
#import "UFSfxDouble.h"
#import "UFSfxRectF.h"

/**
 *	@brief	表示图表数据序列中的一个数据点。
 */
@interface UFChartSeriesPoint : UFChartElement {
@private
    NSString *_argument;
    NSArray *_values;
    BOOL _isEmpty;
    id _pointData;
    BOOL _showLabel;
    BOOL _showInLegend;
    
    CGRect _bounds;
    float _xValue; // 0 ~ 1 
    float _yValue; // 0 ~ 1     
}

/**
 *	@brief	获取或设置数据点的 X 轴标签的文本。
 *
 *  不同序列中argument相同的数据点属于同一组数据类别。
 */
@property(nonatomic, copy) NSString *argument;

/**
 *	@brief	获取或者返回数据点的数据。
 */
@property(nonatomic, strong) NSArray *values;

/**
 *	@brief	获取数据点的全部数据中的第一个值。
 */
@property(readonly, assign) double firstValue;

/**
 *	@brief	获取或设置数据点的全部数据中的第一个值。
 */
@property(nonatomic, readwrite) double value;

/**
 *	@brief	获取数据点在序列中的位置。
 */
@property(readonly, assign) int index;

/**
 *	@brief	获取或设置一个标志，该标志指示是否在图例中显示项。
 */
@property(nonatomic, assign) BOOL showInLegend;

/**
 *	@brief	获取或者设置是否在图表中显示标签。
 */
@property(nonatomic, assign) BOOL showLabel;

/**
 *	@brief	获取数据点是否为空数据点。
 */
@property(nonatomic, readonly, assign) BOOL isEmpty;

/**
 *  @brief	获取或者设置数据点在X轴的显示位置。
 *  值的范围为0到1，表示值对X轴长度的比例。默认为MAXFLOAT,表示不使用该属性。
 */
@property(nonatomic, assign) float xValue;

/**
 *  @brief	获取或者设置数据点在Y轴的显示位置。
 *  值的范围为0到1，表示值对Y轴长度的比例。默认为MAXFLOAT,表示不使用该属性。
 */
@property(nonatomic, assign) float yValue;

- (id)initWithValue:(NSString *)argument value:(double)value;

- (id)initWithValue:(NSString *)argument value:(double)value value2:(double)value2;

- (id)initWithValues:(NSString *)argument values:(NSArray *)values;

/**
 *	@brief	获取在index位置的值。
 *
 *	@param 	index 	位置
 *
 *	@return	数据值
 */
- (double)valueAt:(NSUInteger)index;


@end
