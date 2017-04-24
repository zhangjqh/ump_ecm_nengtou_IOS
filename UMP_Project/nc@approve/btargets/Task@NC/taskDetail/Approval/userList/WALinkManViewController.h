/*!
 @header WALinkManViewController.h
 @abstract 联系人界面viewcontroller
 @author dequan
 @copyright ufida
 @version 1.00 2012/05/22 Creation 
 */

#import <UIKit/UIKit.h>
#import "WALinkManController.h"
#import "WAPullingRefreshTableView.h"
#import "WALinkManRequestVO.h"

@protocol MWALinkManViewControllerDelegate;

/*!
 @class
 @abstract 联系人界面viewcontroller类
 */
@interface CWALinkManViewController : UIViewController
<PullingRefreshTableViewDelegate,UITableViewDataSource,UITableViewDelegate,MWALinkManControllerDelegate,UIAlertViewDelegate>
{
  //联系人的action控制类
  IBOutlet CWALinkManController *iLinkManController;
  IBOutlet UIImageView *iNodateImage;
  CWAPullingRefreshTableView *iPullDownTableView;
  //数据源
  NSMutableArray *iDataArray;
  NSMutableArray *iHistoryDataArray;
  //显示的title
  NSString *iNavigationTitle;
  //是否显示搜索框
  BOOL iIsHiddenSearchBar;
  //是否第一次进入该界面
  BOOL iIsFirstGoIn;
  UITableView *iHistoryTable;
  float originContentOffset;
  //任务id
  NSString *iTaskId;
  NSString *iServiceCode;
  //获取列表的actiontype
  NSString *iLinkManRequestType;
  //任务动作标示
  NSInteger iFlag;
  //是否有更多数据
  BOOL iIsMoreData;
  
  IBOutlet UIButton *iCancleBtn;
  BOOL isMUtilSelect;
  IBOutlet UIButton *iSureBtn;
  IBOutlet UIButton *iMutilCancleBtn;
  NSMutableArray *iSelectRows;
  double iNavigationBarHeight;
  double iSearchebarHeight;
}
@property (nonatomic, retain)NSMutableArray *iSelectRows;

- (IBAction)sureBtnClick:(id)sender;
@property (nonatomic,retain)IBOutlet UIButton *iSureBtn;
@property (nonatomic,retain)IBOutlet UIButton *iMutilCancleBtn;
@property (nonatomic,readonly) IBOutlet UIImageView *iNodateImage;

/*!
 *	@property
 *	@abstract	iServiceCode	服务器编码
 */
@property (nonatomic,copy)  NSString *iServiceCode;


/*!
 @property 
 @abstract  任务动作标示
 */
@property (nonatomic, assign) NSInteger iFlag;
/*!
 @property 
 @abstract 搜索框是否显示
 */
@property (nonatomic, assign) BOOL iIsHiddenSearchBar;
/*!
 @property 
 @abstract 导航条标题
 */
@property (nonatomic, copy) NSString *iNavigationTitle;

/*!
 @数据源
 @abstract WALinkManViewController的代理。
 */
@property (nonatomic, retain) NSMutableArray *iDataArray;

@property (nonatomic, retain) NSMutableArray *iHistoryDataArray;
/*!
 @property 
 @abstract CWALinkManViewController的代理。
 */
@property (nonatomic, assign) id <MWALinkManViewControllerDelegate>iDelegate;
@property (nonatomic, assign)BOOL isMUtilSelect;

 @property (nonatomic, assign)double iNavigationBarHeight;
 @property (nonatomic, assign)double iSearchebarHeight;
/*!
 @method
 @abstract 返回去上一个视图
 @discussion 返回去上一个视图 
 @param N/A
 @result void
 */
- (IBAction)gotoLastViewController;

/*!
 @method
 @abstract 设置actiontype的值和taskid的值
 @discussion 返回去上一个视图 
 @param aActionType 获得人员列表的请求aciotntype
 @param aTaskId任务标示
 @result void
 */
- (void)setRequestLinkManActionType:(NSString *)aActionType andTaskID:(NSString *)aTaskId;

@end


/*!
 @protocol
 @abstract 这个CWALinkManViewController类的一个protocol
 @discussion 返回去父视图的并添加联系人
 */
@protocol MWALinkManViewControllerDelegate <NSObject>

/*!
 @method
 @abstract 添加个联系人
 @discussion 添加个联系人传递联系人给上一视图
 @param aLinkMan要添加的联系人
 @result void
 */
- (void)addALinkManWith:(id)aLinkMan;

@end
