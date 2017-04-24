/*!
 @header WATaskAcListViewController.m
 @abstract 任务动作请求视图
 @author dequan
 @copyright ufida
 @version 1.00 2012/05/26 Creation 
 */

#import "WATaskAcListViewController.h"
#import "WATaskActionViewController.h"
#import "AppDelegate.h"
#import "WAIosVersionAdaptor.h"

#define WA_TASKDETAIL_RIGHT_TABLEVIEW_TAG 101

@interface CWATaskAcListViewController ()

@end

@implementation CWATaskAcListViewController

- (id)initWithFeedVO:(CWATaskDetailViewVO *)aFeedVO
{
  self = [super initWithNibName:@"WATaskAcListViewController" bundle:nil];
  if (self) 
  {
    iFeedVO = aFeedVO;
  }
  return self;
}

- (void)viewDidLoad
{
  [super viewDidLoad];
  self.view.backgroundColor = [UIColor whiteColor];
  [iRightController initElementsDic:iFeedVO.iTaskActionArray];
  
  UITableView *aTableveiw = (UITableView *)[self.view viewWithTag:WA_TASKDETAIL_RIGHT_TABLEVIEW_TAG];
  aTableveiw.separatorStyle = UITableViewCellSeparatorStyleNone;
  
  if(!IS_WIDESCREEN)
  {
    aTableveiw.backgroundView = [[UIImageView alloc] initWithImage:
                                  [UIImage imageNamed:@"task_aclist_bg.png"]];
  }
  else
  {
    aTableveiw.backgroundView = [[UIImageView alloc] initWithImage:
                                [UIImage imageNamed:@"task_aclist_bg-568h@2x.png"]];
  }
  [CWAIosVersionAdaptor adaptIOS6HeaderBlankWithTableView:aTableveiw];
  [CWAIosVersionAdaptor adaptIOS6FrameWithView:aTableveiw];
  //加上动作列表提示信息
  if (iFeedVO.iTaskAcListHint && ![iFeedVO.iTaskAcListHint isEqualToString:@""]) 
  {
    UITextView *tipTextView = [[UITextView alloc] initWithFrame:CGRectMake(75, 310, 240, 150)];
    tipTextView.alpha = 0.6f;
    tipTextView.text = iFeedVO.iTaskAcListHint;
    [self.view addSubview:tipTextView];
    tipTextView.delegate = self;
  }
}

- (void)viewWillAppear:(BOOL)animated
{
  [super viewWillAppear:animated];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)goTaskActionControllerWithData:(CWATaskAcListVO *)aRightVO
{
   //UINavigationController *navController = ((AppDelegate *)[[UIApplication sharedApplication] delegate]).iNavigationController;
   //CWATaskActionViewController *aActionViewController = [[CWATaskActionViewController alloc]
   //                                                     initWithNibName:@"WATaskActionViewController"
   //                                                     bundle:nil];
   //aActionViewController.iFlag = aRightVO.iActFlag;
   //aActionViewController.iTaskid = iFeedVO.iTaskID;
   //aActionViewController.iActionVO = aRightVO;
   //[navController pushViewController:aActionViewController animated:YES];

}

- (BOOL)textViewShouldBeginEditing:(UITextView *)textView
{
  return NO;
}
@end
