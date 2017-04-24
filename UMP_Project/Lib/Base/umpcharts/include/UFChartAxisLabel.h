//
//  UFChartAxisLabel.h
//  UFCharts
//
//  Created by 宋永强 on 11-4-27.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UFChartTitleBase.h"
#import "UFChartEnums.h"

@protocol UFChartIAxis;
@class UFChartAxisBase;

/**
 *	@brief	表示图表轴的标签。
 */
@interface UFChartAxisLabel : UFChartTitleBase {
    UFChartAxisLabelMode _labelMode;
    __unsafe_unretained UFChartAxisBase *_axis;
    NSString *_beginText;
    NSString *_endText;
    NSString * _valueFormat;
}

/**
 *	@brief	获取或者设置标签文本的前缀。
 */
@property(nonatomic, strong) NSString *beginText;

/**
 *	@brief	获取或者设置标签文本的后缀。
 */
@property(nonatomic, strong) NSString *endText;

/**
 *	@brief	获取或者设置标签的显示模式。
 */
@property(nonatomic, assign) UFChartAxisLabelMode labelMode;

/**
*  @brief 获取或者设置标签数值的格式化文本。默认为"%.2f"
*/
@property(nonatomic, copy) NSString *valueFormat;


/**
*	@brief	初始化实例
*
*	@param 	axis 	轴
*
*	@return	实例
*/
- (id)initWithAxis:(UFChartAxisBase *)axis;


/**
 *	@brief	获取标签所属的轴。
 *
 *	@return	坐标轴
 */
- (UFChartAxisBase *)getAxis;



@end
