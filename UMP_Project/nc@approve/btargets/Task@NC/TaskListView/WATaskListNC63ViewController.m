#import "WATaskListNC63ViewController.h"
#import "WAGroupButtonIntervalView.h"
#import "WATaskListNC63BnsHandler.h"
#import "WAStatusVO.h"
#import "WASpinnerView.h"
#import "WANC63TaskListVO.h"
#import "WAReminderContentRequestVO.h"
#import "WATaskDetailNC63ViewVO.h"
#import "WAMenuViewController.h"
#import "WATaskDetailNC63ViewController.h"
#import "WATaskAcListViewController.h"
#import "WAMainBodyRequestVO.h"
#import "WATaskListNC63Controller.h"
#import "AppDelegate.h"
#import "WAFileUtil.h"
#import "WAHTMLResourceVO.h"
#import "WAIosVersionAdaptor.h"
#import "WAGroupTabBarView.h"
static NSString *WA_TASKLIST_TOOLBAR_BD = @"toolbar_nc.png";

#define WA_YONYOU_RED_COLOR [UIColor colorWithRed:229.0f/255.0f green:0.0f/255.0f blue:17.0f/255.0f alpha:1]

@interface CWATaskListNC63ViewController()
@end

@implementation CWATaskListNC63ViewController
{
    __weak IBOutlet UILabel *noDateLabel;
    BOOL isRequsetWhenDidLoad;
}
static NSString *WA_TASKLIST_TOOLBAR_SETTING_NORMAL = @"tabbar_ic_approval_set_normal";
static NSString *WA_TASKLIST_TOOLBAR_SETTING_TOUCH = @"tabbar_ic_approval_set_selected";

//消息详情的请求key
//消息详情的taskid
static NSString *WA_TASKDETAIL_TASKID = @"taskid";

//任务列表的key
static NSString *WA_TASKDETAIL_TASKBILL = @"getTaskBill";
//任务详情返回的flag
static NSString *WA_TASKDETAIL_FLAG = @"flag";
//任务详情返回的描述信息
static NSString *WA_TASKDETAIL_DESC = @"desc";

//servicecodekey
static NSString *WA_TASKDETAIL_SERVICECODE = @"servicecode";

static NSString *controllerC = @"approve_RelNcTaskListController";

static NSString *namespaceC = @"nc.bs.oa.oama.ecm";

static NSString *ModelName = @"ncapprove";

static int WA_TASKDETAIL_COUNTSPERPAGE = 25;
const static int WA_TASK_TAB_SETTING63_TAG = 1235;

@synthesize iStatusVOs;
@synthesize iTopGroupButtonView;

- (id)initWithNibName:(NSString *)nibNameOrNil
            andBundle:(NSBundle *)nibBundleOrNil
       andTWATaskType:(TWATaskType)aTWATaskType
            andBaseVO:(CWABaseVO *)aBaseVO
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        if(aBaseVO)
        {
            self.iTaskType = aTWATaskType;
            self.iListVos = [CWATaskListNC63BnsHandler getTaskListWithRequsetDic:aBaseVO.voDictionary
                                                                       withMsgVO:nil
                                                                    withIsSingle:NO];
            self.iButtonVOs = [CWATaskListNC63BnsHandler getButtonListWithRequsetDic:aBaseVO.voDictionary
                                                                           withMsgVO:nil
                                                                        withIsSingle:NO];
            
            self.iStatusVOs = [CWATaskListNC63BnsHandler getStatusListWithRequsetDic:aBaseVO.voDictionary
                                                                           withMsgVO:nil];
        }
        else
        {
            isRequsetWhenDidLoad = YES;
        }
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(refreshTableview)
                                                     name:TASKCENTER_TASKLIST_REFRESH_NOFIFY
                                                   object:nil];
        
    }
    return self;
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


