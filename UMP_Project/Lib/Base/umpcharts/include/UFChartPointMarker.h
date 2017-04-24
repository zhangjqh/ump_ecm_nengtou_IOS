//
//  Created by 宋永强 on 11-6-8.
//
//  To change this template use File | Settings | File Templates.
//


#import <Foundation/Foundation.h>
#import "UFChartSimpleMarker.h"
#import "UFSfxDrawColor.h"

/**
 *	@brief	提供图表中的一个点的标记形状的显示属性。
 */
@interface UFChartPointMarker : UFChartSimpleMarker {
    BOOL _visible;
    UFSfxDrawColor *_color;
}

/**
 *	@brief	获取或者设置点的标记是否可见。
 */
@property(nonatomic, assign) BOOL visible;

/**
 *	@brief	获取或者设置点标记的颜色。
 */
@property(nonatomic, strong) UFSfxDrawColor *color;


@end