/*!
 @header WATaskHistoryProposerVO.h 
 @abstract 任务提交人表格单元值对象
 @author Created by Li Xiaopeng
 @copyright ufida
 @version 1.00 2012/5/22 Creation
 */

#import <Foundation/Foundation.h>
#import "WABaseVO.h"

/*!
 @class
 @abstract 提交人表格单元值对象
 */
@interface CWATaskHistoryProposerVO : CWABaseVO
{
  @private
  NSString *iProposerName;
  NSString *iProposeDate;
  NSString *iPnsID;
}

/*!
 @property
 @abstract 提交人名字
 */
@property(nonatomic,retain) NSString *iProposerName;

/*!
 @property
 @abstract 提交时间
 */
@property(nonatomic,retain) NSString *iProposeDate;

/*!
 @property
 @abstract 人员编号
 */
@property(nonatomic,retain) NSString *iPnsID;

@end