- (void)initNav
{
    if (WA_CURENT_OS_V >= 7.0f){
        [iNavBar setBackgroundImage:[UIImage imageNamed:@"nav.png"] forBarMetrics:UIBarMetricsDefault];
    }
    else
    {
        UIImage *bgImg = [[UIImage alloc] init];
        [iNavBar setBackgroundImage:bgImg forBarMetrics:UIBarMetricsDefault];
    }
    [iNavBar setBackgroundColor:[UIColor clearColor]];
    iNavBar.topItem.rightBarButtonItem = nil;
    if (WA_CURENT_OS_V >= 7.0f){
        [CWAIosVersionAdaptor adaptWithNavBar:iNavBar];
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
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(7,0,64,44)];
    [button setBackgroundColor:[UIColor orangeColor]];
    [CWAIosVersionAdaptor adaptWithLeftNavBtn:button noTitle:NO];
    [button addTarget:self action:@selector(returnBack) forControlEvents:UIControlEventTouchUpInside];
    [iNavBar addSubview:button];
//    UIBarButtonItem* leftButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
//    UINavigationItem* item = [[UINavigationItem alloc] initWithTitle:nil];
//    [item setTitle:@"移动审批"];
//    [item setLeftBarButtonItem:leftButtonItem];
//    [iNavBar pushNavigationItem:item animated:NO];
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0f) {
        [CWAIosVersionAdaptor adaptWithNavBar:iNavBar];
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if([CWASpinnerView sharedCWASpinnerView].isShow)
    {
        return;
    }
    
    if(!iTaskBnsHandler)
    {
        iTaskBnsHandler = [[CWATaskListNC63BnsHandler alloc] init];
    }
    iTaskBnsHandler.iDelegate = self;
    NSString* SectionTitle = [iListVos.iSectionTitleArray objectAtIndex:indexPath.section];
    NSArray *rowArray  = [iListVos.iContentDic objectForKey:SectionTitle];
    CWANC63TaskListVO *listVO = [rowArray objectAtIndex:indexPath.row];
    iTaskID = listVO.iID;
    [[CWASpinnerView sharedCWASpinnerView] showInWindowsIsFullScreen:YES
                                                     withShowingText:NSLocalizedStringFromTable(@"Wait",@"btarget_task",nil)];
    
    
    CWAButton *btn = [iGroupButtonView getCurrentHighlightButton];
    
    CWAButton * currentButton = [(CWAGroupButtonView *)self.iTopGroupButtonView  getCurrentHighlightButton];
    
    
    NSDictionary *taskStatueDic = [[NSDictionary alloc] initWithObjectsAndKeys:
                                   btn.iStatus,TASK_TASKLIST_KSTATUSKEY,
                                   currentButton.iStatusCode,TASK_TASKLIST_KSTATUSVALUE,
                                   nil];
    
    //组装任务附件列表请求vo
    NSMutableDictionary *dataDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                    listVO.iID,WA_TASKDETAIL_TASKID,nil];
    [dataDic addEntriesFromDictionary:taskStatueDic];
    [dataDic addEntriesFromDictionary:[CWACommonInfoVO getDefaultEmptyGroupIDAndUserID]];
    CWATaskAttachmentRequestVO *aAttachmentVo = [[CWATaskAttachmentRequestVO alloc] initWithDic:dataDic];
    
    //组装任务动作请求vo
    NSMutableDictionary *aActionDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                       listVO.iID,WA_TASKDETAIL_TASKID, nil];
    [aActionDic addEntriesFromDictionary:[CWACommonInfoVO getDefaultEmptyGroupIDAndUserID]];
    [aActionDic addEntriesFromDictionary:taskStatueDic];
    CWATaskAcListRequestVO *aActionVO = [[CWATaskAcListRequestVO alloc] initWithDic:aActionDic];
    
    //组装任务详情请求vo
    NSMutableDictionary *aBillDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                     listVO.iID,WA_TASKDETAIL_TASKID,nil];
    [aBillDic addEntriesFromDictionary:taskStatueDic];

    
    [aBillDic addEntriesFromDictionary:[CWACommonInfoVO getDefaultEmptyGroupIDAndUserID]];
    CWATaskAcRequestVO *aBillVo = [[CWATaskAcRequestVO alloc] initWithDic:aBillDic];
    
    //获取正文内容
    CWAMainBodyRequestVO *mainBodyRequestVO = [[CWAMainBodyRequestVO alloc] init];
    mainBodyRequestVO.iTaskid = iTaskID;
    mainBodyRequestVO.iStatuskey =  btn.iStatus;
    mainBodyRequestVO.iStatuscode = currentButton.iStatusCode;
    [mainBodyRequestVO fillVoDictionary];
    
    
    
    
    NSArray *dataArray = nil;
    if([listVO.iIsreminder isEqualToString:@"Y"])
    {
        //组装获取催办内容请求
        CWAReminderContentRequestVO *reminderContentRequestVO = [[CWAReminderContentRequestVO alloc] init];
        reminderContentRequestVO.iTaskid = iTaskID;
        reminderContentRequestVO.iStatuskey =  btn.iStatus;
        reminderContentRequestVO.iStatuscode = currentButton.iStatus;
        [reminderContentRequestVO fillVoDictionary];
        dataArray = [NSArray arrayWithObjects:aBillVo,aActionVO,aAttachmentVo,reminderContentRequestVO,mainBodyRequestVO,nil];
    }
    else
    {
        dataArray = [NSArray arrayWithObjects:aBillVo,aActionVO,aAttachmentVo,mainBodyRequestVO,nil];
    }
    
    
    
    [iTaskBnsHandler sendTaskBillMsg:dataArray
                     withServiceCode:listVO.iServiceCode
                      WithIsReminder:[listVO.iIsreminder isEqualToString:@"Y"]];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
