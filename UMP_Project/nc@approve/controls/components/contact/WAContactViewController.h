/*!
 @header	ContactViewController.h
 @abstract	联系人componet
 @discussion	
 @author	rui.yang 
 @copyright ufida	
 @version	1.0 2013-01-06 15:52:35 Creation
 */

#import <UIKit/UIKit.h>
#import "WAContactVO.h"
#import "WAContactsDetailController.h"
#import "WAContactUtil.h"
#import "WAContactHeadVC.h"

/*!
 @enum
 @abstract	联系人界面样式
 @discussion	
 @constant EContactNone无联系人名字等信息
 @constant EContactOnlyName 无联系人工作，工作等信息
 @constant EContactCompany联系人的所有信息
 */
typedef enum 
{
  EContactNone = 0,
  EContactOnlyName ,
  EContactCompany
}TWAContactViewType;


#define WA_CONTACTBASE_MOBILE  @"0" //手机
#define WA_CONTACTBASE_PHONE   @"1" //办公电话
#define WA_CONTACTBASE_HMPHONE @"2" //宅电
#define WA_CONTACTBASE_EMAIL   @"3" //邮件
#define WA_CONTACTBASE_INPHONE @"4" //内线电话

/*!
 @class
 @abstract 联系人详情页面
 */
@interface CWAContactViewController: UIViewController<UIActionSheetDelegate,
UITableViewDataSource,UITableViewDelegate>
{
  NSInteger iIndex;
  IBOutlet UITableView *iTheTableView;
  IBOutlet UINavigationBar *nbar;
  IBOutlet UIView * iBottomView;
  IBOutlet UIButton * iBtn;
  CWAContactHeadVC* iHeadView;
  TWAContactViewType iContactViewStyle;
  BOOL iIsDisplayToolBar;
  CWAContactsDetailController *iContactDetailController;
  CWAContactVO *contactVO;
  WAContactUtil *iContactUtil;
  IBOutlet UIImageView *iNoDataImageView;
  //屏幕尺寸
  CGRect  iContactTableFrame;
  CGRect  iBottomFrame;
}

/*!
 	@property
 	@abstract	iIsDisplayToolBar	是否展示底部toolbar
 */
@property (nonatomic, readwrite) BOOL iIsDisplayToolBar;

/*!
 @property
 @abstract 有关联系人的详情信息VO
 */
@property(nonatomic, retain) CWAContactVO *contactVO;


/*!
 @method
 @abstract 初始化
 */
-(id)init;

/*!
 	@method
 	@abstract	设置界面title
 	@discussion	
 	@param 	title 	界面的title
 */
- (void)setTitle:(NSString *)title;

/*!
 @method
 @abstract 供下级使用，添加额外的view
 */
-(void)setExtraView:(UIView*)aView;

@end
