/*!
 @header WATaskAcListViewController.m
 @abstract 任务动作请求视图
 @author dequan
 @copyright ufida
 @version 1.00 2012/05/26 Creation 
 */

#import "WAMenuListViewController.h"
#import "AppDelegate.h"
#define WA_TASKDETAIL_RIGHT_TABLEVIEW_TAG 101


@implementation CWAMenuListViewController

@synthesize iRightController;
@synthesize iDelegate;

static NSString *WA_MENULIST_BD = @"menu_list_bg.png";
static NSString *WA_MENULIST_586_BD = @"menu_list_bg-568h@2x.png";

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if(self)
  {
    iRightController = [[CWAMenuListController alloc] init];
    iRightController.iMenuListViewController = self;
  }
  return self;
}


- (void)viewDidLoad
{
  [super viewDidLoad];
  self.view.backgroundColor = [UIColor redColor];
  
  UITableView *aTableveiw = (UITableView *)[self.view viewWithTag:WA_TASKDETAIL_RIGHT_TABLEVIEW_TAG];
  aTableveiw.delegate = iRightController;
  aTableveiw.dataSource = iRightController;
  aTableveiw.separatorStyle = UITableViewCellSeparatorStyleNone;
  
  if(!IS_WIDESCREEN)
  {
    aTableveiw.backgroundView = [[UIImageView alloc] initWithImage:
                                  [UIImage imageNamed:WA_MENULIST_BD]] ;
  }
  else
  {
    aTableveiw.backgroundView = [[UIImageView alloc] initWithImage:
                                [UIImage imageNamed:WA_MENULIST_586_BD]];
  }

}

- (void)viewWillAppear:(BOOL)animated
{
  [super viewWillAppear:animated];
  UITableView *aTableveiw = (UITableView *)[self.view viewWithTag:WA_TASKDETAIL_RIGHT_TABLEVIEW_TAG];
  [aTableveiw reloadData];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (BOOL)textViewShouldBeginEditing:(UITextView *)textView
{
  return NO;
}
@end
