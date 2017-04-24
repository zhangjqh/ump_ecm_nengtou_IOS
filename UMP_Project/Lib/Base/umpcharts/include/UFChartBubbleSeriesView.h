//
//  Created by 宋永强 on 11-6-9.
//
//  To change this template use File | Settings | File Templates.
//


#import <Foundation/Foundation.h>

#import "UFChartPointSeriesView.h"

/**
 *	@brief	表示 UFChartSeriesViewBubble 类型的视图。
 */
@interface UFChartBubbleSeriesView : UFChartPointSeriesView {

    NSUInteger _opactity;
    NSUInteger _minSize;
    NSUInteger _maxSize;
    NSUInteger _deltaSize;
    float _coef;
}

/**
 *	@brief	气泡的透明度（取值为0~255），值越低表示越透明。默认是不透明的。
 */
@property(nonatomic, assign) NSUInteger opactity;

@end

@interface UFChartBubbleSeriesView (Internal)

- (NSUInteger)getDefaultOpacity;

@end