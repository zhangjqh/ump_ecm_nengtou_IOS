/*!
 @header WATaskActionViewController.m
 @abstract 任务处理viewcontroller
 @author dequan
 @copyright ufida
 @version 1.00 2012/05/22 Creation 
 */

#import "WATaskActionViewController.h"
#import "WATaskMacro.h"
#import "WALinkManVO.h"
#import "WAIosVersionAdaptor.h"
#import <QuartzCore/QuartzCore.h>
//默认背景颜色
#define WA_TASK_ACTIONVIEWE_DEFAULT_BACKGROUND [UIColor colorWithRed:230/255.0 green:230/255.0 blue:230/255.0 alpha:1.0]
//navigationbar的tag
#define WA_TASK_ACTION_NAVIGATION_TAG 101
//navigationitem的tag
#define WA_TASK_ACTION_NAVIGATIONITEM_TAG 102
//textview的tag
#define WA_TASK_ACTION_TEXTVIEW_TAG 104
//背景scrollview的tag
#define WA_TASK_ACTION_SCROLLVIEW_TAG 103
//button的tag
#define WA_TASK_ACTION_BUTTON_TAG 105


@interface CWATaskActionViewController ()
//这里可以放property
@end

@implementation CWATaskActionViewController
@synthesize iFlag;
@synthesize iTaskid;
@synthesize iActionVO;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) 
    {
    }
    return self;
}

