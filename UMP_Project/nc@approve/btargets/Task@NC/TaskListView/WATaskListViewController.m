
/*!
 @class
 @abstract 任务中心列表界面
 */

#import "WATaskListViewController.h"
#import "WAProgressView.h"
#import "WATaskListVO.h"
#import "WATaskDetailViewController.h"
#import "WAMenuViewController.h"
#import "WATaskAcListViewController.h"
#import "CWATaskBnsHandler.h"
#import "WATaskListBnsHandler.h"
#import "WATaskDetailViewVO.h"
#import "WATaskListDef.h"
#import "WATimeUtil.h"
#import "WASpinnerView.h"
#import "AppDelegate.h"
#import "WAStringUtil.h"
#import "WATaskAcListRequestVO.h"
#import "WACommonInfoVO.h"
#import "WAIosVersionAdaptor.h"
#import "WAUFTool.h"
#import "WAFileUtil.h"
#import "WAHTMLResourceVO.h"
@interface CWATaskListViewController ()
@property (nonatomic) BOOL refreshing;
@end


#define WA_EQ_FONT14 [UIFont fontWithName:@"HiraKakuProN-W3" size:14.0]
@implementation CWATaskListViewController
@synthesize iTableView;
@synthesize iListContentCell;
@synthesize iCellNib;
@synthesize iListVos;
@synthesize iButtonVOs;
@synthesize iTaskType;
@synthesize iToDoListButtons;
@synthesize iSubmitButtons;
@synthesize iListController;
@synthesize refreshing ;
@synthesize page;
@synthesize iSetting;

@synthesize iNavBar;
@synthesize iNavBarItem;
@synthesize iNavRightBarItem;
@synthesize iEmptyView;
@synthesize iGroupBtnBackView;

//消息详情的请求key
//消息详情的taskid
static NSString *WA_TASKDETAIL_TASKID = @"taskid";
//消息详情的groupid
static NSString *WA_TASKDETAIL_GROUPID = @"groupid";

//servicecodekey
static NSString *WA_TASKDETAIL_SERVICECODE = @"servicecode";
//任务动作列表的key

//任务列表的key
static NSString *WA_TASKDETAIL_TASKBILL = @"getTaskBill";
//任务详情返回的flag
static NSString *WA_TASKDETAIL_FLAG = @"flag";
//任务详情返回的描述信息
static NSString *WA_TASKDETAIL_DESC = @"desc";

//每页的条数
static int WA_TASKDETAIL_COUNTSPERPAGE = 25;
static int WA_TASK_TAB_SETTING_TAG = 1234;

