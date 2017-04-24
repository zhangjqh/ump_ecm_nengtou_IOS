#import "WATaskActionViewController.h"
#import "WATaskActionViewVO.h"
#import "WATaskActionNC63Controller.h"

@interface CWATaskActionNC63ViewController : UIViewController
{
  IBOutlet UITableView *iTableView;
  IBOutlet UIView *iBottomView;
  IBOutlet UIButton *iCancelBtn;
  IBOutlet UIButton *iSubmitBtn;
  IBOutlet UINavigationBar *iNavBar;
  CWATaskActionNC63Controller *iTaskActionNC63Controller;
  NSString *iTitle;
}

@property (nonatomic,copy)NSString *iTitle;
@property (nonatomic,readonly)CWATaskActionViewVO *iTaskActionViewVO;
@property (nonatomic,readonly) IBOutlet UITableView *iTableView;
@property (nonatomic, retain) UIButton *iSubmitBtn;

- (id)initWithNibName:(NSString *)nibNameOrNil
               bundle:(NSBundle *)nibBundleOrNil
 WithTaskActionViewVO:(CWATaskActionViewVO *)aTaskActionViewVO
            WithTitle:(NSString *)aTitle;

@end
