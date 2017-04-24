/*!
 @header CWATaskListRowViewController.m
 @abstract 消息动作列表的界面
 @author dequan
 @copyright ufida
 @version 1.00 2012/05/26 Creation 
 */

#import "WATaskListRowViewController.h"
#import "WAStyleDef.h"
#import "WATaskMacro.h"
#import "WAIosVersionAdaptor.h"
#import "WAShowDetailTextView.h"
//navigationbartag
#define WA_TASKROW_NAVIGATION_BAR_TAG 101
#import "WABaseTableViewController.h"
#import "AppDelegate.h"
@interface CWATaskListRowController ()

@end

@implementation CWATaskListRowViewController
@synthesize iDataArray;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
  [super viewDidLoad];
  
  iTableView.backgroundColor = WA_TASK_TABLEVIEW_BACKGROUND_COLOR;
  
  
  UINavigationBar *aNavigationBar = (UINavigationBar *)[self.view viewWithTag:WA_TASKROW_NAVIGATION_BAR_TAG];
  
  [CWAIosVersionAdaptor adaptWithNavBar:aNavigationBar];
  
  [CWAIosVersionAdaptor adaptIOSAutoAdjustsScrollViewInsets:self];
  
  aNavigationBar.topItem.title = NSLocalizedStringFromTable(@"TaskRow", @"btarget_task", nil);
  if ([aNavigationBar respondsToSelector:@selector(setBackgroundImage:forBarMetrics:)]) 
  {
    if(WA_CURENT_OS_V >= 7.0f)
    {
      [aNavigationBar setBackgroundImage:[UIImage imageNamed:WA_TASK_NAVIGATIONBAR_BACKGROUND_IMAGE_IOS7]
                           forBarMetrics:UIBarMetricsDefault];
      [CWAIosVersionAdaptor adaptWithLeftNavBtn:iLeftBtn];
      [iLeftBtn addTarget:self action:@selector(returnBack) forControlEvents:UIControlEventTouchUpInside];
    }
    else
    {
      [aNavigationBar setBackgroundImage:[UIImage imageNamed:WA_TASK_NAVIGATIONBAR_BACKGROUND_IMAGE]
                           forBarMetrics:UIBarMetricsDefault];
    }
  }
	
	UILongPressGestureRecognizer *longPressReger = [[UILongPressGestureRecognizer alloc]
																									
																									initWithTarget:self action:@selector(handleLongPress:)];
	
	longPressReger.minimumPressDuration = 1.0;
	
	[iTableView addGestureRecognizer:longPressReger];
}

-(void)handleLongPress:(UILongPressGestureRecognizer *)gestureRecognizer

{
	
	CGPoint point = [gestureRecognizer locationInView:iTableView];
	
	
	
	if(gestureRecognizer.state == UIGestureRecognizerStateEnded)
		
		{
		NSIndexPath *indexPath = [iTableView indexPathForRowAtPoint:point];
		
		if (indexPath == nil)
			{
			
			}
		
		else
			{
			[self doubleTap:indexPath];
			}
		}
	
	
	
	
}

-(void)returnBack{
    UINavigationController *navController = ((AppDelegate *)[[UIApplication sharedApplication] delegate]).navigationCtl ;
    [navController popViewControllerAnimated:YES];
}
-(void)doubleTap:(NSIndexPath *)indexPath
{
	NSArray *aDataArray = [[iDataArray objectAtIndex:indexPath.row] objectForKey:@"item"];
	
	if([aDataArray count] > 1)
	{
		NSString *detail = [[aDataArray objectAtIndex:1]objectForKey:@"value"];
	
		CGRect frame = [[UIScreen mainScreen ] bounds];
		CGRect showFrame = CGRectInset(frame, 16.0f, 16.0f);
		CWAShowDetailTextView *showDetailTextView = [[CWAShowDetailTextView alloc] initWithText:detail withShowFrame:showFrame withFrame:frame];
		[showDetailTextView show];
	}

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

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
  return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  return [iDataArray count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
  return 24.0f;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  static NSString *CellIdentifier = @"TaskBillHeader";

  UITableViewCell *cell  = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
  if (cell == nil) 
  {
    cell = [[[NSBundle mainBundle] loadNibNamed:@"WATaskBillHeader"  owner:self options:nil] lastObject];  
  }
  cell.selectionStyle = UITableViewCellSelectionStyleNone;
  
  NSArray *aDataArray = [[iDataArray objectAtIndex:indexPath.row] objectForKey:@"item"];
  if (!aDataArray || [aDataArray count] == 0) 
  {
    return cell;
  }
  
  UILabel *lable1 = (UILabel *)[cell viewWithTag:WA_TASK_BILLHEADER_LABLE1_TAG];
  NSString *aString = [[aDataArray objectAtIndex:0]objectForKey:@"value"];
//  NSString *displayString = [aString stringByAppendingString:@":"];
  lable1.text = aString;
  [CWABaseTableViewController changeTextFontAndColorWithItem:0 forLabel:lable1];
  lable1.textColor = [UIColor blackColor];
  UILabel *lable2 = (UILabel *)[cell viewWithTag:WA_TASK_BILLHEADER_LABLE2_TAG];
  NSString *aString_2 = [[aDataArray objectAtIndex:1]objectForKey:@"value"];
  NSRange ranges = [aString_2 rangeOfString:@":"];
  if (ranges.location != NSNotFound) {
      aString_2 = [aString_2 substringWithRange:NSMakeRange(0, ranges.location - 2)];
  }
  lable2.text = aString_2;
  [CWABaseTableViewController changeTextFontAndColorWithItem:1 forLabel:lable2];
  cell.backgroundColor = WACOLOR(253, 253, 253);
  return cell;
}

@end

@implementation UINavigationBar (ScrollAnimationNAvigationBar)

-(void)drawRect:(CGRect)rect
{
  UIImage *image = [UIImage imageNamed:WA_TASK_NAVIGATIONBAR_BACKGROUND_IMAGE];
  [image drawInRect:CGRectMake(0,0,self.frame.size.width,self.frame.size.height)];
}
@end
