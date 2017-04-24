/*!
 @header WALinkManViewController.m
 @abstract 联系人界面viewcontroller
 @author dequan
 @copyright ufida
 @version 1.00 2012/05/22 Creation
 */

#import "WALinkManViewController.h"
#import "WATaskMacro.h"
#import "WALinkManVO.h"
#import "WAIosVersionAdaptor.h"
#import "TaskDef.h"
#import "WANoDataView.h"

  //navigationbar的tag
#define WA_TASK_LINKMAN_NAVIGATION_TAG 101
  //searchbar的tag
#define WA_TASK_LIANKMAN_SEARCHBAR_TAG 102
  //编码lable的tag1
#define WA_TASK_LIANKMAM_MARKLABLE 103
  //姓名lable的tag
#define WA_TASK_LIANKMAN_NAMELABLE 104
  //编码lable的tag1
#define WA_TASK_LIANKMAM_BGIMG 105

#define WA_YONYOU_RED_COLOR [UIColor colorWithRed:229.0f/255.0f green:0.0f/255.0f blue:17.0f/255.0f alpha:1]
@interface CWALinkManViewController ()

@end

@implementation CWALinkManViewController
@synthesize iHistoryDataArray;
@synthesize iDelegate;
@synthesize iDataArray;
@synthesize iNavigationTitle;
@synthesize iIsHiddenSearchBar;
@synthesize iFlag;
@synthesize iServiceCode;
@synthesize iNodateImage;
@synthesize isMUtilSelect;
@synthesize iMutilCancleBtn;
@synthesize iSureBtn;
@synthesize iSelectRows;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if (self)
  {
    originContentOffset = 0.0f;
  }
  return self;
}

