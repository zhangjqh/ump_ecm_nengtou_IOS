/*!
 @header WATaskAcListViewController.h
 @abstract 任务动作请求视图
 @author dequan
 @copyright ufida
 @version 1.00 2012/05/26 Creation 
 */


#import <UIKit/UIKit.h>
#import "WATaskAcListController.h"
#import "WATaskDetailViewVO.h"
#import "WAUFTool.h"

@interface CWATaskAcListViewController : UIViewController<MWARightControllerDelegate,UITextViewDelegate>
{
  IBOutlet CWATaskAcListController *iRightController;
  CWATaskDetailViewVO *iFeedVO;
}

- (id)initWithFeedVO:(CWATaskDetailViewVO *)aFeedVO;
@end
