/*!
 @header CWATaskDetailViewController.m
 @abstract 实现左右滑动的根viewcontroller
 @author dequan
 @copyright ufida
 @version 1.00 2012/05/26 Creation 
 */

#import "WATaskDetailViewController.h"
#import "WATaskMacro.h"
#import "WAStyle0ViewController.h"
#import "WAStyle1ViewController.h"
#import "WAStyle2ViewController.h"
#import "WAStyle3ViewController.h"
#import "WAIosVersionAdaptor.h"
#import "WAStyle4ViewController.h"
#import "AppDelegate.h"

//navigationbar的tag
#define WA_FEEDVIEWCONTROLLER_NAVIGATIONBAR_TAG 101
//任务titlelabletag
#define WA_FEEDVIEWCONTROLLER_TITLELABLE_TAG 102
//imageview的tag
#define WA_FEEDVIEW_IMAGEVIEW_TAG 103
//navigationbar的右边button的tag
#define WA_TASK_FEEDVIEW_NAVIGATIONRIGHTBAR_TAG 104

@interface CWATaskDetailViewController ()
//在这里你可以加上是有的property
@end

@implementation CWATaskDetailViewController
@synthesize iTaskDic;
@synthesize iFeedViewVO;
@synthesize iWebViewURL;

- (id)initWithFeedVO:(CWATaskDetailViewVO *)aFeedVO
{
  if ((self = [super initWithNibName:@"WATaskDetailViewController" bundle:nil])) 
  {
    iFeedViewVO = aFeedVO;
    [[NSNotificationCenter defaultCenter] addObserver:self 
                                             selector:@selector(tableviewBeginScroll) 
                                                 name:WA_TASK_DETAILTABLE_BEGING_SCEOLL 
                                               object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self 
                                             selector:@selector(tableviewEndScroll) 
                                                 name:WA_TASK_DETAILTABLE_END_SCEOLL 
                                               object:nil];
  }
  return self;
}

- (void)viewDidLoad
{
  [super viewDidLoad];
  UINavigationBar *aNavigationBar = (UINavigationBar *)[self.view viewWithTag:WA_FEEDVIEWCONTROLLER_NAVIGATIONBAR_TAG];
  aNavigationBar.topItem.title = NSLocalizedStringFromTable(@"TaskDetails", @"btarget_task", nil);
  if ([aNavigationBar respondsToSelector:@selector(setBackgroundImage:forBarMetrics:)]) 
  {
    if(WA_CURENT_OS_V >= 7.0f)
    {
      [aNavigationBar setBackgroundImage:[UIImage imageNamed:WA_TASK_NAVIGATIONBAR_BACKGROUND_IMAGE_IOS7]
                           forBarMetrics:UIBarMetricsDefault];

      [CWAIosVersionAdaptor adaptWithLeftNavBtn:iLeftBtn];
    
    }
    else
    {
      [aNavigationBar setBackgroundImage:[UIImage imageNamed: WA_TASK_NAVIGATIONBAR_BACKGROUND_IMAGE]
                         forBarMetrics:UIBarMetricsDefault];
    }
  }
    [iLeftBtn addTarget:self action:@selector(backToUp) forControlEvents:UIControlEventTouchUpInside];
  if(WA_CURENT_OS_V >= 7.0f)
  {
    [iRightBtn setBackgroundImage:[UIImage imageNamed:@"nav_bt_menu_ios7"]
                         forState:UIControlStateNormal];
  
    [iRightBtn setBackgroundImage:[UIImage imageNamed:@"nav_bt_menu_ios7"]
                         forState:UIControlStateHighlighted];

    CGRect frame = iRightBtn.frame;
    frame.size.height = 44.0f;
    frame.size.width = 48.0f;
    frame.origin.y = 0;
    iRightBtn.frame = frame;
  }
  UIImageView *imageveiw = (UIImageView *)[self.view viewWithTag:WA_FEEDVIEW_IMAGEVIEW_TAG];
  imageveiw.backgroundColor = WA_TASK_TABLEVIEW_BACKGROUND_COLOR;
  [iFeedController initElementWithStatusDic:iTaskDic];
  iFeedController.iTaskTitle = iFeedViewVO.iTaskTitle;
  iFeedController.iTaskID = iFeedViewVO.iTaskID;
  iFeedController.iServiceCode = iFeedViewVO.iServiceCode;
  iFeedController.iActionArray = iFeedViewVO.iTaskActionArray;
  UILabel *titleLable = (UILabel *)[self.view viewWithTag:WA_FEEDVIEWCONTROLLER_TITLELABLE_TAG];
  titleLable.text = iFeedViewVO.iTaskTitle;
  
  if (!iFeedViewVO.iIsHaveTableBody ||iFeedViewVO.iStyle == 0) 
  {
     iTableviewController = [[CWAStyle0ViewController alloc] initWithNibName:@"WAStyle0ViewController" 
                                                                                         bundle:nil];
    [(CWAStyle0ViewController *)iTableviewController setIFeedVieVO:iFeedViewVO];
    
    [self.view addSubview:iTableviewController.view];
  }
  else if(iFeedViewVO.iStyle == 1)
  {
    iTableviewController = [[CWAStyle1ViewController alloc] initWithNibName:@"WAStyle1ViewController" 
                                                                     bundle:nil];
    [(CWAStyle1ViewController *)iTableviewController setIFeedVieVO:iFeedViewVO];
    [self.view addSubview:iTableviewController.view];
  }
  else if(iFeedViewVO.iStyle == 2 && [iFeedViewVO.iTaskBillBodyArray count] > 2) 
  {
    iTableviewController = [[CWAStyle2ViewController alloc] initWithNibName:@"WAStyle2ViewController" 
                                                                     bundle:nil];
    [(CWAStyle2ViewController *)iTableviewController setIFeedVieVO:iFeedViewVO];
    [self.view addSubview:iTableviewController.view];
  }
  else if (iFeedViewVO.iStyle == 2 && [iFeedViewVO.iTaskBillBodyArray count] <= 2)
  {
    iTableviewController = [[CWAStyle3ViewController alloc] initWithNibName:@"WAStyle3ViewController" 
                                                                     bundle:nil];
    [(CWAStyle3ViewController *)iTableviewController setIFeedVieVO:iFeedViewVO];
    [self.view addSubview:iTableviewController.view];
  }
  else if(iFeedViewVO.iStyle == 3 && iWebViewURL)
  {
  
  iTableviewController = [[CWAStyle4ViewController alloc]
                          initWithNibName:@"WAStyle4ViewController"
                          bundle:nil];
  ((CWAStyle4ViewController *)iTableviewController).iURL = iWebViewURL;
  [(CWAStyle4ViewController *)iTableviewController setIFeedVieVO:iFeedViewVO];
  [self.view addSubview:iTableviewController.view];
  
  
  }
  iFeedController.iActionView = iTableviewController.view;
  [self.view addSubview:iFuzzyImageView];
  [CWAIosVersionAdaptor adaptIOS6FrameWithView:iFuzzyImageView];
  
  CGRect tableviewFrame = iTableviewController.view.frame;
  tableviewFrame.origin.y = 88;
  tableviewFrame.size.height = 480-88;
  if (WA_CURENT_OS_V >= 7.0) {
    tableviewFrame.size.height -= 20;
  }
  [iTableviewController.view setFrame:tableviewFrame];
   [CWAIosVersionAdaptor adaptIOS6FrameWithView:iTableviewController.view];
}
-(void) backToUp{
  UINavigationController *iNav = ((AppDelegate *)[[UIApplication sharedApplication] delegate]).navigationCtl;
  //[iNav popViewControllerAnimated:NO];
}