//    return 60;
    return 80;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell = [super tableView:tableView cellForRowAtIndexPath:indexPath];
    //行距问题，待解决2017年03月16日20:30:57
//    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:self.iThemeTitle.text];
//    
//    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
//    
//    paragraphStyle.alignment = NSTextAlignmentLeft;
//    
//    paragraphStyle.maximumLineHeight = 60;  //最大的行高
//    
//    paragraphStyle.lineSpacing = 5;  //行自定义行高度
//    
//    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [self.iThemeTitle.text length])];
//    
//    self.iThemeTitle.attributedText = attributedString;
//    [self.iThemeTitle sizeToFit];
    return cell;
}

- (void)requestHttp:(NSInteger)iPage
{
    
    if(!iTaskBnsHandler)
    {
        iTaskBnsHandler = [[CWATaskListNC63BnsHandler alloc] init];
    }
    iTaskBnsHandler.iDelegate = iListController;
    int startLine = iPage*WA_TASKDETAIL_COUNTSPERPAGE == 0?1:iPage*WA_TASKDETAIL_COUNTSPERPAGE+1;
    NSString *strStartLine = [NSString stringWithFormat:@"%i",startLine];
    int countPerPage =iPage == 0?WA_TASKDETAIL_COUNTSPERPAGE:(iPage+1)*WA_TASKDETAIL_COUNTSPERPAGE;
    NSString *strCountPerPage = [NSString stringWithFormat:@"%i",countPerPage];
    CWAButton *btn = [iTopGroupButtonView getCurrentHighlightButton];
    [iTaskBnsHandler requestWithDate:[CWATimeUtil getTodayDateString]
                        andStartline:strStartLine
                            andCount:strCountPerPage
                        andStatusKey:btn.iStatus
                      WithSeviceCode:nil
                       andStatusCode:btn.iStatusCode];
}

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
        NSMutableString *otherErrorDesc = [[NSMutableString alloc] initWithCapacity:1];
        NSMutableArray *allErrors = [[NSMutableArray alloc] initWithCapacity:1];
        for (CWABaseVO *basevo in vosArray)
        {
            NSString *actinType = [basevo.voDictionary objectForKey:WA_TASKDETAIL_ACTIONTYPE];
            NSArray *serviceCodeArray = [basevo.voDictionary objectForKey:WA_TASKDETAIL_SERVICECODE];
            NSString *serviceCode = [serviceCodeArray objectAtIndex:0];
            
            [actionDic setValue:serviceCode forKey:actinType];
            
            
            if ([actinType isEqualToString:WA_TASKDETAIL_TASKBILL])
            {
                taskDetailFlag = [[basevo.voDictionary objectForKey:WA_TASKDETAIL_FLAG] intValue];
                taskDetailDesc = [basevo.voDictionary objectForKey:WA_TASKDETAIL_DESC];
                if([basevo.voDictionary objectForKey:serviceCode])
                {
                    [dataDic setObject:[basevo.voDictionary objectForKey:serviceCode] forKey:actinType];
                }
            }
            else
            {
                int flag = [[basevo.voDictionary objectForKey:WA_TASKDETAIL_FLAG] intValue];
                if(flag != 0)
                {
                    //如果错误信息为99并且flag为-1不提示错误信息，配合WA修改
                    NSString *otherError = [basevo.voDictionary objectForKey:WA_TASKDETAIL_DESC];
                    if(!(flag == -1 && [@"99" isEqualToString:otherError]))
                    {
                        if([allErrors containsObject:otherError])
                        {
                            continue;
                        }
                        [allErrors addObject:otherError];
                        if([otherErrorDesc length] > 0)
                        {
                            [otherErrorDesc appendFormat:@"\n%@",otherError];
                        }
                        else
                        {
                            [otherErrorDesc appendString:otherError];
                        }
                    }
                }
                else
                {
                    if([basevo.voDictionary objectForKey:serviceCode])
                    {
                        [dataDic setObject:[basevo.voDictionary objectForKey:serviceCode] forKey:actinType];
                    }
                }
            }
        }
        [dataDic setObject:actionDic forKey:WA_TASKDETAIL_ACTIONTYPE];
        
        //初始化feedviewvo
        CWATaskDetailNC63ViewVO *aFeedViewVo = [[CWATaskDetailNC63ViewVO alloc] initWithDic:dataDic];
        aFeedViewVo.iTaskID = iTaskID;
        
        [aFeedViewVo initMemberVariables];
        
        
        //获取任务状态
        CWAButton *btn = [iGroupButtonView getCurrentHighlightButton];
        
        CWAButton * currentButton = [(CWAGroupButtonView *)self.iTopGroupButtonView  getCurrentHighlightButton];
        aFeedViewVo.iStatuskey =  btn.iStatus;
        aFeedViewVo.iStatuscode =  currentButton.iStatusCode;
        NSDictionary *taskStatueDic = [[NSDictionary alloc] initWithObjectsAndKeys:
                                       btn.iStatus,TASK_TASKLIST_KSTATUSKEY,
                                       currentButton.iStatusCode,TASK_TASKLIST_KSTATUSVALUE,
                                       nil];
        
        
        CWAMenuViewController *iMenuViewController = nil;
        CWATaskDetailNC63ViewController *taskDetailViewControlelr = nil;
        if (taskDetailFlag < 0)
        {
            //wa端错误
            [self showAlertViewWithTitle:taskDetailDesc];
        }
        else if (taskDetailFlag == 0)
        {
            //初始化界面controller
            
            taskDetailViewControlelr = [[CWATaskDetailNC63ViewController alloc] initWithFeedVO:aFeedViewVo];
            
            if(aFeedViewVo.iHtmlfile)
            {
                taskDetailViewControlelr.iWebViewURL = [self saveHTMLVO:aFeedViewVo];
            }
            taskDetailViewControlelr.iTaskDic = taskStatueDic;
            
            if([otherErrorDesc length] > 0)
            {
                taskDetailViewControlelr.iErrorMessage = otherErrorDesc;
            }
            iMenuViewController = [[CWAMenuViewController alloc] initWithRootViewController:taskDetailViewControlelr];
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
        
        //切换视图
        UINavigationController *iNav = ((AppDelegate *)[[UIApplication sharedApplication] delegate]).navigationCtl;
        [iNav pushViewController:taskDetailViewControlelr animated:YES];

    }
    @catch (NSException *exception)
    {
        //显示异常消息
        [self showAlertViewWithTitle:exception.name];
    }
}