-(void)cancleBtnAttrbute:(UIButton *)aBtn
{
  NSString *cancle = NSLocalizedStringFromTable(@"cancel", @"btarget_task", nil);
  
  [aBtn setTitle:cancle
        forState:UIControlStateNormal];
  
  [aBtn setImage:nil
        forState:UIControlStateNormal];
     
  [aBtn setBackgroundImage:[UIImage imageNamed:@"nav_two.png"]
                  forState:UIControlStateNormal];
  
  [aBtn setBackgroundImage:[UIImage imageNamed:@"nav_two_touch.png"]
                  forState:UIControlStateHighlighted];
}
-(void)showOrHiddenSureBtn
{
  self.iSureBtn.hidden = !self.isMUtilSelect;
  self.iMutilCancleBtn.hidden = !self.isMUtilSelect;
  iCancleBtn.hidden = isMUtilSelect;
}
- (void)viewDidLoad
{
  [super viewDidLoad];
  iIsMoreData = YES;
  //初始化controller，并请求模糊查询条件消息
  iLinkManController.iDelegate = self;
  iLinkManController.iFlag = iFlag;
  iLinkManController.iServiceCode = self.iServiceCode;
  [iLinkManController setElementAndLocal];
  
  //controller设置actiontype 和taskid
  [iLinkManController setRequestLinkManActionType:iLinkManRequestType andTaskID:iTaskId];
  
  //设置navigationbar的背景颜色
  UINavigationBar *aNavigationBar = (UINavigationBar *)[self.view viewWithTag:WA_TASK_LINKMAN_NAVIGATION_TAG];
  aNavigationBar.topItem.title = iNavigationTitle;
  [CWAIosVersionAdaptor adaptWithNavBar:aNavigationBar];
  if ([aNavigationBar respondsToSelector:@selector(setBackgroundImage:forBarMetrics:)])
  {
    if(WA_CURENT_OS_V >= 7.0f)
    {
      [aNavigationBar setBackgroundImage:[UIImage imageNamed:@"nav.png"]
                             forBarMetrics:UIBarMetricsDefault];
      if ([aNavigationBar respondsToSelector:@selector(setBackgroundColor:)]) {
        aNavigationBar.tintColor = WA_TASK_COLOR_253;
      }
    }
    else
    {
      [aNavigationBar setBackgroundImage:[UIImage imageNamed:@"nav_bg"]
                           forBarMetrics:UIBarMetricsDefault];
    }
  }
    iNavigationBarHeight =aNavigationBar.frame.size.height;
  
#ifdef NO_BAR_BACK_BTN_TITLE
  
  [self cancleBtnAttrbute:iCancleBtn];
  [self cancleBtnAttrbute:iMutilCancleBtn];
#endif
  
  [CWAIosVersionAdaptor adaptWithRightNavBtn:iCancleBtn];
  if (WA_CURENT_OS_V < 7.0)
  {
    [iCancleBtn setTitleColor:WACOLOR(68, 68, 68)
                     forState:UIControlStateNormal];
    
    
    iCancleBtn.titleLabel.font = WA_TASK_FONT_HT_W3_16;
    
    [iCancleBtn setImage:nil
                forState:UIControlStateNormal];
    
    [iCancleBtn setImage:nil
                forState:UIControlStateHighlighted];
    
    [iCancleBtn setBackgroundImage:nil
                          forState:UIControlStateNormal];
    
    [iCancleBtn setBackgroundImage:nil
                          forState:UIControlStateHighlighted];
  }
  else
  {
    [iCancleBtn setTitleColor:WA_YONYOU_RED_COLOR forState:UIControlStateNormal];
    iCancleBtn.titleLabel.font = WA_TASK_FONT_KAKU_W3_16;
  }
  
  NSString *cancle = NSLocalizedStringFromTable(@"cancel", @"btarget_task", nil);
  [iCancleBtn setTitle:cancle
              forState:UIControlStateNormal];
  [iMutilCancleBtn setTitleColor:WA_YONYOU_RED_COLOR forState:UIControlStateNormal];

  [iMutilCancleBtn setTitle:cancle
                   forState:UIControlStateNormal];
  
    //设置navigation的是否隐藏，并调整列表的高度
  UISearchBar *linkManSearchBar = (UISearchBar *)[self.view viewWithTag:WA_TASK_LIANKMAN_SEARCHBAR_TAG];
  linkManSearchBar.hidden = iIsHiddenSearchBar;
  [linkManSearchBar setBackgroundImage:[UIImage imageNamed:WA_TASK_NAV_BG]];
  if ([linkManSearchBar respondsToSelector:@selector(setSearchBarStyle:)])
  {
    //linkManSearchBar.searchBarStyle = UISearchBarStyleMinimal;
  }
  iSearchebarHeight =linkManSearchBar.frame.size.height;
    //初始化tableview
  originContentOffset = 0;
  iDataArray = [[NSMutableArray alloc] initWithCapacity:1];
  iHistoryDataArray = [[NSMutableArray alloc] initWithCapacity:1];
  if (iIsHiddenSearchBar)
  {
    originContentOffset = -44;
    iIsFirstGoIn = NO;
    
    [iLinkManController sendTaskActionLinkManMsgWithCondition:@""];
    [self getPullingRefreshTableView];
    [self.view addSubview:iPullDownTableView];
  }
  else
  {
    [iLinkManController startSearchConditionRequestWithComponetID:@"A0A007"];
    
    NSMutableArray *array = [iLinkManController getHistoryArray];
    [iHistoryDataArray addObjectsFromArray:array];
    NSString *all = NSLocalizedStringFromTable(@"all", @"btarget_task", nil);
    [iHistoryDataArray addObject:all];
    
    UITableView *table = [self getHistoryTable];
    [CWAIosVersionAdaptor adaptTableViewNoDataCellSeparator:table];
    [CWAIosVersionAdaptor adaptSeperatorLineWithTableView:table];
    [self.view addSubview:table];
    
    iIsFirstGoIn = YES;
  }
	[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
	[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
  
  [self hidenHistoryList];
    //    UIView *iStatusView = [[[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 20)]autorelease];
    //    [iStatusView setBackgroundColor:WA_TASK_COLOR_253];
    //    [self.view addSubview:iStatusView];
    //    [self.view setBackgroundColor:WA_TASK_COLOR_240];
  [iSureBtn setTitle:NSLocalizedStringFromTable(@"ok", @"btarget_task", nil) forState:UIControlStateNormal];
  [iSureBtn setTitleColor:WACOLOR(68, 68, 68)
                   forState:UIControlStateNormal];
  if (WA_CURENT_OS_V >= 7.0) {
    iSureBtn.titleLabel.font = WA_TASK_FONT_KAKU_W3_16;
  }
  else
  {
    iSureBtn.titleLabel.font = WA_TASK_FONT_HT_W3_16;
  }
  CGRect sureBtnFrame = iSureBtn.frame;
  sureBtnFrame.origin.x = [[UIScreen mainScreen] applicationFrame].size.width - sureBtnFrame.size.width + 8.0f;
  iSureBtn.frame = sureBtnFrame;
  [CWAIosVersionAdaptor adaptWithRightNavBtn:iSureBtn];
  [self showOrHiddenSureBtn];
}
- (IBAction)sureBtnClick:(id)sender
{
  if (iDelegate && [iDelegate respondsToSelector:@selector(addALinkManWith:)])
  {
    [iDelegate addALinkManWith:self.iSelectRows];
    
  }
  [self.navigationController popViewControllerAnimated:YES];
}
#pragma mark- 键盘弹出
- (void) keyboardWillShow:(NSNotification *)note
{
	
  
	NSDictionary *userInfo = [note userInfo];
    // Get the origin of the keyboard when it's displayed.
	NSValue* aValue = [userInfo objectForKey:UIKeyboardFrameEndUserInfoKey];
    // Get the top of the keyboard as the y coordinate of its origin in self's view's coordinate system. The bottom of the text view's frame should align with the top of the keyboard's final position.
	CGRect keyboardRect = [aValue CGRectValue];
    // Get the duration of the animation.
	NSValue *animationDurationValue = [userInfo objectForKey:UIKeyboardAnimationDurationUserInfoKey];
	NSTimeInterval animationDuration;
	[animationDurationValue getValue:&animationDuration];
    // Animate the resize of the text view's frame in sync with the keyboard's appearance.
    //	[self moveInputBarWithKeyboardHeight:keyboardRect.size.height withDuration:animationDuration];
    CGRect applicationFrame = [UIScreen mainScreen].applicationFrame;
	iHistoryTable.frame = CGRectMake(0, 88 + originContentOffset, [[UIScreen mainScreen] applicationFrame].size.width, applicationFrame.size.height - 88 - originContentOffset - keyboardRect.size.height);
  
    [CWAIosVersionAdaptor adaptIOS6FrameWithView:iHistoryTable];
}



-(void) keyboardWillHide:(NSNotification *)note
{
  CGRect applicationFrame = [UIScreen mainScreen].applicationFrame;
  iHistoryTable.frame = CGRectMake(0, 88 + originContentOffset, [[UIScreen mainScreen] applicationFrame].size.width, applicationFrame.size.height - 88 - originContentOffset);
  [CWAIosVersionAdaptor adaptIOS6FrameWithView:iHistoryTable];
}

- (UITableView *)getHistoryTable
{
  if(!iHistoryTable)
  {
    CGRect applicationFrame = [UIScreen mainScreen].applicationFrame;
    CGRect frame = CGRectMake(0, 88 + originContentOffset, [[UIScreen mainScreen] applicationFrame].size.width, applicationFrame.size.height - 88 - originContentOffset);
    iHistoryTable = [[UITableView alloc] initWithFrame:frame
                                                 style:UITableViewStylePlain];
    iHistoryTable.dataSource = self;
    iHistoryTable.delegate = self;
    [CWAIosVersionAdaptor adaptIOS6FrameWithView:iHistoryTable];
    [CWAIosVersionAdaptor adaptSeperatorLineWithTableView:iHistoryTable];
    [CWAIosVersionAdaptor tableViewSeparatorInset:iHistoryTable];
    [iHistoryTable setBackgroundColor:WA_TASK_COLOR_240];
  }
  return iHistoryTable;
}

- (CWAPullingRefreshTableView *)getPullingRefreshTableView
{
  if(!iPullDownTableView)
  {
    CGRect applicationFrame = [UIScreen mainScreen].applicationFrame;
    CGRect frame = CGRectZero;
      int maxWidth = [[UIScreen mainScreen] applicationFrame].size.width;
      if ([[[UIDevice currentDevice] model] isEqual:@"iPhone"] ) {
          if (maxWidth>375) {//plus
               frame = CGRectMake(0, 88 + originContentOffset, maxWidth, applicationFrame.size.height-251- (iSearchebarHeight+iNavigationBarHeight)-originContentOffset);
          }
          else // phone
          {
              frame = CGRectMake(0, 88 + originContentOffset, maxWidth, applicationFrame.size.height-176- (iSearchebarHeight+iNavigationBarHeight)-originContentOffset);
          }
      }else if ([[[UIDevice currentDevice] model] isEqual:@"iPad"]) {
          frame = CGRectMake(0, 88 + originContentOffset, maxWidth, applicationFrame.size.height - (iSearchebarHeight+iNavigationBarHeight)- originContentOffset);
      }else{
        frame = CGRectMake(0, 88 + originContentOffset, maxWidth, applicationFrame.size.height-176 - originContentOffset);
      }

    iPullDownTableView = [[CWAPullingRefreshTableView alloc]
                          initWithFrame:frame
                          pullingDelegate:self];
    iPullDownTableView.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
    iPullDownTableView.headerOnly = NO;
    iPullDownTableView.delegate = self;
    iPullDownTableView.dataSource = self;
    iPullDownTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [iPullDownTableView setNormalTableview:YES];
    iPullDownTableView.backgroundColor = WA_TASK_TABLEVIEW_BACKGROUND_COLOR;
    [CWAIosVersionAdaptor adaptIOS6FrameWithView:iPullDownTableView];
    [CWAIosVersionAdaptor adaptTableViewNoDataCellSeparator:iPullDownTableView];
    [CWAIosVersionAdaptor adaptSeperatorLineWithTableView:iPullDownTableView];
    [CWAIosVersionAdaptor tableViewSeparatorInset:iPullDownTableView];
    [iPullDownTableView setBackgroundColor:WA_TASK_COLOR_240];
  }
  return iPullDownTableView;
}

- (void)viewDidUnload
{
  [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
  
}
- (void)viewWillAppear:(BOOL)animated
{
  [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
  
  [super viewDidAppear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

  //返回上一个视图
- (IBAction)gotoLastViewController
{
  NSString *adopOperator = NSLocalizedStringFromTable(@"adopOperator", @"btarget_task", nil);
  NSString *cancel = NSLocalizedStringFromTable(@"cancel", @"btarget_task", nil);
  NSString *ok = NSLocalizedStringFromTable(@"ok", @"btarget_task", nil);
  
  UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:nil
                                                      message:adopOperator
                                                     delegate:self
                                            cancelButtonTitle:cancel                                            otherButtonTitles:ok,nil];
  
  [alertView show];
}

- (void)alertView:(UIAlertView *)alertView
clickedButtonAtIndex:(NSInteger)buttonIndex
{
  if(buttonIndex == 1)
  {
    [self.navigationController popViewControllerAnimated:YES];
  }
}

  //设置actiontype的值和taskid的值
- (void)setRequestLinkManActionType:(NSString *)aActionType andTaskID:(NSString *)aTaskId
{
  iTaskId = aTaskId;
  iLinkManRequestType = aActionType;
}

#pragma mark -
#pragma mark - tableview
  //
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  if(tableView == iPullDownTableView)
  {
    return  [iDataArray count];
  }
  else
  {
    return  [iHistoryDataArray count];
  }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  static NSString *CellIdentifier = @"Cell";
  
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
  [CWAIosVersionAdaptor adaptTableViewCell:cell];
  
  if (cell == nil)
  {
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier];
    
    CGRect markframe;
    CGRect nameframe;
    UIFont *markfont;
    UIFont *namefont;
    
    if (self.isMUtilSelect)
    {
      markframe  = CGRectMake(56, 8,288, 24);
      nameframe = CGRectMake(56, 32, 288, 18);
      markfont = WA_TASK_FONT_KAKU_W3_14;
      namefont = WA_TASK_FONT_KAKU_W3_12;
      
      UIImageView *imgview = [[UIImageView alloc]initWithFrame:CGRectMake(8, 13, 32, 32)];
      imgview.backgroundColor = [UIColor clearColor];
      imgview.tag = WA_TASK_LIANKMAM_BGIMG;
      [cell.contentView addSubview:imgview];

    }
    else
    {
      markframe  = CGRectMake(24, 0,100, 44);
      nameframe = CGRectMake(130, 0, 136, 44);
      markfont = WA_TASK_FONT_KAKU_W3_16;
      namefont = WA_TASK_FONT_KAKU_W3_16;
    }
    
    UILabel *markLable = [[UILabel alloc] initWithFrame:markframe];
    markLable.backgroundColor = [UIColor clearColor];
    markLable.tag = WA_TASK_LIANKMAM_MARKLABLE;
    markLable.textColor = WA_TASK_COLOR_31;
    markLable.font = markfont;
    [cell.contentView addSubview:markLable];
    
    UILabel *nameLable =[[UILabel alloc] initWithFrame:nameframe];
    nameLable.backgroundColor = [UIColor clearColor];
    nameLable.tag = WA_TASK_LIANKMAN_NAMELABLE;
    nameLable.textColor = WA_TASK_COLOR_31;
    nameLable.font = namefont;
    [cell.contentView addSubview:nameLable];
    
  }
  cell.textLabel.backgroundColor = [UIColor clearColor];
  
    //更具条件不同添加不同的cell子view
  if (tableView == iHistoryTable)
  {
    cell.textLabel.text = [iHistoryDataArray objectAtIndex:indexPath.row];
  }
  else
  {
    cell.textLabel.text = @"";
    
    UILabel *markLable = (UILabel *)[cell viewWithTag:WA_TASK_LIANKMAM_MARKLABLE];
    CWALinkManVO *man = [iDataArray objectAtIndex:indexPath.row];
    markLable.text = man.iMark;
    
    UILabel *nameLable = (UILabel *)[cell viewWithTag:WA_TASK_LIANKMAN_NAMELABLE];
    nameLable.text =  man.iName;
    
    UIImageView *bgview = (UIImageView *)[cell viewWithTag:WA_TASK_LIANKMAM_BGIMG];
    NSString *img = @"cell_ic_checkbox_checked";
    if (!man.isSelect)
    {
      img = @"cell_ic_checkbox_unchecked";
      
    }
    bgview.image = [UIImage imageNamed:img];
  }
  
  UIView *bgview = [[UIView alloc]initWithFrame:cell.frame];
  bgview.backgroundColor = WACOLOR(240, 240, 240);
  cell.selectedBackgroundView = bgview;
  return cell;
}



- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  UISearchBar *linkManSearchBar = (UISearchBar *)[self.view viewWithTag:WA_TASK_LIANKMAN_SEARCHBAR_TAG];
  [linkManSearchBar resignFirstResponder];
  
  if (tableView == iHistoryTable)
  {
    UISearchBar *linkManSearchBar = (UISearchBar *)[self.view viewWithTag:WA_TASK_LIANKMAN_SEARCHBAR_TAG];
    linkManSearchBar.showsCancelButton = NO;
    NSString *aSearchCondition = nil;
    
    if ([iHistoryDataArray count] -1 != indexPath.row)
    {
      aSearchCondition = [iHistoryDataArray objectAtIndex:indexPath.row];
      linkManSearchBar.text = [iHistoryDataArray objectAtIndex:indexPath.row];
    }
    else
    {
      aSearchCondition = @"";
      linkManSearchBar.text = @"";
    }
    
    iLinkManController.iRequestPage = 0;
    [iLinkManController sendTaskActionLinkManMsgWithCondition:aSearchCondition withTag:@""];
    
    return;
  }
  
  else
  {
    if (self.isMUtilSelect)
    {
      if (!iSelectRows)
      {
        NSMutableArray  *array = [[NSMutableArray alloc]initWithCapacity:1];
        self.iSelectRows = array;
      }
      CWALinkManVO *manVO = [iDataArray objectAtIndex:indexPath.row];
      if (manVO.isSelect)
      {
        manVO.isSelect = NO;
        [self.iSelectRows removeObject:manVO];
      }
      else
      {
        manVO.isSelect = YES;
        [self.iSelectRows addObject:manVO];
      }
      
      [tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
      
    }
    else
    {
      if (iDelegate && [iDelegate respondsToSelector:@selector(addALinkManWith:)])
      {
        [iDelegate addALinkManWith:[iDataArray objectAtIndex:indexPath.row]];
      }
      [self.navigationController popViewControllerAnimated:YES];
    }
    
  }
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
  CGFloat height;
  if (tableView == iHistoryTable) {
    height = 44;
  }
  else
  {
    if (self.isMUtilSelect) {
      height = 58;
    }
    else
    {
      height = 44;
    }
  }
  return  height;
}


#pragma mark -
  //下拉刷新加载数据
- (void)pullingTableViewDidStartRefreshing:(CWAPullingRefreshTableView *)tableView
{
    if (iIsMoreData ||iLinkManController.iRequestPage>0) {
        if (iLinkManController.iRequestPage>0) {
            	iLinkManController.iRequestPage -= 1;
        }
        UISearchBar *linkManSearchBar = (UISearchBar *)[self.view viewWithTag:WA_TASK_LIANKMAN_SEARCHBAR_TAG];
        [iLinkManController sendTaskActionLinkManMsgWithCondition:linkManSearchBar.text];
    }else
    {
        [iPullDownTableView tableViewDidFinishedLoadingWithMessage:NSLocalizedStringFromTable(@"nomoredata",@"btarget_task",nil)];
    }
  
}

  //上拉加载数据
- (void)pullingTableViewDidStartLoading:(CWAPullingRefreshTableView *)tableView
{
  if (iIsMoreData)
  {
    iLinkManController.iRequestPage += 1;
    UISearchBar *linkManSearchBar = (UISearchBar *)[self.view viewWithTag:WA_TASK_LIANKMAN_SEARCHBAR_TAG];
    [iLinkManController sendTaskActionLinkManMsgWithCondition:linkManSearchBar.text];
  }
  else
  {
    [iPullDownTableView tableViewDidFinishedLoadingWithMessage:NSLocalizedStringFromTable(@"nomoredata",@"btarget_task",nil)];
  }
}

#pragma mark - Scroll

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
  if (iIsFirstGoIn)
  {
    return;
  }
  [iPullDownTableView tableViewDidScroll:scrollView];
}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
{
  if (iIsFirstGoIn)
  {
    return;
  }
  [iPullDownTableView tableViewDidEndDragging:scrollView];
}

#pragma mark -
#pragma mark - MWALinkManControllerDelegate delegate

/*
 返回的aBaseVO.voDictionary的数据结构为：
 {
 ws001 =     {
 users =         {
 user =             (
 )
 user =             (
 )
 }
 }
 }
 */
  //请求数据成功返回

- (void)showHistoryList
{
  NSMutableArray *array = [iLinkManController getHistoryArray];
  [iHistoryDataArray removeAllObjects];
  [iHistoryDataArray addObjectsFromArray:array];
  NSString *all = NSLocalizedStringFromTable(@"all", @"btarget_task", nil);
  [iHistoryDataArray addObject:all];
  
  UITableView *tableHistory = [self getHistoryTable];
  [self.view addSubview:tableHistory];
  [tableHistory reloadData];
  UITableView *table = [self getPullingRefreshTableView];
  [table removeFromSuperview];
}

- (void)hidenHistoryList
{
  [[self getHistoryTable] removeFromSuperview];
  
  UITableView *table = [self getPullingRefreshTableView];
  [self.view addSubview:table];
}

- (void)requestReturnWithResponseVO:(CWABaseVO *)aBaseVO andMsgVO:(CWAResponseMsg *)aMsgVO;
{
  [iPullDownTableView tableViewDidFinishedLoading];
  iPullDownTableView.reachedTheEnd = NO;
  @try
  {
    if (aMsgVO.iServiceCode)
    {
      NSDictionary *actionDic = [[[aBaseVO.voDictionary objectForKey:aMsgVO.iServiceCode] objectAtIndex:0]objectForKey:@"psnstructlist"];
      
        //人员列表返回
      if (actionDic != nil)
      {
        
        NSMutableArray *tempArray = [[NSMutableArray alloc] initWithCapacity:1];
        iIsFirstGoIn = NO;
        [iPullDownTableView setNormalTableview:NO];
        NSArray *actionArray = [actionDic objectForKey:@"psnstruct"];
        for (NSDictionary *actionDic in actionArray)
        {
          CWALinkManVO *aLinkMan = [[CWALinkManVO alloc] initWithDic:actionDic];
          [tempArray addObject:aLinkMan];
        }
        
        [iDataArray removeAllObjects];
        [iDataArray addObjectsFromArray:tempArray];
        if([iDataArray count] == 0)
        {
          [[self getHistoryTable] removeFromSuperview];
          
          UITableView *table = [self getPullingRefreshTableView];
          [table removeFromSuperview];
          CWANoDataView  *cell = [[[NSBundle mainBundle] loadNibNamed:@"WANoDataView" owner:self options:nil] objectAtIndex:0];
          CGFloat y = 108;
          iNodateImage.frame =CGRectMake(0, y, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height-y);
          iNodateImage.image = nil;
          iNodateImage.backgroundColor = WACOLOR(240, 240, 240);
          [iNodateImage addSubview:cell];
          iNodateImage.hidden = NO;
        }
        else
        {
          [self hidenHistoryList];
          [iPullDownTableView setNormalTableview:NO];
          iNodateImage.hidden = YES;
        }
        [iPullDownTableView reloadData];
        
        if ([tempArray count] <25)
        {
          iIsMoreData = NO;
        }
        else
        {
          iIsMoreData = YES;
        }
      }
      else
      {
          //模糊查询条件的返回
        NSString *searchCondition = [[[[aBaseVO.voDictionary objectForKey:aMsgVO.iServiceCode] objectAtIndex:0]
                                      objectForKey:@"searchcondition"] objectForKey:@"conditiondesc"];
        UISearchBar *linkManSearchBar = (UISearchBar *)[self.view viewWithTag:WA_TASK_LIANKMAN_SEARCHBAR_TAG];
        linkManSearchBar.placeholder = searchCondition;
      }
    }
  }
  @catch (NSException *exception)
  {
    
  }
  @finally {
    
  }
  
}

- (void)requestReturnWithResponseVO:(CWABaseVO *)aBaseVO andMsgVO:(CWAResponseMsg *)aMsgVO withTag:(NSString *) tag;
{
    [iPullDownTableView tableViewDidFinishedLoading];
    iPullDownTableView.reachedTheEnd = NO;
    @try
    {
        if (aMsgVO.iServiceCode)
        {
            NSDictionary *actionDic = [[[aBaseVO.voDictionary objectForKey:aMsgVO.iServiceCode] objectAtIndex:0]objectForKey:@"psnstructlist"];
            
            //人员列表返回
            if (actionDic != nil)
            {
                
                NSMutableArray *tempArray = [[NSMutableArray alloc] initWithCapacity:1];
                iIsFirstGoIn = NO;
                [iPullDownTableView setNormalTableview:NO];
                NSArray *actionArray = [actionDic objectForKey:@"psnstruct"];
                for (NSDictionary *actionDic in actionArray)
                {
                    CWALinkManVO *aLinkMan = [[CWALinkManVO alloc] initWithDic:actionDic];
                    [tempArray addObject:aLinkMan];
                }
                
                [iDataArray removeAllObjects];
                [iDataArray addObjectsFromArray:tempArray];
                if([iDataArray count] == 0)
                {
                    [[self getHistoryTable] removeFromSuperview];
                    
                    UITableView *table = [self getPullingRefreshTableView];
                    [table removeFromSuperview];
                    CWANoDataView  *cell = [[[NSBundle mainBundle] loadNibNamed:@"WANoDataView" owner:self options:nil] objectAtIndex:0];
                    CGFloat y = 108;
                    iNodateImage.frame =CGRectMake(0, y, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height-y);
                    iNodateImage.image = nil;
                    iNodateImage.backgroundColor = WACOLOR(240, 240, 240);
                    [iNodateImage addSubview:cell];
                    iNodateImage.hidden = NO;
                }
                else
                {
                    [self hidenHistoryList];
                    [iPullDownTableView setNormalTableview:NO];
                    iNodateImage.hidden = YES;
                }
                [iPullDownTableView reloadData];
                
                if ([tempArray count] <25)
                {
                    iIsMoreData = NO;
                }
                else
                {
                    iIsMoreData = YES;
                }
            }
            else
            {
                //模糊查询条件的返回
                NSString *searchCondition = [[[[aBaseVO.voDictionary objectForKey:aMsgVO.iServiceCode] objectAtIndex:0]
                                              objectForKey:@"searchcondition"] objectForKey:@"conditiondesc"];
                UISearchBar *linkManSearchBar = (UISearchBar *)[self.view viewWithTag:WA_TASK_LIANKMAN_SEARCHBAR_TAG];
                linkManSearchBar.placeholder = searchCondition;
            }
        }
    }
    @catch (NSException *exception)
    {
        
    }
    @finally {
        
    }
    
}

  //请求数据返回
- (void)requestFail
{
  [iPullDownTableView tableViewDidFinishedLoading];
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

