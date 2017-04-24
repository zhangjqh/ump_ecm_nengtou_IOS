//
//  Created by 宋永强 on 11-6-8.
//
//  To change this template use File | Settings | File Templates.
//


#import <Foundation/Foundation.h>
#import "UFChartEnums.h"
#import "UFChartPointSeriesLabel.h"


/**
 *	@brief	表示 UFChartBubbleSeriesView 的数据点标签。
 */
@interface UFChartBubbleSeriesLabel : UFChartPointSeriesLabel {
    UFChartBubbleLabelValueToDisplay _valueToDisplay;
}

/**
 *	@brief	获取或者设置标签文本显示内容。
 */
@property(nonatomic, assign) UFChartBubbleLabelValueToDisplay valueToDisplay;


@end