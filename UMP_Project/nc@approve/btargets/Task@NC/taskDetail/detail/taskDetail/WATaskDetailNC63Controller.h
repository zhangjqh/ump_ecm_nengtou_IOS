/*!
 	@header	任务详情界面控制类
 	@abstract
 	@discussion
 	@author	huych
 	@copyright	ufida
 	@version	1.0 2013-05-16 18:53:05 Creation
 */
#import "WATaskDetailController.h"
#import "WATaskDetailNC63ViewController.h"
#import "WATaskActionNC63ViewController.h"
@interface CWATaskDetailNC63Controller : CWATaskDetailController<UIActionSheetDelegate>

{
  IBOutlet CWATaskDetailNC63ViewController *iTaskDetailNC63ViewController;
}

- (void)actionBtnClick:(id)sender;

- (IBAction)showMore;
@end