- (void)requestFail:(NSError *)aError
{
    [iTableView tableViewDidFinishedLoading];
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:nil
                                                        message:[aError domain]
                                                       delegate:nil
                                              cancelButtonTitle:NSLocalizedStringFromTable(@"ok", @"btarget_task",nil)
                                              otherButtonTitles:nil];
    [alertView show];
}



- (void)getSetting
{
    int maxWidth = [[UIScreen mainScreen] applicationFrame].size.width;
    CWAButtonImagesArray *buttonImagesArray = [[CWAButtonImagesArray alloc] init];
    for (int i = 0 ; i < [self.iStatusVOs count]; i ++)
    {
        CWAStatusVO *statusVO = [self.iStatusVOs objectAtIndex:i];
        NSString *aID= statusVO.iID;
        NSString *touchImageNmae = [NSString stringWithFormat:@"%@_touch",aID];
        UIImage * normalImage = [UIImage imageNamed:aID];
        UIImage * touchImage = [UIImage imageNamed:touchImageNmae];
        CWAButton *btn = [[CWAButton alloc] initWithNormalImage:normalImage
                                             withHighlightImage:touchImage
                                                       withText:nil
                                                 withStatusCode:statusVO.iName
                                                withServiceCode:nil
                                                     withStatus:aID];
        [btn addTarget:iListController
                action:@selector(rightButtonClick:)
      forControlEvents:UIControlEventTouchUpInside];
        
        [buttonImagesArray addButtonImage:btn];
    }
    
    //设置按钮位置
    if([buttonImagesArray count] == 3)
    {
        if (maxWidth >= 375.00f) {
            iGroupButtonView = [[CWAGroupTabBarView alloc] initWithButtonImages:buttonImagesArray
                                                               WithEdgeDistance:0.15 * maxWidth
                                                                   WithInterval:0.25 * maxWidth];
        }else{
            iGroupButtonView = [[CWAGroupTabBarView alloc] initWithButtonImages:buttonImagesArray
                                                               WithEdgeDistance:40
                                                                   WithInterval:80];
        }
    }

    iGroupButtonView.frame = CGRectMake(iBottomView.frame.origin.x, iBottomView.frame.origin.y - 5.0f, maxWidth, 49.0f);
    [iGroupButtonView setHighlightButtonWithIndex:0];
    iNavBarItem.title = [iGroupButtonView getCurrentHighlightButton].iStatusCode;
    [self.view addSubview:iGroupButtonView];
    [iGroupButtonView setBackgroundColor:[UIColor clearColor]];
    UIImageView *tabBackView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 4, maxWidth, 49)];
    [tabBackView setImage:[UIImage imageNamed:WA_TASKLIST_TOOLBAR_BD]];
    [iGroupButtonView addSubview:tabBackView];
    [iGroupButtonView sendSubviewToBack:tabBackView];
}

