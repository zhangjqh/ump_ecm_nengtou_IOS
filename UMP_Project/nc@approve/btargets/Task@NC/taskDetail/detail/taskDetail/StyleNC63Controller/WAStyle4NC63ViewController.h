

/*!
 	@header	WAStyle4NC63ViewController.h
 	@abstract	html支持
 	@discussion
 	@author	huych
 	@copyright	ufida
 	@version	1.0 2014-03-03 09:04:24 Creation
 */
#import <UIKit/UIKit.h>
#import "WATaskDetailNC63ViewVO.h"
#import "WAMainBodyContenController.h"
#import "WAStyleDef.h"
#import "WATaskDetailController.h"
#import "WAWebTableViewCell.h"
@interface CWAStyle4NC63ViewController : UITableViewController <UITableViewDataSource,UITabBarDelegate>
{
  IBOutlet UITableView *iTableView;
  NSURL *iURL;
  NSMutableArray *iSectiontitles;
  int indextOfMainbody ;
  int indextOfAttachment ;
  int indextOfApproveHistory;
  CWAMainBodyContenController *iAttachmentController;
  
  CWATaskDetailController *iTaskDetailController;
  //数据源
  CWATaskDetailNC63ViewVO *iFeedVieVO;
}

@property (nonatomic,readonly)NSURL *iURL;

- (id)initWithNibName:(NSString *)nibNameOrNil
               bundle:(NSBundle *)nibBundleOrNil
              WithURL:(NSURL *)aURL;

@property (nonatomic, retain) CWATaskDetailViewVO *iFeedVieVO;
@property (nonatomic, retain) CWATaskDetailController *iTaskDetailController;
@end
