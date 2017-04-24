
#import "WAMenuViewController.h"
/*!
@header	包含不响应手滑动作区域的菜单类
@abstract
@discussion
@author	huych
@copyright	ufida
@version	1.0 2013-11-12 11:06:55 Creation
 */
@interface CWAMenuViewNoPanArearController : CWAMenuViewController

{
  //不需要执行手滑操作的区域数组
  NSMutableArray *iNoPanAreas;
}

/*!
 @method
 @abstract	添加不执行滑动手势区域
 @discussion 如果数组中有完全包含添加的区域的，不再添加
 @param 	aNoPanArea
 @result	成功添加，返回YES
 */
- (BOOL)addNoPanArea:(CGRect)aNoPanArea;

/*!
 @method
 @abstract	移除不执行滑动手势的区域
 @discussion
 @param 	aNoPanArea
 @result
 */
- (BOOL)removeNoPanAreaWithIndex:(int)aIndex;

/*!
 @method
 @abstract	清空所有不执行手势的区域
 @discussion
 */
- (void)clearNoPanAreas;
@end
