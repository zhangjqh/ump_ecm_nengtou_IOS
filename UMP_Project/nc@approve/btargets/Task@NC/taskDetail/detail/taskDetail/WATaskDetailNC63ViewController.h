
/*!

 	@header	任务明细界面

 	@abstract	

 	@discussion

 	@author	huych

 	@copyright	ufida

 	@version	1.0 2013-05-11 09:21:38 Creation

 */

#import "WATaskDetailViewController.h"
#import "WATaskListNC63BnsHandler.h"

@interface CWATaskDetailNC63ViewController : CWATaskDetailViewController<MWATaskHandlerDelegate>
{
  IBOutlet UIView *iBottomView;
	NSString *iTaskID;
	NSString *iServiceCode;
	NSString *iStatusKey;
	NSString *iStatusCode;
	CWATaskListNC63BnsHandler *iTaskBnsHandler;
  NSString *iErrorMessage;
}
@property (copy,nonatomic)NSString *iErrorMessage;
@property (copy,nonatomic)NSString *iTaskID;
@property (copy,nonatomic)NSString *iServiceCode;
@property (copy,nonatomic)NSString *iStatusKey;
@property (copy,nonatomic)NSString *iStatusCode;
@end
