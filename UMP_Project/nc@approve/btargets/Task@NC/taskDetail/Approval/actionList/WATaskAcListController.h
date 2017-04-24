/*!
 @header WATaskAcListController.h
 @abstract menucontrolelr的右边视图控制类
 @author dequan
 @copyright ufida
 @version 1.00 2012/05/26 Creation 
 */

#import <Foundation/Foundation.h>
#import "WATaskAcListVO.h"

@protocol MWARightControllerDelegate;

@interface CWATaskAcListController : NSObject<UITableViewDelegate,UITableViewDataSource,UIActionSheetDelegate>
{
  //本视图上的tableview实现加载动作
  IBOutlet UITableView *iRightTableView;
  //动作列表数组
  NSMutableArray *iActionArray;
}

/*!
 @property
 @abstract 动作列表数组
 */
@property (nonatomic, retain)  NSMutableArray *iActionArray;

/*!
 @property
 @abstract 自己的代理
 */
@property (nonatomic, assign) id <MWARightControllerDelegate>iDelegate;

/*!
 @method
 @abstract 出事化成员变量
 @discussion 出事化成员变量
 @param aDic传入参数用于初始化成员变量
 @result 返回void
 */
- (void)initElementsDic:(NSArray *)aArray;
-(void)showActionSheet:(UIView *)view;
@end

/*!
 @protocol
 @abstract 这个CWARightController类的一个protocol
 @discussion 实现跳转视图
 */
@protocol MWARightControllerDelegate <NSObject>
@optional

/*!
 @method
 @abstract 跳转到任务动作视图
 @discussion 跳转到任务动作视图
 @param aRightVO传到下一界面的任务动作名字与code
 @param aFlag动作标示
 @result 返回void
 */
- (void)goTaskActionControllerWithData:(CWATaskAcListVO *)aRightVO;

@end