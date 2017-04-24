/*!
 	@header	NC63首页列表界面
 	@abstract
 	@discussion
 	@author	huych
 	@copyright	ufida
 	@version	1.0 2013-05-07 09:49:45 Creation
 */
#import "WATaskListViewController.h"
#import "WATaskListNC63Controller.h"

@interface CWATaskListNC63ViewController : CWATaskListViewController <MWATaskHandlerDelegate,MWANC63TaskListControllerDelegate>
{
  CWAGroupButtonView *iGroupButtonView;
  CWAGroupButtonView *iTopGroupButtonView;
  NSMutableArray *iStatusVOs;
  CWATaskListNC63BnsHandler *iTaskBnsHandler;
}
@property (nonatomic,strong,readonly) NSURL *iWebViewURL;
@property (nonatomic,retain) NSMutableArray *iStatusVOs;
@property (nonatomic,retain) CWAGroupButtonView *iTopGroupButtonView;

@end
