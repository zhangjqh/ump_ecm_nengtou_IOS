/*!
 @header WATaskHistoryHandlerDetailVO.h 
 @abstract 任务历史处理人详情值对象
 @author Created by Li Xiaopeng
 @copyright ufida
 @version 1.00 2012/5/22 Creation
 */

#import "WATaskHistoryHandlerDetailVO.h"

/*!
 @class
 @abstract 任务历史处理人详情值对象
 */
@implementation CWATaskHistoryHandlerDetailVO

@synthesize iHandlerImage;

@synthesize iHandlerName;

@synthesize iHandlerIdea;

@synthesize iHandlerDetail;

@synthesize iHandlerDate;

@synthesize iPnsID;

/*!
 @method 
 @abstract 销毁时发送的消息
 @discussion 
 @result 
 */
- (void)dealloc 
{
  self.iHandlerImage = nil; 
  self.iHandlerName = nil;
  self.iHandlerIdea = nil;
  self.iHandlerDetail = nil;
  self.iHandlerDate = nil;
  self.iPnsID = nil;
}

@end