- (void)viewDidLoad
{
  [super viewDidLoad];
  iActionController.iDelegate = self;
  iActionController.iTaskid = iTaskid;
  iActionController.iServiceCode = iActionVO.iServiceCode;

  //self.view.backgroundColor = WA_TASK_ACTIONVIEWE_DEFAULT_BACKGROUND;
  iLinkmanArray = [[NSMutableArray alloc] initWithCapacity:1];
  iLinkManIDArray = [[NSMutableArray alloc] initWithCapacity:1];
  iAssociateLinkManArray = [[NSMutableArray alloc] initWithCapacity:1];
  
  NSString *actionString = nil;
  if (iFlag == 0 || iFlag == 1 ||iFlag == 2 ||iFlag == 3) 
  {
    actionString = NSLocalizedStringFromTable(@"AssignedTo", @"btarget_task", nil);
  }
  else 
  {
    NSString *to = NSLocalizedStringFromTable(@"to", @"btarget_task", nil);
    actionString = [NSString stringWithFormat:@"%@%@:",iActionVO.iActionname,to];
  }

  iLinkmanField = [[CWAPickerTextField alloc] initWithFrame:CGRectMake(0, 44, 320, WA_TASK_DEFAULT_HEIGHT) actionString:actionString];
	iLinkmanField.iDelegate = self;
  UIScrollView *backGroundScrollview = (UIScrollView *)[self.view viewWithTag:WA_TASK_ACTION_SCROLLVIEW_TAG];
  [backGroundScrollview addSubview:iLinkmanField];
  
  UINavigationBar *aNavigationBar = (UINavigationBar *)[self.view viewWithTag:WA_TASK_ACTION_NAVIGATION_TAG];
  aNavigationBar.topItem.title = iActionVO.iActionname;
  if ([aNavigationBar respondsToSelector:@selector(setBackgroundImage:forBarMetrics:)]) 
  {
    if(WA_CURENT_OS_V >= 7.0f)
    {
      [aNavigationBar setBackgroundImage:[UIImage imageNamed:WA_TASK_NAVIGATIONBAR_BACKGROUND_IMAGE_IOS7]
                         forBarMetrics:UIBarMetricsDefault];

    }
    else
    {
      [aNavigationBar setBackgroundImage:[UIImage imageNamed:WA_TASK_NAVIGATIONBAR_BACKGROUND_IMAGE]
                           forBarMetrics:UIBarMetricsDefault];
    }
  }
  
  [CWAIosVersionAdaptor adaptWithRightNavBtn:iBtn];
  if(WA_CURENT_OS_V >= 7.0f)
  {
    NSString *cancle = NSLocalizedStringFromTable(@"cancel", @"btarget_task", nil);
    [iBtn setTitle:cancle
          forState:UIControlStateNormal];
  }
  
  [CWAIosVersionAdaptor adaptWithNavBar:aNavigationBar];
  [self setElementFrameWithFlag:0];
  
  [iActionController initElements];
  
  UIScrollView *BackGroundScrollView = (UIScrollView *)[self.view viewWithTag:WA_TASK_ACTION_SCROLLVIEW_TAG];
  BackGroundScrollView.contentSize = CGSizeMake(320, 460);
  
  if (iFlag ==1 || iFlag == 3) 
  {
    iLinkmanField.hidden = YES; 
    iGrowTextView  = [[CWAExpandGrowTextView alloc] initWithFrame:CGRectMake(16, 60, 288, 44)];
  }
  else
  {
    iGrowTextView  = [[CWAExpandGrowTextView alloc] initWithFrame:CGRectMake(16, 100, 288, 44)];
  }
  iGrowTextView.iGrowTextView.scrollIndicatorInsets = UIEdgeInsetsMake(4.0f, 0.0f, 10.0f, 0.0f);
  iGrowTextView.delegate = self;
  iGrowTextView.iText = iActionVO.iActionname;
  [BackGroundScrollView addSubview:iGrowTextView];
  
  UIButton *actionButton = (UIButton *)[self.view viewWithTag:WA_TASK_ACTION_BUTTON_TAG];
 
  [actionButton setTitle:NSLocalizedStringFromTable(@"ok", @"btarget_task", nil) forState:UIControlStateNormal];
  
  
  
  [self setActionButtonUserEnabled];
  
  

}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (void)viewWillAppear:(BOOL)animated
{
  [super viewWillAppear:animated];
  
  [iGrowTextView.iGrowTextView becomeFirstResponder]; 
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark -
#pragma mark CWAPickerTextFieldDelegate methods

//添加完联系人后的代理方法
- (void)pickerTextField:(CWAPickerTextField *)aPickerTextField 
       didAddPickerCell:(NSString *)aTitle 
      representedObject:(id)aObj
{
  if (![aObj isKindOfClass:[CWALinkManVO  class]]) 
  {
    return;
  }
  [iLinkmanArray addObject:aObj];
  [iLinkManIDArray addObject:((CWALinkManVO *)aObj).iId];
  [self setActionButtonUserEnabled];
  
  //flag为5 改派 flag为4 驳回时只能添加一个人
  if ((iFlag == 4 ||iFlag == 5 )&& [iLinkmanArray count] > 0) 
  {
    iLinkmanField.iAddPersonButton.hidden = YES; 
  }
}

//删除一个联系人
- (void)pickerTextField:(CWAPickerTextField *)aPickerTextField 
        didRemovePickerCellAtIndex:(NSUInteger)aIndex
{
  [iLinkmanArray removeObjectAtIndex:aIndex];
  [iLinkManIDArray removeObjectAtIndex:aIndex];
  
  if((iFlag == 4 ||iFlag == 5 )&& [iLinkmanArray count] == 0)
  {
    iLinkmanField.iAddPersonButton.hidden = NO; 
  }
  [self setActionButtonUserEnabled];
}

//点击return的反应
- (BOOL)pickerTextFieldShouldReturn:(CWAPickerTextField *)aPickerTextField
{
  NSMutableString *recipient = [NSMutableString string];
	
	NSMutableCharacterSet *charSet = [[NSCharacterSet whitespaceCharacterSet] mutableCopy];
	[charSet formUnionWithCharacterSet:[NSCharacterSet punctuationCharacterSet]];
	
  NSString *rawStr = [[aPickerTextField iInputTextField] text];
	for (int i = 0; i < [rawStr length]; i++)
	{
		if (![charSet characterIsMember:[rawStr characterAtIndex:i]])
		{
			[recipient appendFormat:@"%@",[NSString stringWithFormat:@"%c", [rawStr characterAtIndex:i]]];
		}
	}
  
  if ([rawStr length])
	{
    [aPickerTextField addPickerViewCellWithTitle:rawStr representedObject:recipient];
	}
  
  return NO;
}

//跳转到联系人界面
- (void)goInLinkManView
{
  //设置actiontype
  NSString *actionTye = nil;
  if (iFlag == 0 || iFlag == 1 || iFlag == 2 ||iFlag == 3) 
  {
    actionTye = @"getAssignPsnlist";
  }
  else if (iFlag == 4) 
  {
    actionTye = @"getRejectNoleList";
  }
  else if (iFlag == 5 || iFlag == 6) 
  {
    actionTye = @"getUserlist";
  }
  
  //初始化人员列表界面
  CWALinkManViewController *aLinkManViewController = [[CWALinkManViewController alloc] 
                                                      initWithNibName:@"WALinkManViewController" 
                                                      bundle:nil];
  
  //设置人员列表界面和设置searbar的隐藏情况
  NSString *nextNavigationTitle = nil;
  if (iFlag == 0 || iFlag == 2) 
  {
    nextNavigationTitle= NSLocalizedStringFromTable(@"AssignedTo", @"btarget_task", nil);
    aLinkManViewController.iIsHiddenSearchBar = NO;
  }
  else if (iFlag == 1 || iFlag == 3)
  {
    nextNavigationTitle= NSLocalizedStringFromTable(@"AssignedTo", @"btarget_task", nil);
    aLinkManViewController.iIsHiddenSearchBar = YES;
  }
  else if (iFlag == 4)
  {
    nextNavigationTitle= NSLocalizedStringFromTable(@"RejectedTo", @"btarget_task", nil);
    aLinkManViewController.iIsHiddenSearchBar = YES;
  }
  else if (iFlag == 5 || iFlag == 6)
  {
    nextNavigationTitle= NSLocalizedStringFromTable(@"Operator", @"btarget_task", nil);
    aLinkManViewController.iIsHiddenSearchBar = NO;
  }
  aLinkManViewController.iNavigationTitle = nextNavigationTitle;
  aLinkManViewController.iDelegate = self;
  aLinkManViewController.iFlag = iFlag;
  aLinkManViewController.iServiceCode = iActionVO.iServiceCode;
  
  //进入人员列表
  [aLinkManViewController setRequestLinkManActionType:actionTye andTaskID:iTaskid];
  [self.navigationController pushViewController:aLinkManViewController animated:YES];
}

//放回上一个界面
- (IBAction)gotoLastViewController
{
  [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark -
#pragma mark - CWATaskActionViewController(Private) methods

//根据flag微调ui元素
- (void)setElementFrameWithFlag:(NSInteger)aFlag
{
  UITextView *opitionTextView = (UITextView *)[self.view viewWithTag:WA_TASK_ACTION_TEXTVIEW_TAG];
  opitionTextView.layer.borderColor = [UIColor grayColor].CGColor;
  opitionTextView.layer.borderWidth =1.0;
  opitionTextView.layer.cornerRadius =5.0;
  
  [[NSNotificationCenter defaultCenter] addObserver:self 
                                           selector:@selector(setElementFrameWithHigh:) 
                                               name:WA_TASK_PICKERTEXTFILLD_FRAMECHANGE_NOTICE 
                                             object:nil];
  
  UIScrollView *BackGroundScrollView = (UIScrollView *)[self.view viewWithTag:WA_TASK_ACTION_SCROLLVIEW_TAG];
  BackGroundScrollView.contentSize = CGSizeMake(320, 460);
  
}

//当添加联系人多行时调整ui元素的高度
- (void)setElementFrameWithHigh:(NSNotification *)note
{
  CGFloat aHigh = ((NSNumber *)[[note userInfo] objectForKey:@"high"]).floatValue;
  NSInteger iHigh = (NSInteger)aHigh;

  CGRect textviewFrame = iGrowTextView.frame;
  textviewFrame.origin.y += iHigh;
  iGrowTextView.frame = textviewFrame;
  
  UIButton *actionButton = (UIButton *)[self.view viewWithTag:WA_TASK_ACTION_BUTTON_TAG];
  CGRect actionButtonFrame = actionButton.frame;
  actionButtonFrame.origin.y +=iHigh;
  actionButton.frame = actionButtonFrame;
  
  UIScrollView *backScrollView = (UIScrollView *)[self.view viewWithTag:WA_TASK_ACTION_SCROLLVIEW_TAG];
  CGSize scrollviewSize = backScrollView.contentSize;
  scrollviewSize.height += iHigh;
  backScrollView.contentSize = scrollviewSize;
  
  if (iHigh > 0) 
  {
    CGPoint scrollviewContentOffset = backScrollView.contentOffset; 
    scrollviewContentOffset.y +=iHigh;
    backScrollView.contentOffset = scrollviewContentOffset;
  }
}

//设置actionbutton的可交互性
- (void)setActionButtonUserEnabled
{
  UIButton *actionButton = (UIButton *)[self.view viewWithTag:WA_TASK_ACTION_BUTTON_TAG];
 
   if ((iFlag != 1 && iFlag !=3)&& [iLinkmanArray count] == 0)
  {
    actionButton.userInteractionEnabled = NO; 
  }
  else 
  {
    actionButton.userInteractionEnabled = YES;
  }
}

#pragma mark -
#pragma mark CWALinkManViewControllerDelegate methods

- (void)addLinkMan:(id)aLinkMan
{
  for (CWALinkManVO *operator in iLinkmanArray ) 
  {
    if ([operator.iId isEqualToString:((CWALinkManVO *)aLinkMan).iId]) 
    {
      return;
    }
  }
  [iLinkmanField addPickerViewCellWithTitle:((CWALinkManVO *)aLinkMan).iName representedObject:aLinkMan];
}

//添加一个联系人
- (void)addALinkManWith:(id)aLinkMan
{
  if ([aLinkMan isKindOfClass:[NSMutableArray class]])
  {
    for (CWALinkManVO *operator in aLinkMan)
    {
      [self addLinkMan:operator];
      
    }
  }
  else
  {
    [self addLinkMan:aLinkMan];
  }
  
}

-(void)expandingTextView:(CWAExpandGrowTextView *)expandingTextView willChangeHeight:(float)height
{
  float diff = (expandingTextView.frame.size.height - height);
  
  UIButton *actionButton = (UIButton *)[self.view viewWithTag:WA_TASK_ACTION_BUTTON_TAG];
  CGRect actionButtonFrame = actionButton.frame;
  actionButtonFrame.origin.y -=diff;
  actionButton.frame = actionButtonFrame;
  
  UIScrollView *backScrollView = (UIScrollView *)[self.view viewWithTag:WA_TASK_ACTION_SCROLLVIEW_TAG];
  CGSize scrollviewSize = backScrollView.contentSize;
  scrollviewSize.height -= diff;
  backScrollView.contentSize = scrollviewSize;
  
  if (diff < 0) 
  {
    CGPoint scrollviewContentOffset = backScrollView.contentOffset; 
    scrollviewContentOffset.y -=diff;
    backScrollView.contentOffset = scrollviewContentOffset;
  }
}

#pragma mark -
#pragma mark MWATaskActionControllerDelegate methods

//返回意见的text
- (NSString *)noteForTask
{
  return iGrowTextView.iText;
}

//返回任务后续操作人
- (NSArray *)linkManNameSet
{
  return iLinkManIDArray;
}

//任务的类型
- (NSString *)taskType
{
  return iActionVO.iActionCode; 
}

//键盘是否出现
- (void)setKeyBoardIsVisiable:(BOOL)aIsVisiable
{
  if (aIsVisiable) 
  {
    [iGrowTextView.iGrowTextView becomeFirstResponder];
  }
  else 
  {
    [iGrowTextView.iGrowTextView resignFirstResponder];
  }
  
}
@end

@implementation UINavigationBar (ScrollAnimationNAvigationBar)
//设置navigationbar的背景颜色
-(void)drawRect:(CGRect)rect
{
  UIImage *image = [UIImage imageNamed:WA_TASK_NAVIGATIONBAR_BACKGROUND_IMAGE];
  [image drawInRect:CGRectMake(0,0,self.frame.size.width,self.frame.size.height)];
}

@end





