#import "WATaskActionNC63ViewController.h"
#import "WAIosVersionAdaptor.h"
#import "AppDelegate.h"

@implementation CWATaskActionNC63ViewController

@synthesize iTaskActionViewVO;
@synthesize iTitle;
@synthesize iTableView;
@synthesize iSubmitBtn;

#define WA_DOACTIONBTN_FONT [UIFont fontWithName:@"STHeitiSC-Light" size:14]
#define WA_YONYOU_RED_COLOR [UIColor colorWithRed:229.0f/255.0f green:0.0f/255.0f blue:17.0f/255.0f alpha:1]
- (id)initWithNibName:(NSString *)nibNameOrNil
               bundle:(NSBundle *)nibBundleOrNil
 WithTaskActionViewVO:(CWATaskActionViewVO *)aTaskActionViewVO
            WithTitle:(NSString *)aTitle
{
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if (self)
  {
    self.iTitle = aTitle;
    iTaskActionNC63Controller = [[CWATaskActionNC63Controller  alloc] initWithTaskActionViewVO:aTaskActionViewVO];
    iTaskActionNC63Controller.iTaskActionNC63ViewController = self;
  }
  return self;
}

- (void)initNav
{
  iNavBar.topItem.title = iTitle;
  
  NSString *cancle = NSLocalizedStringFromTable(@"cancel", @"btarget_task", nil);
  [iCancelBtn setTitle:cancle
              forState:UIControlStateNormal];
  [iCancelBtn setTitleColor:WA_YONYOU_RED_COLOR forState:UIControlStateNormal];
  NSString *submitTitle = NSLocalizedStringFromTable(@"dosubmit", @"btarget_task", nil);
  [iSubmitBtn setTitle:submitTitle
              forState:UIControlStateNormal];
  [iSubmitBtn setTitleColor:WA_YONYOU_RED_COLOR forState:UIControlStateNormal];
  [iSubmitBtn addTarget:iTaskActionNC63Controller action:@selector(submitBtnClick:) forControlEvents:UIControlEventTouchUpInside];
  [iNavBar setBackgroundImage:[UIImage  imageNamed:WA_NEW_TASK_NAV_BG]
                forBarMetrics:UIBarMetricsDefault];
  [CWAIosVersionAdaptor adaptWithNavBar:iNavBar withSpacerWidth:16];
  
}
- (void)viewDidLoad
{
  [super viewDidLoad];
  [self initNav];
  [self initBottomView];
  [iCancelBtn addTarget:iTaskActionNC63Controller
                 action:@selector(cancleBtnclick:)
       forControlEvents:UIControlEventTouchUpInside];
  iTableView.delegate = iTaskActionNC63Controller;
  iTableView.dataSource = iTaskActionNC63Controller;
  //UE适配
  [CWAIosVersionAdaptor adaptIOS6TableViewBackColor:iTableView];
  [CWAIosVersionAdaptor adaptSeperatorLineWithTableView:iTableView];
  iTableView.backgroundColor = WACOLOR(240,240,240);
  [CWAIosVersionAdaptor adaptTableViewNoDataCellSeparator:iTableView];
  [CWAIosVersionAdaptor tableViewSeparatorInset:iTableView];
  [CWAIosVersionAdaptor adaptIOSAutoAdjustsScrollViewInsets:self];
}

- (void)viewDidAppear:(BOOL)animated
{
    [self.iTableView deselectRowAtIndexPath:[self.iTableView indexPathForSelectedRow] animated:YES];
}

-(void)backToDetail{
    UINavigationController * iNav = ((AppDelegate *) [[UIApplication sharedApplication] delegate]).navigationCtl;
    [iNav popViewControllerAnimated:NO];
}

- (void)initBottomView
{
  [iBottomView setHidden:YES];
//  CGRect frameOfTableView = iTableView.frame;
//  frameOfTableView.size.height = frameOfTableView.size.height + iBottomView.frame.size.height;
//  iTableView.frame = frameOfTableView;
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

@end