-(void)viewDidAppear:(BOOL)animated
{
  [super viewDidAppear:animated];
  UITableView *currentTable = ((CWABaseTableViewController*)iTableviewController).tableView;
  [currentTable deselectRowAtIndexPath:[currentTable indexPathForSelectedRow] animated:YES];
}
- (void)viewDidUnload
{
  [super viewDidUnload];
  
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)setNavigatioBarButtonImage:(NSString *)aImageString
{
  UIButton *aButton = (UIButton *)[self.view viewWithTag:WA_TASK_FEEDVIEW_NAVIGATIONRIGHTBAR_TAG];
  [aButton setBackgroundImage:[UIImage imageNamed:aImageString] forState:UIControlStateNormal];
  
}

- (void)tableviewBeginScroll
{
  iFuzzyImageView.hidden = NO;
}

- (void)tableviewEndScroll
{
  iFuzzyImageView.hidden = YES;
}

//设置navigationbar的rightnavigationItem为空
- (void)removeRightNavigationItem
{
  UINavigationBar *navigationBar = (UINavigationBar*)[self.view viewWithTag:WA_FEEDVIEWCONTROLLER_NAVIGATIONBAR_TAG];
  navigationBar.topItem.rightBarButtonItem = nil;
}

- (void)adaptNavBar
{
    UINavigationBar *navigationBar = (UINavigationBar*)[self.view viewWithTag:WA_FEEDVIEWCONTROLLER_NAVIGATIONBAR_TAG];
  [CWAIosVersionAdaptor adaptWithNavBar:navigationBar];
}

@end

@implementation UINavigationBar (ScrollAnimationNAvigationBar)

-(void)drawRect:(CGRect)rect
{
  UIImage *image = [UIImage imageNamed:WA_TASK_NAVIGATIONBAR_BACKGROUND_IMAGE];
  [image drawInRect:CGRectMake(0,0,self.frame.size.width,self.frame.size.height)];
}
@end