- (id)initWithNibName:(NSString *)nibNameOrNil 
            andBundle:(NSBundle *)nibBundleOrNil
       andTWATaskType:(TWATaskType)aTWATaskType
{
  self = [self initWithNibName:nibNameOrNil 
                     andBundle:nibBundleOrNil 
                andTWATaskType:aTWATaskType 
                     andBaseVO:nil
                  andParentCtl:nil];
  if(self)
  {
    isRequestVO = YES;
    [[NSNotificationCenter defaultCenter] addObserver:self 
                                             selector:@selector(refreshTableview) 
                                                 name:TASKCENTER_TASKLIST_REFRESH_NOFIFY 
                                               object:nil];
  }
  
  return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil 
            andBundle:(NSBundle *)nibBundleOrNil
       andTWATaskType:(TWATaskType)aTWATaskType
            andBaseVO:(CWABaseVO *)aBaseVO
            andParentCtl:(UIViewController*)parentCtl
{
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if (self) 
  {
    self.iTaskType = aTWATaskType;
    self.iListVos = [CWATaskListBnsHandler getTaskListWithRequsetDic:aBaseVO.voDictionary
                                                           withMsgVO:nil
                                                        withIsSingle:NO];
    self.iButtonVOs = [CWATaskListBnsHandler getButtonListWithRequsetDic:aBaseVO.voDictionary
                                                               withMsgVO:nil
                                                            withIsSingle:NO];
    [[NSNotificationCenter defaultCenter] addObserver:self 
                                             selector:@selector(refreshTableview) 
                                                 name:TASKCENTER_TASKLIST_REFRESH_NOFIFY 
                                               object:nil];
    
  }
  return self;
}

static CWATaskListViewController * sharedCWATaskListViewController = nil; 
+ (void)showTaskListControllerWithNavigationController:(UINavigationController *)aNavigationController
{
  if (!aNavigationController) 
  {
    return;
  }
  @synchronized(self)
  {
    if (sharedCWATaskListViewController == nil)
    {
      sharedCWATaskListViewController  = [[CWATaskListViewController alloc] initWithNibName:@"WATaskListViewController"
                                                                                andBundle:nil
                                                                           andTWATaskType:EIsHandled];
      //下载消息列表的数据
      [aNavigationController pushViewController:sharedCWATaskListViewController animated:YES];
      }
    else 
    {
      [aNavigationController pushViewController:sharedCWATaskListViewController animated:YES];
    }
  }
}


+ (void)hiddenTaskListViewController
{
  [sharedCWATaskListViewController.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
  
}

#pragma mark - View lifecycle

- (void)viewWillAppear:(BOOL)animated
{
  self.navigationController.navigationBar.hidden = YES;
  iListController.iListControllerDelegate = self;
  [self updateVO];
  
}

- (void) viewDidAppear:(BOOL)animated
{
  [super viewDidAppear:animated];
  [self.iTableView deselectRowAtIndexPath:[self.iTableView indexPathForSelectedRow] animated:YES];
}

- (void)getSetting
{
  
//  iSetting = [[CWASettingViewController alloc] initWithNibName:@"WASettingViewController"
//                                                    WithBundle:nil
//                                       WithToolbarNotification:(AppDelegate *)[UIApplication sharedApplication].delegate
//                                                       WithNav:((AppDelegate *)[[UIApplication sharedApplication] delegate]).iNavigationController
//                                              settingViewClass:[CWASetingView class]];
  
  CGRect frame = CGRectMake(0, 0, 320, 48);
  iSetting.view.frame = frame;
  for (UIView *subView in iSetting.view.subviews) {
    //背景图更新
    if ([subView isKindOfClass:[UIImageView class]])
    {
      [subView setFrame:frame];
      [(UIImageView *)subView setImage:[UIImage imageNamed:@"tabbar_bg.png"]];
    }
    else
    //图标更新
    if ([subView isKindOfClass:[UIButton class]])
    {
      CGRect btFrame = CGRectMake(247, 4, 32, 32);
      [subView setFrame:btFrame];
      [(UIButton *)subView setBackgroundImage:[UIImage imageNamed:@"tabbar_ic_approval_set_normal"] forState:UIControlStateNormal];
      [(UIButton *)subView setBackgroundImage:[UIImage imageNamed:@"tabbar_ic_approval_set_selected"] forState:UIControlStateSelected];
      [(UIButton *)subView setBackgroundImage:[UIImage imageNamed:@"tabbar_ic_approval_set_selected"] forState:UIControlStateHighlighted];
      
      [(UIButton *)subView  addTarget:self
                     action:@selector(settingBtnTouchUpInSideAction:)
           forControlEvents:UIControlEventTouchUpInside];
      [(UIButton *)subView  addTarget:self
                     action:@selector(settingBtnTouchDownAction:)
           forControlEvents:UIControlEventTouchDown];
      [(UIButton *)subView  addTarget:self
                     action:@selector(settingBtnTouchCancelAction:)
           forControlEvents:UIControlEventTouchCancel];
      [(UIButton *)subView  addTarget:self
                     action:@selector(settingBtnTouchCancelAction:)
           forControlEvents:UIControlEventTouchUpOutside];
      
      //设置标题
      UILabel *settingLabel = [[UILabel alloc] init];
      CGRect setLabelFrame = CGRectMake(btFrame.origin.x - 8 , 32, 48, 16);
      [settingLabel setFrame:setLabelFrame];
      [settingLabel setTag:WA_TASK_TAB_SETTING_TAG];
      [settingLabel setText:@"设置"];
      [settingLabel setFont:WA_TASK_FONT_HT_W3_10];
      [settingLabel setTextColor:WA_TASK_COLOR_143];
      [settingLabel setTextAlignment:NSTextAlignmentCenter];
      [iSetting.view addSubview:settingLabel];
    }
  }
  
  [iBottomView addSubview:iSetting.view];

}

- (void)initNav
{
  
  iNavBarItem.title = TASKLIST_MAINTITLE;
  iNavRightBarItem.title = TASKLIST_SUBTITLE;
  
  if(WA_CURENT_OS_V >= 7.0f)
  {
    UIButton *Btn = [[UIButton alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 100.f, 44.0f)];
    [Btn setTitleColor:WACOLOR(31, 31, 31) forState:UIControlStateNormal];
    Btn.titleLabel.font = WA_EQ_FONT14;
    [Btn setTitle:TASKLIST_SUBTITLE forState:UIControlStateNormal];
    [Btn addTarget:iListController
          action:@selector(rightButtonClick:)
      forControlEvents:UIControlEventTouchUpInside];
    iNavRightBarItem.customView = Btn;
  
  }
  
  if(WA_CURENT_OS_V >= 7.0f)
  {
    [CWAIosVersionAdaptor adaptWithNavBar:iNavBar withSpacerWidth:16];
  }
  else
  {
    NSDictionary *attributes = [NSDictionary dictionaryWithObjectsAndKeys:
                                WACOLOR(31, 31, 31), UITextAttributeTextColor,
                                [UIFont boldSystemFontOfSize:16], UITextAttributeFont,
                                [UIColor clearColor], UITextAttributeTextShadowColor,
                                [NSValue valueWithUIOffset:UIOffsetMake(0, 1)],
                                UITextAttributeTextShadowOffset
                                ,nil];


    [iNavBar setTitleTextAttributes:attributes];
  }
}

- (void)viewDidLoad
{
  [super viewDidLoad];
  [self initNav];
  //设置tableview的位置信息，并实例化iTableView，添加iTableView到界面
  
  
  iGroupBtnBackView = [[UIImageView alloc] init];
  [iGroupBtnBackView setUserInteractionEnabled:NO];
  [iGroupBtnBackView setImage:[UIImage imageNamed:nil]];
  [self.view addSubview:iGroupBtnBackView];
  self.iCellNib = [UINib nibWithNibName:@"WATaskListContentCell" bundle:nil];
  
  self.page = 0;
  
  if(isRequestVO)
  {
    [self.iListController rightButtonClick:nil];
  }
  
  
  [self getSetting];

  
  
  
  [self updateWithTaskType:iTaskType];
  
  CGFloat heightOfTopButtons;
  if(iSubmitButtons)
  {
    heightOfTopButtons = iSubmitButtons.frame.size.height;
  }
  else
  {
    heightOfTopButtons = iToDoListButtons.frame.size.height;
  }
  
  
  //通过计算得出frame，适配ios7
  CGRect bounds = self.view.bounds;
  //tableview和toolbar的颜色有的时候会重复，显得颜色与UE不一致，-1修改tableview的frame。
  bounds.size.height -= self.iNavBar.frame.origin.y + self.iNavBar.frame.size.height+iSetting.view.frame.size.height+heightOfTopButtons;
  bounds.origin.y = self.iNavBar.frame.origin.y + self.iNavBar.frame.size.height+heightOfTopButtons;

  iTableView = [[CWAPullingRefreshTableView alloc] initWithFrame:bounds pullingDelegate:self];
  
  iTableView.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
  
  
  iTableView.headerOnly = NO;
  
  
  
  iTableView.dataSource = self;
  iTableView.delegate = self;
    
  iTableView.backgroundColor = WA_TASK_COLOR_240;
  [self.view addSubview:iTableView];
//  [self.view sendSubviewToBack:iTableView];
  [CWAIosVersionAdaptor adaptSeperatorLineWithTableView:iTableView];
  [CWAIosVersionAdaptor tableViewSeparatorInset:iTableView];
  iTableView.contentInset = UIEdgeInsetsMake(-2, 0, 0, 0);
  [self.view bringSubviewToFront:iEmptyView];
}

- (void)viewDidUnload
{

  iTableView = nil;

  iListContentCell = nil;
  self.iCellNib = nil;

  iNavBar = nil;

  iNavBarItem = nil;
  [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (void)requestHttp:(NSInteger)iPage
{
  CWATaskListBnsHandler *taskListBnsHandler = [[CWATaskListBnsHandler alloc] init];
  taskListBnsHandler.iDelegate = iListController;
  int startLine = iPage*WA_TASKDETAIL_COUNTSPERPAGE == 0?1:iPage*WA_TASKDETAIL_COUNTSPERPAGE+1;
  NSString *strStartLine = [NSString stringWithFormat:@"%i",startLine];
  NSString *strCountPerPage = [NSString stringWithFormat:@"%i",WA_TASKDETAIL_COUNTSPERPAGE];
  [taskListBnsHandler requestWithStatus:[self getStrTaskStatusTypeFromUI]
                           andStartline:strStartLine
                               andCount:strCountPerPage
                                andDate:[CWATimeUtil getTodayDateString]
                            andTaskType:self.iTaskType];
}

- (void)refreshTasklist
{
  [self requestHttp:self.page];
}


-(void)requestNextPage
{
  self.page++;
  [self requestHttp:(self.page)];
}

#pragma mark 实现UITableViewDataSource委托
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView 
{
  return [iListVos.iSectionTitleArray count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section 
{
  NSString* SectionTitle = [iListVos.iSectionTitleArray objectAtIndex:section];
  NSArray *rowArray  = [iListVos.iContentDic objectForKey:SectionTitle];        
  return  [rowArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  static NSString *CellIdentifier = @"ListContentCell";
  CWATaskListContentCell *cell = (CWATaskListContentCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
  
  if (cell == nil)
  {
    NSArray *array = [self.iCellNib instantiateWithOwner:self options:nil];
    
    self.iListContentCell =  [array objectAtIndex:0];
    cell = self.iListContentCell;
    [CWAIosVersionAdaptor adaptTableViewCell:cell];
  }
  
  NSString* SectionTitle = [iListVos.iSectionTitleArray objectAtIndex:indexPath.section];
  NSArray *rowArray  = [iListVos.iContentDic objectForKey:SectionTitle]; 
  NSObject *result = [rowArray objectAtIndex:indexPath.row];

  
  if(![result isKindOfClass:[CWATaskListVO class]])
  {
    NSLog(@"%@",@"请求结果不是CWAListVO类型，无法加载数据");
  }
  else 
  {
    
    NSString *title = ((CWATaskListVO *)result).iTitle;
    //UIFont *font = cell.iThemeTitle.font;
    //NSString *newTitle = [CWAStringUtil getSubStringOfString:title
    //                                                withFont:font
    //                                               withWidth:cell.iThemeTitle.frame.size.width];
    cell.iThemeTitle.text = title;
    cell.iThemeTitle.lineBreakMode = NSLineBreakByTruncatingTail;
    //NSString *leftString = [title substringFromIndex:[newTitle length]];
    
      NSString *humactname = ((CWATaskListVO *)result).iName;
      cell.iName.text = humactname;
      cell.iName.textColor = [UIColor blueColor];
      
    //cell.iName.text = leftString;
//    cell.iName.hidden=YES;
    cell.iStatusLabel.text = ((CWATaskListVO *)result).iStatus;
    cell.iTime.text = ((CWATaskListVO *)result).iTime;
  }
  return cell;
}

#pragma mark 实现UITableViewDelegate委托
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
  NSString *title = [iListVos.iSectionTitleArray objectAtIndex:section];
  UIView *headerView = [CWAIosVersionAdaptor adaptTableViewSectionHeaderWithTitle:title];
  return headerView;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return 19.0f;
    }else{
        return 18.0f;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{  
  CWATaskBnsHandler *taskBnsHandler = [[CWATaskBnsHandler alloc] init];
  taskBnsHandler.iDelegate = self;
  NSString* SectionTitle = [iListVos.iSectionTitleArray objectAtIndex:indexPath.section];
  NSArray *rowArray  = [iListVos.iContentDic objectForKey:SectionTitle]; 
  CWATaskListVO *listVO = [rowArray objectAtIndex:indexPath.row];
  iTaskID = listVO.iID;
  [[CWASpinnerView sharedCWASpinnerView] showInWindowsIsFullScreen:YES
                                                   withShowingText:NSLocalizedStringFromTable(@"Wait",@"btarget_task",nil)];
  
  //获取任务状态
  NSDictionary *taskStatueDic = [CWATaskListBnsHandler getStatusDicWithStrStatus:[self getStrTaskStatusTypeFromUI] 
                                                                    withTaskType:iTaskType];
  
  
  //组装任务附件列表请求vo
  NSMutableDictionary *dataDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                  listVO.iID,WA_TASKDETAIL_TASKID,nil];
  [dataDic addEntriesFromDictionary:taskStatueDic];
  [dataDic addEntriesFromDictionary:[CWACommonInfoVO getDefaultEmptyGroupIDAndUserID]];
  CWATaskAttachmentRequestVO *aAttachmentVo = [[CWATaskAttachmentRequestVO alloc] initWithDic:dataDic];
  
  //组装任务动作请求vo
  NSMutableDictionary *aActionDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                     @"",WA_TASKDETAIL_GROUPID,
                                     listVO.iID,WA_TASKDETAIL_TASKID, nil];
  [aActionDic addEntriesFromDictionary:taskStatueDic];
  CWATaskAcListRequestVO *aActionVO = [[CWATaskAcListRequestVO alloc] initWithDic:aActionDic];
  
  //组装任务详情请求vo
  NSMutableDictionary *aBillDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                   listVO.iID,WA_TASKDETAIL_TASKID,nil];
  [aBillDic addEntriesFromDictionary:taskStatueDic];
  [aBillDic addEntriesFromDictionary:[CWACommonInfoVO getDefaultEmptyGroupIDAndUserID]];
  CWATaskAcRequestVO *aBillVo = [[CWATaskAcRequestVO alloc] initWithDic:aBillDic];
  
  NSArray *dataArray = [NSArray arrayWithObjects:aBillVo,aActionVO,aAttachmentVo,nil];
  
  
  [taskBnsHandler sendTaskBillMsg:dataArray withServiceCode:listVO.iServiceCode];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
  return 44;
}

//显示loading界面
- (void)showProgress
{
  NSString *loadingText = NSLocalizedStringFromTable(@"Wait", @"btarget_task", nil);
  [[CWASpinnerView sharedCWASpinnerView]  showInWindowsIsFullScreen:YES withShowingText:loadingText];
}

//刷新tableview
 - (void)refreshTableview
{
  [self refreshTasklist];
  [self showProgress];
}

#pragma mark - PullingRefreshTableViewDelegate

- (void)pullingTableViewDidStartRefreshing:(CWAPullingRefreshTableView *)tableView
{
  
  
  if(self.page > 0)
  {
    self.page --;
  }
  
  [self performSelector:@selector(refreshTasklist) withObject:nil afterDelay:1.f];
  [self showProgress];
  
}

- (void)pullingTableViewDidStartLoading:(CWAPullingRefreshTableView *)tableView
{  
  
  NSUInteger allCounts = 0;
  for(int i = 0 ; i < [iListVos.iSectionTitleArray count]; i++)
  {
    NSString* SectionTitle = [iListVos.iSectionTitleArray objectAtIndex:i];
    NSArray *rowArray  = [iListVos.iContentDic objectForKey:SectionTitle];
    allCounts = allCounts+[rowArray count];
  }
  
  if(allCounts >= WA_TASKDETAIL_COUNTSPERPAGE)
  {
    [self performSelector:@selector(requestNextPage) withObject:nil afterDelay:1.f];
    [self showProgress];
  }
  else 
  {
    //如果无数据加载，不再显示提示信息。nomoredata
    [iTableView tableViewDidFinishedLoadingWithMessage:nil];
    iTableView.reachedTheEnd  = YES;
    iTableView.contentInset = UIEdgeInsetsMake(-2, 0, 0, 0);
  }
  
  
}

- (NSString *)getStrTaskStatusTypeFromUI
{
  NSString *strTaskStatusType = nil;
  if(iTaskType == ESubmit)
  {
    CWAButton * currentButton = [(CWAGroupButtonView *)self.iSubmitButtons  getCurrentHighlightButton];
    strTaskStatusType = currentButton.iStatusCode;
  }
  else 
  {
    CWAButton * currentButton = [(CWAGroupButtonView *)self.iToDoListButtons  getCurrentHighlightButton];
    strTaskStatusType = currentButton.iStatusCode;
  }
  return strTaskStatusType;
}

- (void)showAlertViewWithTitle:(NSString *)aTitle
{
  UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil
                                                  message:aTitle
                                                 delegate:nil 
                                        cancelButtonTitle:NSLocalizedStringFromTable(@"ok",@"btarget_task", nil)
                                        otherButtonTitles:nil, nil];
  [alert show];
}


#pragma mark - Scroll
#pragma mark 下拉

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
  [iTableView tableViewDidScroll:scrollView];
}

#pragma mark 翻页
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
  [iTableView tableViewDidEndDragging:scrollView];
}

#pragma mark MWATaskBnsHandlerDelegate
/*
 vosArray的数据结构为：
 (NSArray *) $1 = 0x09871750 <__NSArrayM 0x9871750>(
 <CWABaseVO: 0x98717d0>,
 <CWABaseVO: 0x9871910>
 )
 basevo.voDictionary 的数据结构为：
 {
 actionType = getTaskBill;
 flag = "\U8bf7\U6c42\U6210\U529f";
 servicecode =     (
 ws001
 );
 ws001 =     (
 )
 }
 */
- (void)requestOfOneComponentMultiActionsResponesVOs:(NSArray*)vosArray
{
  
  [[CWASpinnerView sharedCWASpinnerView] hiddenSpinnerView];
  
  @try 
  {
  //把vosArray解析为feedviewvo所需要的数据结构
  NSMutableDictionary *dataDic = [NSMutableDictionary dictionaryWithCapacity:1];
  NSMutableDictionary *actionDic = [[NSMutableDictionary alloc] init];
  
  NSInteger taskDetailFlag = -1;
  NSString *taskDetailDesc = nil;
  for (CWABaseVO *basevo in vosArray) 
  { 
      NSString *actinType = [basevo.voDictionary objectForKey:WA_TASKDETAIL_ACTIONTYPE];
      NSArray *serviceCodeArray = [basevo.voDictionary objectForKey:WA_TASKDETAIL_SERVICECODE];
      NSString *serviceCode = [serviceCodeArray objectAtIndex:0];
      
      [actionDic setValue:serviceCode forKey:actinType];
    
   
      if([basevo.voDictionary objectForKey:serviceCode])
      {
        [dataDic setObject:[basevo.voDictionary objectForKey:serviceCode] forKey:actinType];
      }
      if ([actinType isEqualToString:WA_TASKDETAIL_TASKBILL])
      {
        taskDetailFlag = [[basevo.voDictionary objectForKey:WA_TASKDETAIL_FLAG] intValue  ];
        taskDetailDesc = [basevo.voDictionary objectForKey:WA_TASKDETAIL_DESC];
      
      }
  }
  [dataDic setObject:actionDic forKey:WA_TASKDETAIL_ACTIONTYPE];
  
  //初始化feedviewvo
  CWATaskDetailViewVO *aFeedViewVo = [[CWATaskDetailViewVO alloc] initWithDic:dataDic];
  aFeedViewVo.iTaskID = iTaskID;
  [aFeedViewVo initMemberVariables];
  
  //获取任务状态
  NSDictionary *taskStatueDic = [CWATaskListBnsHandler getStatusDicWithStrStatus:[self getStrTaskStatusTypeFromUI]
                                                                    withTaskType:iTaskType];
  
  //CWAMenuViewController *iMenuViewController = nil;
  CWATaskDetailViewController *taskDetailViewControlelr = nil;
  if (taskDetailFlag < 0) 
  {
    //wa端错误
    [self showAlertViewWithTitle:taskDetailDesc];
  }
  else if (taskDetailFlag == 0)
  {
    //初始化界面controller
    taskDetailViewControlelr = [[CWATaskDetailViewController alloc] initWithFeedVO:aFeedViewVo];
  
  
    if(aFeedViewVo.iHtmlfile)
    {
      taskDetailViewControlelr.iWebViewURL = [self saveHTMLVO:aFeedViewVo];
    }

    taskDetailViewControlelr.iTaskDic = taskStatueDic;
    //iMenuViewController = [[CWAMenuViewController alloc] initWithRootViewController:taskDetailViewControlelr];
    //切换视图
    if(self.navigationController)
    {
      [self.navigationController pushViewController:taskDetailViewControlelr animated:YES];
    }
    else
    {
//      UINavigationController *iNav = ((AppDelegate *)[[UIApplication sharedApplication] delegate]).iNavigationController;
//      [iNav pushViewController:taskDetailViewControlelr animated:YES];
    }
  }
  else if (taskDetailFlag == 1)
  {
    //业务出错
    [self showAlertViewWithTitle:taskDetailDesc];
  }
  else
  {
    //其他情况
    [self showAlertViewWithTitle:taskDetailDesc];
  }
  
  
  //如果任务不为我的代办里面的未处理任务则不能左右滑动且无审批按钮
  if (iTaskType == EIsHandled && [aFeedViewVo.iTaskActionArray count] != 0) 
  {
//    CWATaskAcListViewController *rightController = [[CWATaskAcListViewController alloc] initWithFeedVO:aFeedViewVo];
//    iMenuViewController.iRightViewController = rightController;
//    [rightController release];
    [taskDetailViewControlelr adaptNavBar];
  }
  else 
  {
    [taskDetailViewControlelr removeRightNavigationItem];
 
  }
  
 
  //[iMenuViewController release];
  
  }
  @catch (NSException *exception) 
  {
    //显示异常消息
    [self showAlertViewWithTitle:exception.name];
  }
  
  
}


- (NSURL *)saveHTMLVO:(CWATaskDetailViewVO *)aHTMLVO
{
  NSURL *url = nil;
  if (aHTMLVO != nil)
    {
    NSData *aHtmlData= [GTMBase64 decodeString:aHTMLVO.iHtmlfile];
    NSString *aHtmlPath= [CWAFileUtil createFileAtTmpWithName:aHTMLVO.iHtmlname
                                                      content:aHtmlData];
    for (int i = 0; i < [aHTMLVO.iResourcelist count]; i++)
      {
      CWAHTMLResourceVO *resourceVO = aHTMLVO.iResourcelist[i];
      NSData *aResourceData = [GTMBase64 decodeString:resourceVO.iResourcefile];
      NSString *resourceWholeName = [NSString stringWithFormat:@"%@/%@", aHTMLVO.iResoucedir, resourceVO.iResourcename];
      [CWAFileUtil createFileAtTmpWithName:resourceWholeName content:aResourceData];
      }
    url = [NSURL fileURLWithPath:aHtmlPath];
    }
  return url;
}

- (void)failedRequestWithError:(NSError*)theError
{
  
  [[CWASpinnerView sharedCWASpinnerView] hiddenSpinnerView];
  UIAlertView *alerView = [[UIAlertView alloc] initWithTitle:nil 
                                                     message:theError.domain
                                                    delegate:nil 
                                           cancelButtonTitle:@"确定" 
                                           otherButtonTitles:nil];
  [alerView show];
  
  
}

#pragma mark - 分组按钮
- (void) updateWithTaskType:(TWATaskType)aTaskType
{
  self.iTaskType = aTaskType;
  self.page = 0;
  iTableView.reachedTheEnd  = NO;
  
  //我的待办
  if(iTaskType == EIsHandled)
  {
    if(!self.iToDoListButtons)
    {
      CWAButtonVOArray *isHandledButtons = [self.iButtonVOs objectForKey:TASK_TASKLIST_KISHANDLED];
      
      if(isHandledButtons)
      {
        NSMutableArray *titils = [[NSMutableArray alloc] init];
        NSMutableArray *serviceCodes = [[NSMutableArray alloc] init];
        NSMutableArray *statusCodes = [[NSMutableArray alloc] init];
        for (int i = 0; i < [isHandledButtons count]; i++) 
        {
          CWAButtonVO *buttonVO = [isHandledButtons getButtonVoWithIndex:i];
          [titils addObject:buttonVO.iName];
          [serviceCodes addObject:buttonVO.iServiceCode];
          [statusCodes addObject:buttonVO.iCode];
        }
        
        CWAButtonImagesArray *buttonImagesArray = [CWAButtonImagesArray getButtonWithButtonCountIOS7:[isHandledButtons count]
                                                                                       withTitle:titils 
                                                                                  withStatusCode:statusCodes 
                                                                                 withServiceCode:serviceCodes 
                                                                                      withStatus:TASK_TASKLIST_KISHANDLED];
        
        
        self.iToDoListButtons = [[CWAGroupButtonView alloc] initWithButtonImages:buttonImagesArray];
        
        //添加动作事件
        for(int i = 0; i < [isHandledButtons count]; i++)
        {
          CWAButton *button = [(CWAGroupButtonView *)self.iToDoListButtons getButtonObjectOfIndex:i];
          [button addTarget:iListController 
                     action:@selector(buttonListTouch:) 
           forControlEvents:UIControlEventTouchUpInside];
        }
        
        //设置标签样式
        [(CWAGroupButtonView *)self.iToDoListButtons setTitleWithFont:WA_TASK_FONT_KAKU_W3_14
                                    withColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:1.0f]
                                   withStatus:UIControlStateHighlighted];
        [(CWAGroupButtonView *)self.iToDoListButtons setTitleWithFont:WA_TASK_FONT_KAKU_W3_14
                                    withColor:WA_TASK_COLOR_104_143_223
                                   withStatus:UIControlStateNormal];
        CGRect frameOfOne = [(CWAGroupButtonView *)self.iToDoListButtons getButtonObjectOfIndex:1].frame;
        frameOfOne.origin.x -=2;
        [(CWAGroupButtonView *)self.iToDoListButtons getButtonObjectOfIndex:1].frame = frameOfOne;
        CGRect frameOfTwo = [(CWAGroupButtonView *)self.iToDoListButtons getButtonObjectOfIndex:2].frame;
        frameOfTwo.origin.x -=3;
        [(CWAGroupButtonView *)self.iToDoListButtons getButtonObjectOfIndex:2].frame = frameOfTwo;
        

      }
    }
    if(self.iSubmitButtons)
    {
      [self.iSubmitButtons removeFromSuperview];
    }
    
    if (self.iToDoListButtons)
    {
      CGRect groupButtonFrame = self.iToDoListButtons.frame;
      groupButtonFrame.origin.x = 16;
      groupButtonFrame.origin.y = 44;
      groupButtonFrame.size.height = 44;
      self.iToDoListButtons.frame = groupButtonFrame;
      //分组button添加背景色
      groupButtonFrame.origin.x = 0;
      groupButtonFrame.size.width = 320;
      [iGroupBtnBackView setFrame:groupButtonFrame];
      [CWAIosVersionAdaptor adaptIOS6FrameWithView:iGroupBtnBackView];
      if (WA_CURENT_OS_V >=7.0) {
        [iNavBar setBackgroundImage:nil forBarMetrics:UIBarMetricsDefault];
      }
      else
      {
        [iNavBar setBackgroundImage:[UIImage imageNamed:WA_TASK_NAV_BG] forBarMetrics:UIBarMetricsDefault];
      }
    }
    else
    {
      [iNavBar setBackgroundImage:[UIImage imageNamed:WA_TASK_NAV_BG] forBarMetrics:UIBarMetricsDefault];
    }

    [self resetTableViewFrameWithHeight:iToDoListButtons.frame.size.height];

    [(CWAGroupButtonView *)iToDoListButtons setHighlightButtonWithIndex:0];
    [self.view addSubview:iToDoListButtons];
    [CWAIosVersionAdaptor adaptIOS6FrameWithView:iToDoListButtons];
  }
  else if(iTaskType == ESubmit )
  {
    if(!self.iSubmitButtons)
    {
      CWAButtonVOArray *submitButtonVOArray = [self.iButtonVOs objectForKey:TASK_TASKLIST_KSUBMIT];
      if(submitButtonVOArray)
      {
        NSMutableArray *titils = [[NSMutableArray alloc] init];
        NSMutableArray *serviceCodes = [[NSMutableArray alloc] init];
        NSMutableArray *statusCodes = [[NSMutableArray alloc] init];
        for (int i = 0; i < [submitButtonVOArray count]; i++) 
        {
          CWAButtonVO *buttonVO = [submitButtonVOArray getButtonVoWithIndex:i];
          [titils addObject:buttonVO.iName];
          [serviceCodes addObject:buttonVO.iServiceCode];
          [statusCodes addObject:buttonVO.iCode];
        }
        CWAButtonImagesArray *buttonImagesArray = [CWAButtonImagesArray getButtonWithButtonCountIOS7:[submitButtonVOArray count]
                                                                                       withTitle:titils 
                                                                                  withStatusCode:statusCodes 
                                                                                 withServiceCode:serviceCodes 
                                                                                      withStatus:TASK_TASKLIST_KSUBMIT];
        
        self.iSubmitButtons = [[CWAGroupButtonView alloc] initWithButtonImages:buttonImagesArray];
        //添加动作事件
        for(int i = 0; i < [submitButtonVOArray count]; i++)
        {
          CWAButton *button = [(CWAGroupButtonView *)self.iSubmitButtons getButtonObjectOfIndex:i];
          [button addTarget:iListController 
                     action:@selector(buttonListTouch:) 
           forControlEvents:UIControlEventTouchUpInside];
        }
        
        //设置标签样式
        [(CWAGroupButtonView *)self.iSubmitButtons setTitleWithFont:WA_TASK_FONT_KAKU_W3_14
                                                            withColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:1.0f]
                                                           withStatus:UIControlStateHighlighted];
        [(CWAGroupButtonView *)self.iSubmitButtons setTitleWithFont:WA_TASK_FONT_KAKU_W3_14
                                                            withColor:WA_TASK_COLOR_104_143_223
                                                           withStatus:UIControlStateNormal];
        CGRect frameOfOne = [(CWAGroupButtonView *)self.iSubmitButtons getButtonObjectOfIndex:1].frame;
        frameOfOne.origin.x -=2;
        [(CWAGroupButtonView *)self.iSubmitButtons getButtonObjectOfIndex:1].frame = frameOfOne;
        CGRect frameOfTwo = [(CWAGroupButtonView *)self.iSubmitButtons getButtonObjectOfIndex:2].frame;
        frameOfTwo.origin.x -=3;
        [(CWAGroupButtonView *)self.iSubmitButtons getButtonObjectOfIndex:2].frame = frameOfTwo;
        

        
      }
    }
    if(self.iToDoListButtons)
    {
      [self.iToDoListButtons removeFromSuperview];
    }
    if (self.iSubmitButtons)
    {
      CGRect groupButtonFrame = self.iSubmitButtons.frame;
      groupButtonFrame.origin.x = 16;
      groupButtonFrame.origin.y = 44;
      groupButtonFrame.size.height = 44;
      [(CWAGroupButtonView *)iSubmitButtons setFrame:groupButtonFrame];
      //分组button添加背景色
      groupButtonFrame.origin.x = 0;
      groupButtonFrame.size.width = 320;
      [iGroupBtnBackView setFrame:groupButtonFrame];
      [CWAIosVersionAdaptor adaptIOS6FrameWithView:iGroupBtnBackView];
      if (WA_CURENT_OS_V >=7.0) {
        [iNavBar setBackgroundImage:nil forBarMetrics:UIBarMetricsDefault];
      }
      else
      {
        [iNavBar setBackgroundImage:[UIImage imageNamed:WA_TASK_NAV_BG] forBarMetrics:UIBarMetricsDefault];
      }
    }
    else
    {
      [iNavBar setBackgroundImage:[UIImage imageNamed:WA_TASK_NAV_BG] forBarMetrics:UIBarMetricsDefault];
    }
    
    [self resetTableViewFrameWithHeight:iSubmitButtons.frame.size.height];
    
    [(CWAGroupButtonView *)iSubmitButtons setHighlightButtonWithIndex:0];
    [self.view addSubview:iSubmitButtons];
    [CWAIosVersionAdaptor adaptIOS6FrameWithView:iSubmitButtons];
  }
  
}

