
/*!

 	@header	常用审批意见列表界面类

 	@abstract	

 	@discussion

 	@author	huych

 	@copyright	ufida

 	@version	1.0 2013-05-23 16:10:52 Creation

 */

#import <UIKit/UIKit.h>
#import "WANormallyNoteListController.h"
#import "WADefaultValueRequsetVO.h"
#import "TaskDef.h"




@interface CWANormallyNoteListViewController : UIViewController
{
  CWANormallyNoteListController *iNormallyNoteListController;
  IBOutlet UITableView *iTableView;
  IBOutlet UIImageView *iNodateView;
  IBOutlet UIButton *iLeftBtn;
	IBOutlet UINavigationBar *iNavBar;
	CWADefaultValueRequsetVO *iDefaultValueRequsetVO;
}
@property (nonatomic,readonly)IBOutlet UIImageView *iNodateView;
@property (nonatomic,readonly)IBOutlet UITableView *iTableView;
@property (nonatomic,retain)CWADefaultValueRequsetVO *iDefaultValueRequsetVO;

- (id)initWithNibName:(NSString *)nibNameOrNil
							 bundle:(NSBundle *)nibBundleOrNil
withDefaultValueRequsetVO:(CWADefaultValueRequsetVO *)aDefaultValueRequsetVO
				 withDelegate:(id<MWANoteListViewControllerDelegate>)aDelegate;

@end
