/*TaskHistoryHandlerDetailVO.h
 @abstract 任务历史处理人值对象
 @author Created by Li Xiaopeng
 @copyright ufida
 @version 1.00 2012/5/22 Creation
 */

#import "WATaskHistoryHandlerVO.h"

/*!
 @class
 @abstract 任务历史处理人值对象
 */
@implementation CWATaskHistoryHandlerVO

@synthesize iHandlerDetailVOArray;

- (id)init
{
  self = [super init];
  if (self) 
  {
    iHandlerDetailVOArray = [[NSMutableArray alloc] init];
  }
  return self;
}


@end
