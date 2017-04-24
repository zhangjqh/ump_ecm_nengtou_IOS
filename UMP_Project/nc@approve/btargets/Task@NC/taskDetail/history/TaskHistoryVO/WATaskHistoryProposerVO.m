/*TaskHistoryProposerVO.h
 @abstract 任务提交人表格单元值对象
 @author Created by Li Xiaopeng
 @copyright ufida
 @version 1.00 2012/5/22 Creation
 */

#import "WATaskHistoryProposerVO.h"

/*!
 @class
 @abstract 提交人表格单元值对象
 */
@implementation CWATaskHistoryProposerVO


@synthesize iProposerName;

@synthesize iProposeDate;

@synthesize iPnsID;

/*!
 @method 
 @abstract 销毁时发送的消息
 @discussion 
 @result 
 */
- (void)dealloc 
{
  self.iProposerName = nil;
  self.iProposeDate = nil;
  self.iPnsID = nil;
}

@end
