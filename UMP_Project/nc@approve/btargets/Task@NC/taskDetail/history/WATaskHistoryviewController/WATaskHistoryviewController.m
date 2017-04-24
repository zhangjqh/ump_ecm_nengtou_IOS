/*!
 @header WATaskHistoryviewController.h 
 @abstract 任务历史测试工程 ViewController
 @author Created by Li Xiaopeng on 12-5-22.
 @version 1.00 2012/5/22 Creation (此文档的版本信息)
 */

#import "WATaskHistoryviewController.h"
#import "WAProposerTableCell.h"
#import "WAHandlerTableCell.h"
#import "WAContactViewController.h"
#import "WAContactVO.h"
#import "WAContactDetailVO.h"
#import "WATaskHistoryController.h"
#import "WAIosVersionAdaptor.h"
#import "WAShowDetailTextView.h"
#import "WAIosVersionAdaptor.h"
#import "TaskDef.h"
/*!
 @class
 @abstract 任务历史视图控制器
 */
@implementation CWATaskHistoryviewController

//NSUInteger taptime;

@synthesize iTaskHistoryProposerVO;

@synthesize iTaskHistoryHandlerVO;

@synthesize iTaskHistoryController;

@synthesize iBizTitle;

@synthesize iServiceCode;

static NSString *proposerTableCellIdentifier = @"ProposerTableCell";
static NSString *handlerTableCellIdentifier = @"HandlerTableCell";
#define WA_YONYOU_RED_COLOR [UIColor colorWithRed:229.0f/255.0f green:0.0f/255.0f blue:17.0f/255.0f alpha:1]

static const NSUInteger TASK_HISTORY_NAVIGATION_Bar = 101;
static const NSUInteger TASK_HISTORY_TITLE_TAG = 102;
static const NSUInteger TASK_HISTORY_FLOAT_SHADOW_IMAGE_TAG = 103;
static NSString *TASK_HISTORY__NAV_BD_IMAGE = @"nav_bd.png";
static NSString *TASK_HISTORY__NAV_BD_IMAGE_IOS7 = @"nav.png";

/*!
 @method 
 @abstract 用xib进行初始化
 @discussion 
 @param nibNameOrNil xib文件名字 
 @param nibBundleOrNil 
 @result 
 */
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if (self) 
  {          
//    iTaskHistoryProposerVO = [[CWATaskHistoryProposerVO alloc] init];
//    iTaskHistoryHandlerVO = [[CWATaskHistoryHandlerVO alloc] init];
  }
  return self;
}

/*!
 @method 
 @abstract 视图控制器销毁时发送的消息
 @discussion 
 @result 
 */
- (void)dealloc 
{
  self.iTaskHistoryController = nil;
  self.iTaskHistoryProposerVO = nil;
  self.iTaskHistoryHandlerVO = nil;
  self.iBizTitle = nil;
  
}

/*!
 @method 
 @abstract view显示时加载数据
 @discussion 
 @result 
 */
- (void)viewDidLoad
{
  self.iTaskHistoryController.iWATaskHistoryviewController = self;
  self.navigationController.navigationBarHidden=YES;
  
  UINavigationBar *navigationBar = (UINavigationBar *)[self.view viewWithTag:TASK_HISTORY_NAVIGATION_Bar];
  navigationBar.topItem.title = NSLocalizedStringFromTable(@"TaskHistoryTitle", @"btarget_task", nil);
  if ([navigationBar respondsToSelector:@selector(setBackgroundImage:forBarMetrics:)]) 
  {
      [navigationBar setBackgroundImage:[UIImage imageNamed:TASK_HISTORY__NAV_BD_IMAGE_IOS7]
                         forBarMetrics:UIBarMetricsDefault];
  }
  [CWAIosVersionAdaptor adaptWithNavBar:navigationBar];
//  UILabel *bizTitle = (UILabel *)[self.view viewWithTag:TASK_HISTORY_TITLE_TAG];
//
//  bizTitle.text = iBizTitle;
//  [bizTitle removeFromSuperview];

  UIImageView *floatShadowImage = (UIImageView *)[self.view viewWithTag:TASK_HISTORY_FLOAT_SHADOW_IMAGE_TAG];
  floatShadowImage.hidden = YES;
  [super viewDidLoad];
  if(WA_CURENT_OS_V >= 7.0f)
  {
    [CWAIosVersionAdaptor adaptWithLeftNavBtn:iLeftBtn];
  }
	
	
	UILongPressGestureRecognizer *longPressReger = [[UILongPressGestureRecognizer alloc]
																									
																									initWithTarget:self action:@selector(handleLongPress:)];
	
	longPressReger.minimumPressDuration = 1.0;
  
	
	[iTableView addGestureRecognizer:longPressReger];
  iTableView.separatorColor = WA_TASK_COLOR_223;
  if(WA_CURENT_OS_V >= 7.0f)
  {
    iTableView.contentInset = UIEdgeInsetsMake(-20, 0, 0, 0);
  }
  [iTableView setBackgroundColor:[UIColor colorWithRed:240.0f/255.0f green:240.0f/255.0f blue:240.0f/255.0f alpha:1.0f]];
  self.view.backgroundColor = [UIColor colorWithRed:255.0f/255.0f green:255.0f/255.0f blue:255.0f/255.0f alpha:1.0f];
  [CWAIosVersionAdaptor tableViewSeparatorInset:iTableView];
	

}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:YES];
    [iTableView deselectRowAtIndexPath:[iTableView indexPathForSelectedRow] animated:YES];
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
/*!
 @method 
 @abstract view卸载时的处理
 @discussion 
 @result 
 */