- (void)resetTableViewFrameWithHeight:(NSInteger)aHeight
{
  CGRect bounds = self.view.bounds;
  bounds.size.height -= self.iNavBar.frame.origin.y + self.iNavBar.frame.size.height+iSetting.view.frame.size.height+aHeight;
  bounds.origin.y = self.iNavBar.frame.origin.y + self.iNavBar.frame.size.height+aHeight;
  [iTableView setFrame:bounds];
  iTableView.contentInset = UIEdgeInsetsMake(-2, 0, 0, 0);
}

- (void) requestFail
{
  iEmptyView.hidden = NO;
  [iTableView tableViewDidFinishedLoading];
}

- (void) updateButtonVO:(NSMutableDictionary *)aButtonListVos
{
  if(aButtonListVos && [aButtonListVos count] > 0)
  {
    if(!self.iButtonVOs)
    {
      self.iButtonVOs = [[NSMutableDictionary alloc] init];
    }
    [self.iButtonVOs addEntriesFromDictionary:aButtonListVos];
  }
}

- (NSMutableDictionary *)getButtonVoDic
{
  return self.iButtonVOs;
}

- (void) clearUI
{
  self.iListVos = nil;
  iEmptyView.hidden = YES;
  [iTableView reloadData];
}

- (void) updateVO
{
  if(self.page != 0 && (!self.iListVos || !self.iListVos.iSectionTitleArray || [self.iListVos.iSectionTitleArray count] <= 0))
  {
    NSString *nomoredata = NSLocalizedStringFromTable(@"nomoredata",@"btarget_task", nil);
    [iTableView tableViewDidFinishedLoadingWithMessage:nomoredata];
    iTableView.reachedTheEnd  = YES;
    if(self.page > 0)
    {
      self.page --;
    }
    return;
  }
  else if((self.iListVos && self.iListVos.iSectionTitleArray && [self.iListVos.iSectionTitleArray count] > 0))
  {
    iEmptyView.hidden = YES;
    iTableView.hidden = NO;
    iTableView.reachedTheEnd  = NO;
    iTableView.scrollsToTop = YES;
  }
  else 
  {
    iEmptyView.hidden = NO;
    iTableView.hidden = YES;
  }
  
  if (iListVos.iIsMutiServiceCode == YES) 
  {
    [iTableView setReachedTheEnd:YES];
  } 
  else 
  {
    [iTableView setReachedTheEnd:NO];
  }
  //界面处理
  [iTableView reloadData];
  [iTableView tableViewDidFinishedLoading];
  iTableView.contentInset = UIEdgeInsetsMake(-2, 0, 0, 0);
}