- (void)settingBtnTouchUpInSideAction:(id)sender
{
    UILabel *setLabel = (UILabel *)[iGroupButtonView viewWithTag:WA_TASK_TAB_SETTING63_TAG];
    [setLabel setTextColor:WA_TASK_COLOR_143];
    [((CWATaskListNC63Controller *)iListController) settingBtnClick:sender];
}

- (void)settingBtnTouchDownAction:(id)sender
{
    UILabel *setLabel = (UILabel *)[iGroupButtonView viewWithTag:WA_TASK_TAB_SETTING63_TAG];
    [setLabel setTextColor:WA_TASK_COLOR_101_165_255];
}

- (void)settingBtnTouchCancelAction:(id)sender
{
    UILabel *setLabel = (UILabel *)[iGroupButtonView viewWithTag:WA_TASK_TAB_SETTING63_TAG];
    [setLabel setTextColor:WA_TASK_COLOR_143];
}

- (void)beforeSentHttp
{
    [self.iTopGroupButtonView removeFromSuperview];
    //    iEmptyView.hidden = NO;
    iTableView.hidden = YES;
}

- (void)updateStatusVOs:(NSMutableArray *)aStatusVOs
{
    self.iStatusVOs = aStatusVOs;
    [self getSetting];
}

- (void)viewDidLoad
{
    
    [self initNav];
    iListController.iListControllerDelegate = self;
    ((CWATaskListNC63Controller *)iListController).iNC63TaskListControllerDelegate = self;
    if(isRequsetWhenDidLoad)
    {
        NSString *wait = NSLocalizedStringFromTable(@"Wait",@"btarget_task",nil);
        [[CWASpinnerView sharedCWASpinnerView] showInWindowsIsFullScreen:YES
                                                         withShowingText:wait];
        [self requestHttp:self.page];
    }
    
    
    
    self.iCellNib = [UINib nibWithNibName:@"WATaskListContentCell" bundle:nil];
    
    self.page = 0;
    
    if(isRequestVO)
    {
        [self.iListController rightButtonClick:nil];
    }
    
    
    [self getSetting];
    
    
    [self updateTastKey];
    
    
    //设置tableview的位置信息，并实例化iTableView，添加iTableView到界面
    CGRect bounds = self.view.bounds;
    if (iTopGroupButtonView) {
        //适配ios7，计算tableview的frame
        //tableview和toolbar的颜色有的时候会重复，显得颜色与UE不一致，-1修改tableview的frame。
        bounds.size.height -= self.iTopGroupButtonView.frame.origin.y + self.iTopGroupButtonView.frame.size.height + 44.0f;
        bounds.origin.y +=  self.iTopGroupButtonView.frame.origin.y + self.iTopGroupButtonView.frame.size.height;
        
    }
    else
    {
        if (WA_CURENT_OS_V >=7.0f) {
            bounds.size.height -= 44 + 44.0f + 44.0f + 25.0f;
            bounds.origin.y += 44 + 44.0f + 20;
        }
        else
        {
            bounds.size.height -= 44 + 44.0f;
            bounds.origin.y +=  44 + 44.0f;
        }
        
    }
    
    
    iTableView = [[CWAPullingRefreshTableView alloc] initWithFrame:bounds pullingDelegate:self];
    
    iTableView.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
    
    
    iTableView.headerOnly = NO;
    
    
    
    iTableView.dataSource = self;
    iTableView.delegate = self;
    
    iTableView.backgroundColor = WA_TASK_COLOR_240;
    [CWAIosVersionAdaptor tableViewSeparatorInset:iTableView];
    iTableView.contentInset = UIEdgeInsetsMake(-2, 0, 0, 0);
    iTableView.separatorColor = WACOLOR(223, 223, 223);
    [self.view addSubview:iTableView];
    [iTableView setBackgroundColor:[UIColor whiteColor]];
    CGRect emptyFrame = self.iEmptyView.frame;
    emptyFrame.size.width = [[UIScreen mainScreen] applicationFrame].size.width;
    self.iEmptyView.frame = emptyFrame;
    CGRect labelFrame = noDateLabel.frame;
    labelFrame.origin.x = [[UIScreen mainScreen] applicationFrame].size.width/2 - labelFrame.size.width/2;
    noDateLabel.frame = labelFrame;
    //[self clearExtraLines:iTableView];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"presentView" object:nil];
}