- (void)viewDidUnload
{
  self.iTaskHistoryController = nil;
  self.iTaskHistoryProposerVO = nil;
  self.iTaskHistoryHandlerVO = nil;
  self.iBizTitle = nil;
  [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

/*!
 @method 
 @abstract 是否可以在某个列表项进行编辑
 @discussion
 @param tableView 表格视图的指针 
 @param canEditRowAtIndexPath 列表项的指示路径
 @result 
 */
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
  return NO;
}

/*!
 @method 
 @abstract 定义列表试图的段落数
 @discussion
 @param tableView 表格视图的指针 
 @result 返回段落数
 */
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
  return 2;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
	return 24.0f;
}

/*!
 @method 
 @abstract 设置表格单元的标题视图
 @discussion
 @param tableView 表格视图的指针 
 @param section 表格段落编号
 @result 
 */
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section 
{
  NSString *HeaderString = nil;
  
  switch (section) 
  {
    case 0:
      HeaderString=NSLocalizedStringFromTable(@"Proposer", @"btarget_task", nil);;
      break;
      
    case 1:
      HeaderString= NSLocalizedStringFromTable(@"Handler", @"btarget_task", nil);;
      break;
      
    default:
      HeaderString= NSLocalizedStringFromTable(@"Proposer", @"btarget_task", nil);;
      break;
  }
  
  UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 8, 320, 24)];
  headerView.backgroundColor = [UIColor clearColor];
  
  UILabel *HeaderLabel = [[UILabel alloc] initWithFrame:CGRectMake(16, 0, 288, 24)];
  HeaderLabel.backgroundColor = [UIColor clearColor];
  HeaderLabel.font = [UIFont fontWithName:@"HiraKakuProN-W3"
                                 size:12];
  
  HeaderLabel.textColor = [UIColor grayColor];
  
  @try 
  {
    HeaderLabel.text = HeaderString;
  }
  @catch (NSException *exception) 
  {
    
  }

  [headerView addSubview:HeaderLabel];
  return headerView;
}

/*!
 @method 
 @abstract 返回列表数目
 @discussion
 @param tableView 表格视图的指针 
 @param section 段落编号
 @result 
 */
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{  
  switch (section) 
  {
    case 0: 
      return 1;  
      break;
      
    case 1:
      return iTaskHistoryHandlerVO.iHandlerDetailVOArray.count;      
      break;
      
    default:
      break;
      
  }
  return 1;
}

/*!
 @method 
 @abstract 设置表格单元的高度
 @discussion
 @param tableView 表格视图的指针 
 @param indexPath 列表项的指示路径
 @result 
 */
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath 
{
  NSInteger section = indexPath.section;
  switch (section) 
  {
    case 0: 
      return 48.0f;
      break;
      
    case 1:
      return 58.0f;
      break;
      
    default:
      break;
  }
  return 48.0f;
}

