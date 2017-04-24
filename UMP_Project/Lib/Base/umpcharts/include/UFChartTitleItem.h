//
//  Created by 宋永强 on 11-6-13.
//
//  To change this template use File | Settings | File Templates.
//


#import <Foundation/Foundation.h>
#import "UFChartTitleBase.h"

@class UFChartTitleBase;
@class UFChartElement;

/**
 *	@brief	在 UFChart 中标题基础对象。
 */
@interface UFChartTitleItem : UFChartTitleBase {
    NSString *_text;
}

/**
 *	@brief	获取或设置标题的文本。
 */
@property(nonatomic, copy) NSString *text;


/**
 *	@brief	初始化UFChartTitleItem类的实例
 *
 *	@param 	owner 	对象的拥有对象
 *	@param 	text 	标题文本
 *
 *	@return	UFChartTitleItem类的实例
 */
- (id)initWithOwner:(UFChartElement *)owner text:(NSString *)text;


@end