/*!
 @header WATaskHistoryHandlerDetailVO.h 
 @abstract 任务历史处理人详情值对象
 @author Created by Li Xiaopeng
 @copyright ufida
 @version 1.00 2012/5/22 Creation
 */

#import <Foundation/Foundation.h>
#import "WABaseVO.h"

/*!
 @class
 @abstract 任务历史处理人详情值对象
 */
@interface CWATaskHistoryHandlerDetailVO : CWABaseVO
{
  @private
  UIImage *iHandlerImage;
  NSString *iHandlerName;
  NSString *iHandlerIdea;
  NSString *iHandlerDetail;
  NSString *iHandlerDate;
  NSString *iPnsID;
}

/*!
 @property
 @abstract 处理人头像
 */
@property(nonatomic,retain) UIImage *iHandlerImage;

/*!
 @property
 @abstract 处理人名字
 */
@property(nonatomic,retain) NSString *iHandlerName;

/*!
 @property
 @abstract 处理人意见
 */
@property(nonatomic,retain) NSString *iHandlerIdea;

/*!
 @property
 @abstract 处理详情
 */
@property(nonatomic,retain) NSString *iHandlerDetail;

/*!
 @property
 @abstract 处理时间
 */
@property(nonatomic,retain) NSString *iHandlerDate;

/*!
 @property
 @abstract 人员编号
 */
@property(nonatomic,retain) NSString *iPnsID;

@end
