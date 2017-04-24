//
//  Created by 宋永强 on 11-6-26.
//
//  To change this template use File | Settings | File Templates.
//


#import <Foundation/Foundation.h>
#import "UFChartTitleItem.h"
#import "UFChartIDockableLayoutItem.h"
#import "UFChartTextPropertiesProvider.h"
#import "UFChartEnums.h"


/**
 *	@brief	提供管理 UFChartControl 控件中的可停靠标题的方法和属性。
 *  @se UFChartIDockableLayoutItem, UFChartTextPropertiesProvider
*/

@class UFChartTitleLabelItem;

@interface UFChartDockableTitle : UFChartTitleItem <UFChartIDockableLayoutItem, UFChartTextPropertiesProvider> {
    UFSfxDockStyle _dockStyle;
    UFChartTitleLabelItem *_labelItem;
}

/**
 *	@brief	获取或设置标题的停靠方式。
 */
@property(nonatomic, assign) UFSfxDockStyle dockStyle;

/**
 *	@brief	初始化 UFChartDockableTitle 类的新实例。
 *
 *	@param 	text 	标题名称
 *	@param 	dockStyle 	停靠方式
 *
 *	@return	实例化的UFChartDockableTitle。
 */
- (id)initWithText:(NSString *)text dockStyle:(UFSfxDockStyle)dockStyle;


@end