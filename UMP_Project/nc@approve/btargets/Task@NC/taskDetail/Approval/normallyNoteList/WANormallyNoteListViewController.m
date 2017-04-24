#import "WANormallyNoteListViewController.h"
#import "WAIosVersionAdaptor.h"

@implementation CWANormallyNoteListViewController

@synthesize iDefaultValueRequsetVO;
@synthesize iTableView;
@synthesize iNodateView;

- (id)initWithNibName:(NSString *)nibNameOrNil
							 bundle:(NSBundle *)nibBundleOrNil
withDefaultValueRequsetVO:(CWADefaultValueRequsetVO *)aDefaultValueRequsetVO
         withDelegate:(id<MWANoteListViewControllerDelegate>)aDelegate;
{
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if (self)
  {
    iNormallyNoteListController = [[CWANormallyNoteListController alloc] init];
    iNormallyNoteListController.iNormallyNoteListViewController = self;
    iNormallyNoteListController.delegate = aDelegate;
    self.iDefaultValueRequsetVO = aDefaultValueRequsetVO;
  }
  return self;
}


- (void)initNav
{
  int maxwidth = [[UIScreen mainScreen] applicationFrame].size.width;
  CGRect inavframe = iNavBar.frame;
  inavframe.size.width = maxwidth;
  iNavBar.frame = inavframe;
  NSString *title = NSLocalizedStringFromTable(@"normallynote", @"btarget_task", nil);
  iNavBar.topItem.title = title;
  if ([iNavBar respondsToSelector:@selector(setBackgroundImage:forBarMetrics:)])
  {
    if(WA_CURENT_OS_V >= 7.0f)
    {
      [iNavBar setBackgroundImage:[UIImage imageNamed:WA_NEW_TASK_NAV_BG]
                   forBarMetrics:UIBarMetricsDefault];
      
      [CWAIosVersionAdaptor adaptWithLeftNavBtn:iLeftBtn];
    }
    else
    {
      [iNavBar setBackgroundImage:[UIImage imageNamed:WA_TASK_NAV_BG]
                    forBarMetrics:UIBarMetricsDefault];
      CGRect frame = iLeftBtn.frame;
      frame.size.height = 32.0f;
      frame.size.width = 32.0f;
      iLeftBtn.frame = frame;
      [iLeftBtn setImage:[UIImage imageNamed:WA_TASK_NAV_BACK_BG]
                forState:UIControlStateNormal];
    }
  }

  [CWAIosVersionAdaptor adaptWithNavBar:iNavBar];
}

- (void)viewDidLoad
{
  int maxwidth = [[UIScreen mainScreen] applicationFrame].size.width;
  [super viewDidLoad];
  if (WA_CURENT_OS_V >= 7.0)
  {
    UIView *iStatusView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, maxwidth, 20)];
    [iStatusView setBackgroundColor:WA_TASK_COLOR_253];
    [self.view addSubview:iStatusView];
    
  }
  
  iNodateView.hidden = YES;
  iTableView.dataSource = iNormallyNoteListController;
  iTableView.delegate = iNormallyNoteListController;
  [CWAIosVersionAdaptor tableViewSeparatorInset:iTableView];
  [CWAIosVersionAdaptor adaptSeperatorLineWithTableView:iTableView];
  CGRect tableFrame = iTableView.frame;
  tableFrame.size.width = maxwidth;
  iTableView.frame = tableFrame;
  [iLeftBtn addTarget:iNormallyNoteListController
               action:@selector(leftBtnClick:)
     forControlEvents:UIControlEventTouchUpInside];
	
  [iNormallyNoteListController getNoteListWithTaskID:iDefaultValueRequsetVO.iTaskid
																			 WithStatusKey:iDefaultValueRequsetVO.iStatuskey
																		 WithStatusValue:iDefaultValueRequsetVO.iStatuscode
																			WithActionCode:iDefaultValueRequsetVO.iActioncode
																		 WithServiceCode:iDefaultValueRequsetVO.iServiceCode];
	
  CGRect iNoDateFrame = iNodateView.frame;
  iNoDateFrame.origin.x = maxwidth/2 - iNoDateFrame.size.width/2;
  iNodateView.frame = iNoDateFrame;

  [self initNav];
  [CWAIosVersionAdaptor adaptIOSAutoAdjustsScrollViewInsets:self];
  self.iTableView.backgroundColor = WA_TASK_COLOR_240;
}

@end
