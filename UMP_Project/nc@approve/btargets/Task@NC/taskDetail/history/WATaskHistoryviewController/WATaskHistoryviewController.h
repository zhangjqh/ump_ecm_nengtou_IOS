/*!
 @header WATaskHistoryviewController.h 
 @abstract 任务历史测试工程 ViewController
 @author Created by Li Xiaopeng on 12-5-22.
 @version 1.00 2012/5/22 Creation (此文档的版本信息)
 */
#import <UIKit/UIKit.h>
#import "WATaskHistoryProposerVO.h"
#import "WATaskHistoryHandlerVO.h"
#import "WAHTTPNotify.h"
#import "WATaskHistoryHandlerDetailVO.h"

@class CWATaskHistoryController;

/*!
 @class
 @abstract 任务历史视图控制器
 */
@interface CWATaskHistoryviewController : UIViewController<UITableViewDelegate, UITableViewDataSource, MWAHTTPNotify>
{
  @private
  CWATaskHistoryProposerVO *iTaskHistoryProposerVO;
  CWATaskHistoryHandlerVO *iTaskHistoryHandlerVO;
  IBOutlet CWATaskHistoryController *iTaskHistoryController;
  NSString *iBizTitle;
  NSString *iServiceCode;
  
  @protected
  IBOutlet UIButton *iLeftBtn;
	IBOutlet UITableView *iTableView;
}

/*!
 @property
 @abstract 任务历史提交人值对象
 */
@property (retain, nonatomic) CWATaskHistoryProposerVO *iTaskHistoryProposerVO;

/*!
 @property
 @abstract 任务历史处理人值对象
 */
@property (retain, nonatomic) CWATaskHistoryHandlerVO *iTaskHistoryHandlerVO;
/*!
 @property
 @abstract 业务名称
 */
@property (retain, nonatomic) NSString *iBizTitle;

/*!
 *	@property
 *	@abstract	iServiceCode	服务器编码
 */
@property (retain, nonatomic) NSString *iServiceCode;

/*!
 @property
 @abstract 任务历史控制器
 */
@property (retain, nonatomic) IBOutlet CWATaskHistoryController *iTaskHistoryController;

@end
