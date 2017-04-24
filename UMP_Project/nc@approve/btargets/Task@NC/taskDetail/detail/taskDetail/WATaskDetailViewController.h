/*!
 @header CWATaskDetailViewController.h
 @abstract 实现左右滑动的根viewcontroller
 @author dequan
 @copyright ufida
 @version 1.00 2012/05/26 Creation 
 */

#import <UIKit/UIKit.h>
#import "WATaskDetailController.h"
#import "WATaskDetailViewVO.h"


@interface CWATaskDetailViewController : UIViewController
{
  IBOutlet CWATaskDetailController *iFeedController;
  IBOutlet UIButton *iRightBtn;
  //数据源
  CWATaskDetailViewVO *iFeedViewVO;
  //tableview
  UIViewController *iTableviewController;
  //模糊视图
  UIImageView *iFuzzyImageView;
  //任务状态字典
  NSDictionary *iTaskDic;
  IBOutlet UIButton *iLeftBtn;
  
  NSURL *iWebViewURL;
}

@property (nonatomic, retain)  NSURL *iWebViewURL;


@property (nonatomic,readonly) CWATaskDetailViewVO *iFeedViewVO;

/*!
 @property
 @abstract 任务状态的字典
 */
@property (nonatomic, retain) NSDictionary *iTaskDic;

/*!
 @method
 @abstract 初始化方法
 @discussion 初始化方法
 @param aFeedVO视图vo对象
 @result 返回CWATaskDetailViewController的not owned对象
 */
- (id)initWithFeedVO:(CWATaskDetailViewVO *)aFeedVO;

/*!
 @method
 @abstract 设置navigationbar的rightnavigationItem为空
 @discussion  
 */
- (void)removeRightNavigationItem;

- (void)adaptNavBar;
@end

