/*!
 @header WATaskListViewController.h
 @abstract 任务中心列表界面
 @author huych 
 @copyright ufida
 @version 1.00 2012/04/7 Creation 
 */

#import <UIKit/UIKit.h>
#import "WATaskListContentCell.h"
#import "WAPullingRefreshTableView.h"
#import "WAHTTPNotify.h"
#import "WATaskListController.h"
#import "WATaskListVoArray.h"
#import "CWATaskBnsHandler.h"
#import "WATaskListDef.h"
#import "WATaskListController.h"
#import "WATaskListBnsHandler.h"
#import "WAGroupButtonView.h"
#import "WATaskDetailViewVO.h"
@interface CWATaskListViewController : UIViewController<PullingRefreshTableViewDelegate,UITableViewDelegate,UITableViewDataSource,MWAHTTPNotify,MWATaskBnsHandlerDelegate,MWATaskListControllerDelegate>
{   
  CWAPullingRefreshTableView *iTableView;
  UIViewController *iSetting;
  CWATaskListContentCell *iListContentCell;
  IBOutlet CWATaskListController *iListController;
  IBOutlet UINavigationBar *iNavBar;
  IBOutlet UINavigationItem *iNavBarItem;
  IBOutlet UIBarButtonItem *iNavRightBarItem;
  UINib *iCellNib;
  //从逻辑层获取的数据
  CWATaskListVoArray *iListVos;
  NSMutableDictionary *iButtonVOs;
  TWATaskType iTaskType;
  UIView *iToDoListButtons;
  UIView *iSubmitButtons;
  UIView *iEmptyView;
  NSString *iTaskID;
  BOOL isRequestVO;
  IBOutlet UIView * iBottomView;
  UIImageView *iGroupBtnBackView;
}

@property (nonatomic, retain)CWAPullingRefreshTableView *iTableView;
@property (assign,nonatomic) NSInteger page;
@property (nonatomic,retain) IBOutlet UIView *iEmptyView;;
/*!
 @property
 @abstract iListContentCell 列表表格
 */
@property (nonatomic,retain) CWATaskListContentCell *iListContentCell;

/*!
 @property
 @abstract iCellNib 列表表格nib
 */
@property (nonatomic,retain) UINib *iCellNib;

/*!
 @property
 @abstract iListVos 列表数据
 */
@property (nonatomic,retain) CWATaskListVoArray *iListVos;

/*!
 @property
 @abstract iButtonVOs 列表按钮数据
 */
@property (nonatomic,retain)  NSMutableDictionary *iButtonVOs;

/*!
 @property
 @abstract iSetting 设置界面
 */
@property (nonatomic,retain) UIViewController *iSetting;

/*!
 @property
 @abstract iNavBar 导航栏
 */
@property (nonatomic,retain) IBOutlet UINavigationBar *iNavBar;

/*!
 @property
 @abstract iNavBarItem 导航栏Item
 */
@property (nonatomic,retain) IBOutlet UINavigationItem *iNavBarItem;

/*!
 @property
 @abstract iNavRightBarItem 导航栏右边按钮item
 */
@property (nonatomic,retain) IBOutlet UIBarButtonItem *iNavRightBarItem;

/*!
 @property
 @abstract iTaskType 任务类型
 */
@property (nonatomic,assign) TWATaskType iTaskType;

/*!
 @property
 @abstract iToDoListButtons 我的待办按钮组视图
 */
@property (nonatomic,retain) UIView *iToDoListButtons;

/*!
 @property
 @abstract iSubmitButtons 我的提交按钮组视图
 */
@property (nonatomic,retain) UIView *iSubmitButtons;

/*!
 @property
 @abstract iListController 任务列表事件类
 */
@property (nonatomic,retain) CWATaskListController *iListController;

@property (nonatomic, retain)UIImageView *iGroupBtnBackView;

/*!
 @method
 @abstract 初始化方法
 @discussion  
 @param nibNameOrNil nib的名称
 @param nibBundleOrNil Bundle信息
 @param aTWATaskType 任务类型
 @param aBaseVO 初始数据
 */
- (id)initWithNibName:(NSString *)nibNameOrNil 
            andBundle:(NSBundle *)nibBundleOrNil
       andTWATaskType:(TWATaskType)aTWATaskType
            andBaseVO:(CWABaseVO *)aBaseVO;

- (id)initWithNibName:(NSString *)nibNameOrNil 
            andBundle:(NSBundle *)nibBundleOrNil
       andTWATaskType:(TWATaskType)aTWATaskType;

/*!
 @method
 @abstract 请求下一页的数据
 @discussion  
 */
-(void)requestNextPage;

/*!
 *	@method
 *	@abstract	 通过导航显示任务列表
 *	@discussion	已含有push信息
 *	@param 	aNavigationController  导航站
 */
+ (void)showTaskListControllerWithNavigationController:(UINavigationController *)aNavigationController;
/*!
 *	@method
 *	@abstract	pop出任务列表
 *	@discussion	
 */
+ (void)hiddenTaskListViewController;

/*!
 	@method
 	@abstract	保存html数据
 	@discussion
 	@param 	aHTMLVO 需要保存的vo
 	@result	保存以后的位置
 */
- (NSURL *)saveHTMLVO:(CWATaskDetailViewVO *)aHTMLVO;


@end