-(void) returnBack{
    [self.navigationController popViewControllerAnimated:NO];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"notifyBack" object:nil];
}

#pragma mark - 去掉多余空行

-(void)clearExtraLines:(UITableView *) tableView{
    UIView *view = [[UIView alloc] init];
    [view setBackgroundColor:[UIColor clearColor]];
    [tableView setTableFooterView:view];
}

#pragma mark - 分组按钮
- (void)updateTastKey
{
    int maxWidth = [[UIScreen mainScreen] applicationFrame].size.width;
    iNavBarItem.title = [iGroupButtonView getCurrentHighlightButton].iStatusCode;
    self.page = 0;
    iTableView.reachedTheEnd  = NO;
    CWAButton *btn = [iGroupButtonView getCurrentHighlightButton];
    //我的待办
    CWAButtonVOArray *isBtns = [self.iButtonVOs objectForKey:btn.iStatus];
    
    if(isBtns)
    {
        NSMutableArray *titils = [[NSMutableArray alloc] init];
        NSMutableArray *serviceCodes = [[NSMutableArray alloc] init];
        NSMutableArray *statusCodes = [[NSMutableArray alloc] init];
        for (int i = 0; i < [isBtns count]; i++)
        {
            CWAButtonVO *buttonVO = [isBtns getButtonVoWithIndex:i];
            if(buttonVO.iName)
            {
                [titils addObject:buttonVO.iName];
            }
            if(buttonVO.iServiceCode)
            {
                [serviceCodes addObject:buttonVO.iServiceCode];
            }
            
            if(buttonVO.iCode)
            {
                [statusCodes addObject:buttonVO.iCode];
            }
        }
        
        CWAButtonImagesArray *buttonImagesArray = [CWAButtonImagesArray getButtonWithButtonCountIOS7:[isBtns count]
                                                                                           withTitle:titils
                                                                                      withStatusCode:statusCodes
                                                                                     withServiceCode:serviceCodes
                                                                                          withStatus:btn.iStatus];

        [self.iTopGroupButtonView removeFromSuperview];
        self.iTopGroupButtonView = [[CWAGroupButtonView alloc] initWithButtonImages:buttonImagesArray];
        
        //添加动作事件
        for(int i = 0; i < [isBtns count]; i++)
        {
            CWAButton *button = [(CWAGroupButtonView *)self.iTopGroupButtonView getButtonObjectOfIndex:i];
            [button addTarget:iListController
                       action:@selector(buttonListTouch:)
             forControlEvents:UIControlEventTouchUpInside];
        }
        
        //动态计算位置，适配ios7的问题
        if (self.iTopGroupButtonView) {
            CGRect frameOfBar = self.iNavBar.frame;
            frameOfBar.origin.y += frameOfBar.size.height;
            if (maxWidth >= 375) {
                frameOfBar.origin.x = maxWidth * 0.145;
            }else{
                frameOfBar.origin.x = 16;
            }
            frameOfBar.size.height = 44.0f;
            self.iTopGroupButtonView.frame = frameOfBar;
            //分组button添加背景色
            frameOfBar.origin.x = 0;
            frameOfBar.size.width = maxWidth;
            UIImageView *backGroupView = [[UIImageView alloc] initWithFrame:frameOfBar];
            [backGroupView setImage:[UIImage imageNamed:WA_TASK_NAV_BG]];
            [backGroupView setUserInteractionEnabled:NO];
            [self.view addSubview:backGroupView];
        }
        else
        {
            [iNavBar setBackgroundImage:[UIImage imageNamed:WA_TASK_NAV_BG] forBarMetrics:UIBarMetricsDefault];
        }
        
        
        //设置标签样式
        [iTopGroupButtonView setTitleWithFont:WA_TASK_FONT_KAKU_W3_14
                                    withColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:1.0f]
                                   withStatus:UIControlStateHighlighted];
        [iTopGroupButtonView setTitleWithFont:WA_TASK_FONT_KAKU_W3_14
                                    withColor:WA_YONYOU_RED_COLOR
                                   withStatus:UIControlStateNormal];
        
        [self.iTopGroupButtonView setHighlightButtonWithIndex:0];
        [self.view addSubview:self.iTopGroupButtonView];
    }
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    iGroupButtonView.frame = iBottomView.frame;
}

- (void) viewDidAppear:(BOOL)animated
{
    
    [super viewDidAppear:animated];
    [self.iTableView deselectRowAtIndexPath:[self.iTableView indexPathForSelectedRow] animated:YES];
    
    [self requestHttp:self.page];
}


@end
