/*!
 @header WATaskActionViewController.h
 @abstract 任务处理viewcontroller
 @author dequan
 @copyright ufida
 @version 1.00 2012/05/22 Creation 
 */

#import <UIKit/UIKit.h>
#import "WAPickerTextField.h"
#import "WATaskActionController.h"
#import "WALinkManViewController.h"
#import "WAExpandGrowTextView.h"
#import "WATaskAcListVO.h"

/*!
 @class
 @abstract 任务处理viewcontroller类
 */
@interface CWATaskActionViewController : UIViewController
<MWAPickerTextFieldDelegate,MWALinkManViewControllerDelegate,MWAExpandGrowTextViewDelegate,MWATaskActionControllerDelegate>
{
  //界面的ui控制和action类
  IBOutlet CWATaskActionController *iActionController;
  IBOutlet UIButton *iBtn;
  //要调教给的联系人数组
  NSMutableArray *iLinkmanArray;
  //添加联系人的iLinkmanField
  CWAPickerTextField *iLinkmanField;
  //自动增长textview
  CWAExpandGrowTextView *iGrowTextView;
  //任务的flag，我们以此来布局页面
  NSInteger iFlag;
  //任务id
  NSString *iTaskid;
  //动作对象
  CWATaskAcListVO *iActionVO;
  //联系人ID的array
  NSMutableArray *iLinkManIDArray;
   //所有相关的联系人
  NSMutableArray *iAssociateLinkManArray;





}

@property (nonatomic, retain) CWATaskAcListVO *iActionVO;

/*!
 @property
 @abstract 任务的标示
 */
@property (nonatomic, assign) NSInteger iFlag;

/*!
 @property
 @abstract 任务的id
 */
@property (nonatomic, copy) NSString *iTaskid;

/*!
 @method
 @abstract 返回去上一个视图
 @discussion 返回去上一个视图
 @param N/A
 @result void
 */
- (IBAction)gotoLastViewController;

@end

@interface CWATaskActionViewController(Private)

/*!
 @method
 @abstract 根据flag微调ui元素
 @discussion 根据flag微调ui元素
 @param aFlag决定ui元素的具体位置
 @result void
 */
- (void)setElementFrameWithFlag:(NSInteger)aFlag;

/*!
 @method
 @abstract 当添加联系人多行时调整ui元素的高度
 @discussion 当添加联系人多行时调整ui元素的高度
 @param note通知
 @result void
 */
- (void)setElementFrameWithHigh:(NSNotification *)note;

/*!
 @method
 @abstract 设置动作的按钮的交互性
 @discussion 设置动作的按钮的交互性
 @result void
 */
- (void)setActionButtonUserEnabled;

@end