/*!
 @method 
 @abstract 自定义列表项
 @discussion
 @param tableView 表格视图的指针 
 @param indexPath 列表项的指示路径
 @result 
 */
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  NSInteger section = indexPath.section;
  @try 
  {
    switch (section) 
    {
      case 0: 
      {
        CWAProposerTableCell* wAProposerTableCell = [tableView dequeueReusableCellWithIdentifier:proposerTableCellIdentifier];
        if (nil == wAProposerTableCell) 
        {
          NSArray *array = [[NSBundle mainBundle] loadNibNamed:@"WAProposerTableCell" owner:self options:nil];         
          wAProposerTableCell = [array objectAtIndex:0]; 
          wAProposerTableCell.iProposerName.text = self.iTaskHistoryProposerVO.iProposerName;
          wAProposerTableCell.iProposerName.text = self.iTaskHistoryProposerVO.iProposerName;
    
          wAProposerTableCell.iProposeDate.text = self.iTaskHistoryProposerVO.iProposeDate;
          [CWAIosVersionAdaptor adaptTableViewCell:wAProposerTableCell];
        }
        return wAProposerTableCell;
        
      }
      break;
        
      case 1:
      {
        
        CWAHandlerTableCell *wAHandlerTableCell = [tableView dequeueReusableCellWithIdentifier:handlerTableCellIdentifier];
        if (nil == wAHandlerTableCell) 
        {
          NSInteger row = indexPath.row;
          CWATaskHistoryHandlerDetailVO *taskHistoryHandlerDetailVO = [iTaskHistoryHandlerVO.iHandlerDetailVOArray objectAtIndex:row];
          
          NSArray *array = [[NSBundle mainBundle] loadNibNamed:@"WAHandlerTableCell" owner:self options:nil];         
          wAHandlerTableCell = [array objectAtIndex:0]; 
          wAHandlerTableCell.iHandlerName.text  = taskHistoryHandlerDetailVO.iHandlerName;
//          NSString *handlerName = taskHistoryHandlerDetailVO.iHandlerName;
//        
//          if ([handlerName length] > 3) 
//          {
//            wAHandlerTableCell.iHandlerName.text = [NSString stringWithFormat:@"%@%@", [handlerName substringToIndex:3] , @"..."];
//          } 
//          else 
//          {
//            wAHandlerTableCell.iHandlerName.text = taskHistoryHandlerDetailVO.iHandlerName;
//          }
          
          wAHandlerTableCell.iHandlerIdea.text = taskHistoryHandlerDetailVO.iHandlerIdea;
          wAHandlerTableCell.iHandlerDetail.text = taskHistoryHandlerDetailVO.iHandlerDetail;
          wAHandlerTableCell.iHandlerDate.text = taskHistoryHandlerDetailVO.iHandlerDate;
          [CWAIosVersionAdaptor adaptTableViewCell:wAHandlerTableCell];
        }
        return wAHandlerTableCell;
        
      }      
      break;
        
      default:
        break;
        
    }
  }
  @catch (NSException *exception) 
  {
    
  }
  return nil;
}

/*!
 @method 
 @abstract 用户点击特定的列表项之后的响应
 @discussion
 @param tableView 表格视图的指针
 @param indexPath 列表项的指示路径
 @result 
 */
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{    
  NSInteger section = indexPath.section;
  NSString *psnID = nil;
  switch (section) 
  {
    case 0: 
      psnID = iTaskHistoryProposerVO.iPnsID;
			[self.iTaskHistoryController sendHttpRequestWithPsnID:psnID
																								withSection:section
																						withServiceCode:self.iServiceCode];
      break;
    
    case 1:
		{
			//如果两次点击的时间间隔小于1秒，则断定为双击事件
//			NSUInteger curr = [[NSDate date] timeIntervalSince1970];
//			[NSObject cancelPreviousPerformRequestsWithTarget:self];
//		
//			
//			if (curr-taptime < 1)
//			{
//				[self doubleTap:indexPath];
//				return;
//			}
//			else
//			{
		[self nextView:indexPath];
//				[self performSelector:@selector(nextView:) withObject:indexPath afterDelay:0.5];
//			}
//	
//			taptime = curr;
    
		}
      break;
      
    default:
      break;
      
  }

}

- (void)nextView:(NSIndexPath *)indexPath
{
	NSString	 * psnID = [[iTaskHistoryHandlerVO.iHandlerDetailVOArray objectAtIndex:indexPath.row] iPnsID];
	[self.iTaskHistoryController sendHttpRequestWithPsnID:psnID
																						withSection:indexPath.section
																				withServiceCode:self.iServiceCode];
	
}

-(void)doubleTap:(NSIndexPath *)indexPath
{
	NSString *detail = [[iTaskHistoryHandlerVO.iHandlerDetailVOArray objectAtIndex:indexPath.row] iHandlerDetail];
	CGRect frame = [[UIScreen mainScreen ] bounds];
	CGRect showFrame = CGRectInset(frame, 16.0f, 16.0f);
	CWAShowDetailTextView *showDetailTextView = [[CWAShowDetailTextView alloc] initWithText:detail withShowFrame:showFrame withFrame:frame];
	[showDetailTextView show];
}
/*!
 @method 
 @abstract 当表格结束滚动的时候隐藏浮动视图
 @discussion
 @param scrollView 滚动视图的指针 
 @result 
 */
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
  //[self.iTaskHistoryController scrollViewDidEndDecelerating:scrollView];
}

/*!
 @method 
 @abstract 当表格开始滚动的时候显示浮动视图
 @discussion
 @param scrollView 滚动视图的指针 
 @result 
 */
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
  //[self.iTaskHistoryController scrollViewWillBeginDragging:scrollView];
}

@end

#pragma mark ios 5.0以下使用此方法修改导航栏的颜色
@implementation UINavigationBar (LoginImageNAvigationBar)
-(void)drawRect:(CGRect)rect
{
  UIImage *image = [UIImage imageNamed:TASK_HISTORY__NAV_BD_IMAGE];
  [image drawInRect:CGRectMake(0,0,self.frame.size.width,self.frame.size.height)];
}

@end