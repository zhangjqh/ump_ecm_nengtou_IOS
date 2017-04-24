/*!
 @header CWAFeedController.h
 @abstract 它实现CWATaskDetailController中的方法交互和数据加载
 @author dequan
 @copyright ufida
 @version 1.00 2012/05/26 Creation 
 */

#import <Foundation/Foundation.h>
#import "CWATaskBnsHandler.h"
#import "WATaskAcListController.h"
@interface CWATaskDetailController : NSObject<UITableViewDelegate,
UITableViewDataSource,
MWATaskBnsHandlerDelegate,
MWARightControllerDelegate>
{
  //返回按钮
  IBOutlet UIButton *iButton;
  //消息发送
  CWATaskBnsHandler *iTaskHanlder;
  //任务title
  NSString *iTaskTitle;
  //任务状态字典
  NSDictionary *iTaskStatusDic;
  NSString *iTaskID;
  NSString *iServiceCode;
  CWATaskAcListController *iActionListController;
  NSArray *iActionArray;
  UIView *iActionView;
}

/*!
 *	@property
 *	@abstract	iServiceCode	服务器code
 */
@property (nonatomic, copy) NSString *iServiceCode;
@property (nonatomic, retain)NSArray *iActionArray;
 @property (nonatomic, retain)UIView *iActionView;
/*!
 @property
 @abstract 任务标题
 */
@property (nonatomic, copy) NSString *iTaskTitle;

/*!
 @property
 @abstract 任务id
 */
@property (nonatomic, copy) NSString *iTaskID;
@property (nonatomic, retain) CWATaskAcListController *iActionListController;
/*!
 @method
 @abstract 跳转到右边的视图
 @discussion 跳转到右边的视图
 @result 返回void
 */
- (IBAction)showRightView;

/*!
 @method
 @abstract 初始化成员变量
 @discussion 初始化成员变量
 @result 返回void
 */
- (void)initElementWithStatusDic:(NSDictionary *)aDic;

/*!
 @method
 @abstract 展示任务历史视图
 @discussion 展示任务历史视图
 @result 返回void
 */
- (IBAction)showTaskHistoryView;


/*!
 @method
 @abstract 返回任务列表视图
 @discussion 返回任务列表视图
 @result 返回void
 */
- (IBAction)goBackTaskListView;
@end