- (void) updateVO:(CWATaskListVoArray *)aListVos
{
  if(self.page != 0 && (!aListVos || !aListVos.iSectionTitleArray
                        || [aListVos.iSectionTitleArray count] <= 0))
  {
    NSString *nomoredata = NSLocalizedStringFromTable(@"nomoredata",@"btarget_task", nil);
    [iTableView tableViewDidFinishedLoadingWithMessage:nomoredata];
    iTableView.reachedTheEnd  = YES;
    if(self.page > 0)
    {
      self.page --;
    }
    return;
  }
  self.iListVos = aListVos;
  [self updateVO];
}

- (void) setCurrentPageWithPage:(NSNumber *)aPage
{
  self.page =  [aPage intValue];
}


#pragma mark - 设置按钮事件改变字体颜色

- (void)settingBtnTouchUpInSideAction:(id)sender
{
  UILabel *setLabel = (UILabel *)[iSetting.view viewWithTag:WA_TASK_TAB_SETTING_TAG];
  [setLabel setTextColor:WA_TASK_COLOR_143];
}

- (void)settingBtnTouchDownAction:(id)sender
{
  UILabel *setLabel = (UILabel *)[iSetting.view viewWithTag:WA_TASK_TAB_SETTING_TAG];
  [setLabel setTextColor:[UIColor colorWithRed:101.0/255.0 green:165.0/255.0 blue:225.0/255.0 alpha:1.0]];
}

- (void)settingBtnTouchCancelAction:(id)sender
{
  UILabel *setLabel = (UILabel *)[iSetting.view viewWithTag:WA_TASK_TAB_SETTING_TAG];
  [setLabel setTextColor:WA_TASK_COLOR_143];
}

@end

@implementation UINavigationBar (MsgNAvigationBar)
-(void)drawRect:(CGRect)rect
{
  UIImage *image = nil;
  if(WA_CURENT_OS_V >= 7.0)
  {
   image = [UIImage imageNamed:NAV_BD_IMAGE_IOS7];
  }
  else
  {
    image = [UIImage imageNamed:NAV_BD_IMAGE];
  }
  
  [image drawInRect:CGRectMake(0,0,self.frame.size.width,self.frame.size.height)];
}

@end

