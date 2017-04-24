/*!
 @header CWATaskListRowController.h
 @abstract 消息动作列表的控制类
 @author dequan
 @copyright ufida
 @version 1.00 2012/05/26 Creation 
 */

#import <Foundation/Foundation.h>

@interface CWATaskListRowController : NSObject
{
  IBOutlet UIButton *iReturnButton;
}

/*!
 @method
 @abstract 跳到任务详情视图
 @discussion 跳到任务详情视图
 @result 返回void
 */
- (IBAction)gotoTaskDetailView;
@end
