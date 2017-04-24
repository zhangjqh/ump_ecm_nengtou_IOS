/*!
 @header WATaskHistoryHandlerDetailVO.h 
 @abstract 任务历史处理人值对象
 @author Created by Li Xiaopeng
 @copyright ufida
 @version 1.00 2012/5/22 Creation
 */

#import <Foundation/Foundation.h>
#import "WABaseVO.h"

/*!
 @class
 @abstract 任务历史处理人值对象
 */
@interface CWATaskHistoryHandlerVO : CWABaseVO
{
  @private
  NSMutableArray *iHandlerDetailVOArray;
}

/*!
 @property
 @abstract 处理人详情数组
 */
@property(nonatomic,retain) NSMutableArray *iHandlerDetailVOArray;

@end
