

#import "WAHTMLContentViewController.h"
#import "WAHTMLContentController.h"
#import "WASpinnerView.h"
#import "WAIosVersionAdaptor.h"

@implementation CWAHTMLContentViewController

@synthesize iStatuskey;
@synthesize iStatuscode;
@synthesize iID;
@synthesize iServiceCode;
@synthesize iTaskID;


static NSString *HTML_NAV_BD_IMAGE_IOS7 = @"nav.png";

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if (self)
  {
    iHTMLContentController = [[CWAHTMLContentController alloc] init];
  }
  return self;
}

- (void)viewDidLoad
{
  [super viewDidLoad];
  int maxWidth = [[UIScreen mainScreen] applicationFrame].size.width;
  UINavigationBar *navBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0.00f, 0.00f, maxWidth,44.0f)];
  if ([navBar respondsToSelector:@selector(setBackgroundImage:forBarMetrics:)])
  {
      [navBar setBackgroundImage:[UIImage imageNamed:HTML_NAV_BD_IMAGE_IOS7]
                 forBarMetrics:UIBarMetricsDefault];
  }
  
  UINavigationItem *navItem = [[UINavigationItem alloc] init] ;
	navBar.items = [NSArray arrayWithObject:navItem];
  
  NSString *mainbody = NSLocalizedStringFromTable(@"mainbody", @"btarget_task", nil);
  navItem.title =  mainbody;
  
  CGRect btnFrame = CGRectMake(0.00f, 0.00f, 51.0f, 30.0f);
  UIButton *btn = [[UIButton alloc] initWithFrame:btnFrame];
  
  if(WA_CURENT_OS_V >= 7.0f )
  {  
    [CWAIosVersionAdaptor adaptWithLeftNavBtn:btn];
  }
  else
  {
    [btn setBackgroundImage:[UIImage imageNamed:@"nav_back_btn.png" ]
                   forState:UIControlStateNormal];
  }
  
  UIBarButtonItem *left = [[UIBarButtonItem alloc] initWithCustomView:btn];
  [btn addTarget:iHTMLContentController
          action:@selector(leftBtnClick)
forControlEvents:UIControlEventTouchUpInside];
  
  navItem.leftBarButtonItem= left;
  [CWAIosVersionAdaptor adaptWithNavBar:navBar];
  [CWAIosVersionAdaptor adaptIOS6BackgroudColorWithViewController:self];
  [CWAIosVersionAdaptor adaptIOS6FrameWithView:navBar];
    
  [self.view addSubview:navBar];
  
  CGFloat heght = CGRectGetHeight(self.view.frame);
  iWebView = [[UIWebView alloc] initWithFrame: CGRectMake(0.00f, 44.0f, maxWidth, heght - 44.0f)];
  [CWAIosVersionAdaptor adaptIOS6FrameWithView:iWebView];
  iWebView.autoresizingMask = UIViewAutoresizingFlexibleTopMargin|UIViewAutoresizingFlexibleHeight| UIViewAutoresizingFlexibleBottomMargin;
  [self.view addSubview:iWebView];
  
  //等待视图
  NSString *text  = NSLocalizedStringFromTable(@"Wait", @"btarget_task", nil);
  [[CWASpinnerView sharedCWASpinnerView] showInWindowsIsFullScreen:NO withShowingText:text];
  
 
  
  [iHTMLContentController getHTMLContentWithTaskID:iTaskID
                                     WithStatuskey:iStatuskey
                                    WithStatuscode:iStatuscode
                                            WithID:iID
                                      WithDownflag:@"0"
                                   WithServiceCode:iServiceCode
                                   WithReturnBlock:^(NSURL *aURL)
   {
  
     NSURLRequest *request = [[NSURLRequest alloc] initWithURL:aURL];
     [iWebView loadRequest:request];
    [[CWASpinnerView sharedCWASpinnerView] hiddenSpinnerView];
   }
   ];
    
}


- (void)viewWillAppear:(BOOL)animated
{
  [super viewWillAppear:animated];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
