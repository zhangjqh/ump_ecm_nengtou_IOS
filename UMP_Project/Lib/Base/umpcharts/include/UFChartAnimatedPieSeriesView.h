//
//  Created by 宋永强 on 11-6-22.
//
//  To change this template use File | Settings | File Templates.
//


#import <Foundation/Foundation.h>
#import "UFChartSimpleSeriesView.h"
#import "UFChartEnums.h"
/**
 *	@brief	表示 UFChartSeriesViewPie 类型的视图。
 */
@interface UFChartAnimatedPieSeriesView : UFChartSimpleSeriesView {
@private
     UFChartAnimatedPiePointerLocation _pointerLocation;
     NSUInteger _pointerStartIndex;
     BOOL _showCentreRound;
}

/**
 *	@brief	获取或者设置饼图的指示器方向。
 *  指示器的方向默认为 Bottom
 */
@property(nonatomic, assign) UFChartAnimatedPiePointerLocation pointerLocation;

@property(nonatomic, assign) NSUInteger pointerStartIndex;

/**
 *	@brief	获取或者是否显示中心的圆。
 *  指示器的方向默认为 NO
 */
@property(nonatomic, assign) BOOL showCentreRound;

@end