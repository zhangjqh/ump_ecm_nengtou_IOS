
#import "WATaskDetailNC63ViewController.h"
#import "WATaskMacro.h"
#import "WAStyle0NC63ViewController.h"
#import "WAStyle1NC63ViewController.h"
#import "WAStyle2NC63ViewController.h"
#import "WAStyle3NC63ViewController.h"
#import "WAButtonImagesArray.h"
#import "WATaskAcListVO.h"
#import "WAMainBodyRequestVO.h"
#import "WAMenuViewController.h"
#import "WASpinnerView.h"
#import "WAUFTool.h"
#import "WAIosVersionAdaptor.h"
#import "WAStyle4NC63ViewController.h"

//navigationbar的tag
#define WA_FEEDVIEWCONTROLLER_NAVIGATIONBAR_TAG 101
//任务titlelabletag
#define WA_FEEDVIEWCONTROLLER_TITLELABLE_TAG 102
//imageview的tag
#define WA_FEEDVIEW_IMAGEVIEW_TAG 103
//navigationbar的右边button的tag
#define WA_TASK_FEEDVIEW_NAVIGATIONRIGHTBAR_TAG 104

#define WA_YONYOU_RED_COLOR [UIColor colorWithRed:229.0f/255.0f green:0.0f/255.0f blue:17.0f/255.0f alpha:1]

@implementation CWATaskDetailNC63ViewController

@synthesize iTaskID;
@synthesize iServiceCode;
@synthesize iStatusKey;
@synthesize iStatusCode;
@synthesize iErrorMessage;

static NSString *WA_TASKLIST_TOOLBAR_BD = @"toolbar_nc.png";

- (id)initWithFeedVO:(CWATaskDetailViewVO *)aFeedVO
{
  if ((self = [super initWithNibName:@"WATaskDetailNC63ViewController" bundle:nil]))
  {
    iFeedViewVO = aFeedVO;
	  iTaskBnsHandler = [[CWATaskListNC63BnsHandler alloc] init];
		iTaskBnsHandler.iDelegate = self;

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


- (void)addToolBar
{
  UINavigationBar *aNavigationBar = (UINavigationBar *)[self.view viewWithTag:WA_FEEDVIEWCONTROLLER_NAVIGATIONBAR_TAG];
  aNavigationBar.topItem.title = iFeedViewVO.iTaskTitle;
  UIImageView *imageveiw = (UIImageView *)[self.view viewWithTag:WA_FEEDVIEW_IMAGEVIEW_TAG];
  imageveiw.backgroundColor = WA_TASK_TABLEVIEW_BACKGROUND_COLOR;
  [iFeedController initElementWithStatusDic:iTaskDic];
  iFeedController.iTaskTitle = iFeedViewVO.iTaskTitle;
  iFeedController.iTaskID = iFeedViewVO.iTaskID;
  iFeedController.iServiceCode = iFeedViewVO.iServiceCode;
  UILabel *titleLable = (UILabel *)[self.view viewWithTag:WA_FEEDVIEWCONTROLLER_TITLELABLE_TAG];
  titleLable.text = iFeedViewVO.iTaskTitle;
  
  if (!iFeedViewVO.iIsHaveTableBody ||iFeedViewVO.iStyle == 0)
  {
    iTableviewController = [[CWAStyle0NC63ViewController alloc] initWithNibName:@"WAStyle0ViewController"
																																				 bundle:nil];
    [(CWAStyle0NC63ViewController *)iTableviewController setIFeedVieVO:iFeedViewVO];
    ((CWAStyle0NC63ViewController *)iTableviewController).iTaskDetailController = iFeedController;
    [self.view addSubview:iTableviewController.view];
  }
  else if(iFeedViewVO.iStyle == 1)
  {
    iTableviewController = [[CWAStyle1NC63ViewController alloc] initWithNibName:@"WAStyle1ViewController"
																																				 bundle:nil];
    [(CWAStyle1NC63ViewController *)iTableviewController setIFeedVieVO:iFeedViewVO];
    [self.view addSubview:iTableviewController.view];
  }
  else if(iFeedViewVO.iStyle == 2 && [iFeedViewVO.iTaskBillBodyArray count] > 2)
  {
    iTableviewController = [[CWAStyle2NC63ViewController alloc] initWithNibName:@"WAStyle2ViewController"
																																				 bundle:nil];
    [(CWAStyle2NC63ViewController *)iTableviewController setIFeedVieVO:iFeedViewVO];
    [self.view addSubview:iTableviewController.view];
    ((CWAStyle2NC63ViewController *)iTableviewController).iTaskDetailController = iFeedController;
  }
  else if (iFeedViewVO.iStyle == 2 && [iFeedViewVO.iTaskBillBodyArray count] <= 2)
  {
    iTableviewController = [[CWAStyle3NC63ViewController alloc] initWithNibName:@"WAStyle3ViewController"
																																				 bundle:nil];
    [(CWAStyle3NC63ViewController *)iTableviewController setIFeedVieVO:iFeedViewVO];
    [self.view addSubview:iTableviewController.view];
		((CWAStyle3NC63ViewController *)iTableviewController).iTaskDetailController = iFeedController;
  }
  else if(iFeedViewVO.iStyle == 3 && iWebViewURL)
  {
  
    iTableviewController = [[CWAStyle4NC63ViewController alloc] initWithNibName:@"WAStyle4NC63ViewController"
                                                                         bundle:nil
                                                                        WithURL:iWebViewURL];
    [(CWAStyle4NC63ViewController *)iTableviewController setIFeedVieVO:iFeedViewVO];
		((CWAStyle4NC63ViewController *)iTableviewController).iTaskDetailController = iFeedController;
    [self.view addSubview:iTableviewController.view];
  
  }
  UIView *headerView = [CWAIosVersionAdaptor adaptTableViewGroupSectionHeaderWithNilTitle:@""];
  ((CWABaseTableViewController *)iTableviewController).tableView.tableHeaderView = headerView;
  [CWAIosVersionAdaptor adaptIOS6FrameWithView:iFuzzyImageView];
  [self initBottomView];
}

static NSString *WA_TASKDETAIL_TASKID = @"taskid";

- (void)viewDidLoad
{

  UINavigationBar *aNavigationBar = (UINavigationBar *)[self.view viewWithTag:WA_FEEDVIEWCONTROLLER_NAVIGATIONBAR_TAG];
  if(WA_CURENT_OS_V >= 7.0f)
  {
    [CWAIosVersionAdaptor adaptWithNavBar:aNavigationBar];
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
    [aNavigationBar setTitleTextAttributes:attributes];
  }

  if ([aNavigationBar respondsToSelector:@selector(setBackgroundImage:forBarMetrics:)])
  {
    //if(WA_CURENT_OS_V >= 7.0f)
    {
      [aNavigationBar setBackgroundImage:[UIImage imageNamed:WA_TASK_NAVIGATIONBAR_BACKGROUND_IMAGE_IOS7]
                           forBarMetrics:UIBarMetricsDefault];
      [CWAIosVersionAdaptor adaptWithLeftNavBtn:iLeftBtn];

    }
    //else
    //{
    //  [aNavigationBar setBackgroundImage:[UIImage imageNamed: WA_TASK_NAVIGATIONBAR_BACKGROUND_IMAGE]
    //                       forBarMetrics:UIBarMetricsDefault];
    //}
    [iLeftBtn addTarget:self action:@selector(backToUp) forControlEvents:UIControlEventTouchUpInside];
    [aNavigationBar setBackgroundImage:[UIImage imageNamed:WA_TASK_NAVIGATIONBAR_BACKGROUND_IMAGE_IOS7]
                         forBarMetrics:UIBarMetricsDefault];
}
  
	//如果数据为空，请求数据
  if(!iFeedViewVO)
	{
		NSDictionary *taskStatueDic = [[NSDictionary alloc] initWithObjectsAndKeys:
                             	    iStatusKey,TASK_TASKLIST_KSTATUSKEY,
                             	    iStatusCode,TASK_TASKLIST_KSTATUSVALUE,
                              	   nil];
    self.iTaskDic = taskStatueDic;
    //组装任务附件列表请求vo
    NSMutableDictionary *dataDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                  iTaskID,WA_TASKDETAIL_TASKID,nil];
    [dataDic addEntriesFromDictionary:taskStatueDic];
    [dataDic addEntriesFromDictionary:[CWACommonInfoVO getDefaultEmptyGroupIDAndUserID]];
    CWATaskAttachmentRequestVO *aAttachmentVo = [[CWATaskAttachmentRequestVO alloc] initWithDic:dataDic];
  
    //组装任务动作请求vo
    NSMutableDictionary *aActionDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                     iTaskID,WA_TASKDETAIL_TASKID, nil];
    [aActionDic addEntriesFromDictionary:[CWACommonInfoVO getDefaultEmptyGroupIDAndUserID]];
    [aActionDic addEntriesFromDictionary:taskStatueDic];
    CWATaskAcListRequestVO *aActionVO = [[CWATaskAcListRequestVO alloc] initWithDic:aActionDic];
  
    //组装任务详情请求vo
    NSMutableDictionary *aBillDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                   iTaskID,WA_TASKDETAIL_TASKID,nil];
    [aBillDic addEntriesFromDictionary:taskStatueDic];
  
    [aBillDic addEntriesFromDictionary:[CWACommonInfoVO getDefaultEmptyGroupIDAndUserID]];
    CWATaskAcRequestVO *aBillVo = [[CWATaskAcRequestVO alloc] initWithDic:aBillDic];
  
    //获取正文内容
    CWAMainBodyRequestVO *mainBodyRequestVO = [[CWAMainBodyRequestVO alloc] init];
    mainBodyRequestVO.iTaskid = iTaskID;
    mainBodyRequestVO.iStatuskey =  iStatusKey;
    mainBodyRequestVO.iStatuscode = iStatusCode;
    [mainBodyRequestVO fillVoDictionary];
  
    NSArray *dataArray =[NSArray arrayWithObjects:aBillVo,aActionVO,aAttachmentVo,mainBodyRequestVO,nil];
  
    [iTaskBnsHandler sendTaskBillMsg:dataArray
                     withServiceCode:iServiceCode
                      WithIsReminder:NO];
    [[CWASpinnerView sharedCWASpinnerView] showInWindowsIsFullScreen:YES
                                                     withShowingText:NSLocalizedStringFromTable(@"Wait",@"component_attachment",nil)];
	}
  else
  {
    [self addToolBar];
   
  }
  if (iErrorMessage)
  {
    [self showAlert];
  }
}

- (void) dimissAlert:(UIAlertView *)alert
{
if(alert)
{
  [alert dismissWithClickedButtonIndex:[alert cancelButtonIndex]animated:YES];

}
}

-(void)showAlert
{
  UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil
                                                 message:iErrorMessage
                                                delegate:nil
                                       cancelButtonTitle:nil
                                       otherButtonTitles:nil];
  
  [alert show];
  [self performSelector:@selector(dimissAlert:) withObject:alert afterDelay:1.0];
}

- (BOOL)isDoNotiong
{
  BOOL result = NO;
  if([iFeedViewVO.iTaskActionArray count] == 1)
  {
    CWATaskAcListVO *taskAcListVO = [iFeedViewVO.iTaskActionArray objectAtIndex:0];
    if(taskAcListVO.iActFlag == 99)
    {
      result = YES;
    }
  }
  return result;
}

- (void)initBottomView
{
    
   int maxWidth = [[UIScreen mainScreen] applicationFrame].size.width;
   CGRect frame = CGRectMake(0.00f, 0.00f, maxWidth, 44.0f);
  
  
  //iOS7适配，计算位置
 UINavigationBar *aNavigationBar = (UINavigationBar *)[self.view viewWithTag:WA_FEEDVIEWCONTROLLER_NAVIGATIONBAR_TAG];
  if([iFeedViewVO.iTaskActionArray count] == 0 || [self isDoNotiong])
  {
    CGRect tableviewFrame = iTableviewController.view.frame;
    tableviewFrame.origin.y =  aNavigationBar.frame.origin.y + aNavigationBar.frame.size.height;
    tableviewFrame.size.height = self.view.frame.size.height- aNavigationBar.frame.origin.y - aNavigationBar.frame.size.height;
    [iTableviewController.view setFrame:tableviewFrame];
    [iBottomView setHidden:YES];
    return;
  }

  else
  {
    CGRect tableviewFrame = iTableviewController.view.frame;
    tableviewFrame.origin.y = aNavigationBar.frame.origin.y + aNavigationBar.frame.size.height;
    tableviewFrame.size.height = self.view.frame.size.height- aNavigationBar.frame.origin.y - aNavigationBar.frame.size.height - 44;
    [iTableviewController.view setFrame:tableviewFrame];
  }
  UIView *toolBar = [[UIView alloc] initWithFrame:frame];
  toolBar.autoresizingMask = UIViewAutoresizingFlexibleBottomMargin;
  UIImage * bdImage = [UIImage imageNamed:WA_TASKLIST_TOOLBAR_BD];
  
  [toolBar setBackgroundColor:[UIColor colorWithPatternImage:bdImage ]];
    
    bool bmaxCount = [iFeedViewVO.iTaskActionArray count] > 4 ? 1 :0;
    CGFloat startOriginX = 16.00f;
    CGFloat intervel = 0.00f;
    if([iFeedViewVO.iTaskActionArray count] == 1)
    {
        startOriginX = (frame.size.width - 55)/2;
    }
    else if([iFeedViewVO.iTaskActionArray count] == 2)
    {
        startOriginX = (frame.size.width - 110)/12;
        intervel = (frame.size.width - 110)/2 + 72;
    }
    else if([iFeedViewVO.iTaskActionArray count] == 3)
    {
        startOriginX = 16.00f;
        intervel = (frame.size.width - 195)/2;
    }
    else
    {
        startOriginX = 16.00f;
        intervel = (frame.size.width - 2*16.00f - 4*55)/3;
    }
    
    for (int i = 0 ; i < [iFeedViewVO.iTaskActionArray count]; i ++)
    {
        if(bmaxCount && i >= 3)
        {
            break;
        }
        
        CWATaskAcListVO *taskAcListVO = [iFeedViewVO.iTaskActionArray objectAtIndex:i];
        if(taskAcListVO.iActFlag == 99)
        {
            continue;
        }
        NSString *actionName = taskAcListVO.iActionname;
        CGRect frameOfbtn = CGRectMake(startOriginX, 0.00f, 55, 44);
        UIButton *btn = [[UIButton alloc] initWithFrame:frameOfbtn];
        UIFont *font  = nil;
        if (WA_CURENT_OS_V>=7.0)
        {
            font = WA_TASK_FONT_KAKU_W3_14;
        }
        else
        {
            font = WA_TASK_FONT_HT_W3_14;
        }
        btn.titleLabel.font = font;
        [btn setTitleColor:WA_YONYOU_RED_COLOR forState:UIControlStateNormal];
        startOriginX = startOriginX + frameOfbtn.size.width + intervel;
        [btn setTitle:actionName forState:UIControlStateNormal];
        btn.tag = i;
        [btn addTarget:iFeedController
                action:@selector(actionBtnClick:)
      forControlEvents:UIControlEventTouchUpInside];
        [toolBar addSubview:btn];
    }
    //添加更多按钮
    if([iFeedViewVO.iTaskActionArray count] > 3)
    {
        CGRect frameOfShowRightBtn = CGRectMake(startOriginX, 0.00f, 55, 44);
        UIButton *btn = [[UIButton alloc] initWithFrame:frameOfShowRightBtn];
        
        NSString *more = NSLocalizedStringFromTable(@"more", @"btarget_task", nil);
        [btn setTitle:more forState:UIControlStateNormal];
        UIFont *font  = nil;
        if (WA_CURENT_OS_V>=7.0)
        {
            font = WA_TASK_FONT_KAKU_W3_16;
        }
        else
        {
            font = WA_TASK_FONT_HT_W3_16;
        }
        btn.titleLabel.font = font;
        [btn setTitleColor:WA_YONYOU_RED_COLOR forState:UIControlStateNormal];
        btn.tag = WA_TASK_FEEDVIEW_NAVIGATIONRIGHTBAR_TAG;
        [btn addTarget:iFeedController
                action:@selector(showMore)
      forControlEvents:UIControlEventTouchUpInside];
        [toolBar addSubview:btn];
    }
  CGRect viewFrame = iBottomView.frame;
  viewFrame.size.width = maxWidth;
  iBottomView.frame = viewFrame;
  [iBottomView addSubview:toolBar];
}

//servicecodekey
static NSString *WA_TASKDETAIL_SERVICECODE = @"servicecode";
static NSString *WA_TASKDETAIL_TASKBILL = @"getTaskBill";
//任务详情返回的flag
static NSString *WA_TASKDETAIL_FLAG = @"flag";
//任务详情返回的描述信息
static NSString *WA_TASKDETAIL_DESC = @"desc";

//任务动作列表的key
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
		NSLog(@"%@",basevo.voDictionary );
      
    if([basevo.voDictionary objectForKey:serviceCode])
    {
      [dataDic setObject:[basevo.voDictionary objectForKey:serviceCode] forKey:actinType];
    }
    
		if ([actinType isEqualToString:WA_TASKDETAIL_TASKBILL])
    {
			taskDetailFlag = [[basevo.voDictionary objectForKey:WA_TASKDETAIL_FLAG] intValue];
			taskDetailDesc = [basevo.voDictionary objectForKey:WA_TASKDETAIL_DESC];
    }
  }
  [dataDic setObject:actionDic forKey:WA_TASKDETAIL_ACTIONTYPE];
  
  //初始化feedviewvo
	if(iFeedViewVO)
	{
		iFeedViewVO = nil;
	}
	iFeedViewVO = [[CWATaskDetailNC63ViewVO alloc] initWithDic:dataDic];
  iFeedViewVO.iTaskID = iTaskID;
  
  [iFeedViewVO initMemberVariables];
  
  //获取任务状态
  
  ((CWATaskDetailNC63ViewVO *)iFeedViewVO).iStatuskey =  iStatusKey;
  ((CWATaskDetailNC63ViewVO *)iFeedViewVO).iStatuscode =  iStatusCode;
  
  if (taskDetailFlag < 0)
	{
    //wa端错误
    [self showAlertViewWithTitle:taskDetailDesc];
	}
  else if (taskDetailFlag == 0)
	{
    [self addToolBar];
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
	
  
  }
  @catch (NSException *exception)
  {
  //显示异常消息
  [self showAlertViewWithTitle:exception.name];
  }
  
}


- (void)requestFail:(NSError*)theError
{
  [[CWASpinnerView sharedCWASpinnerView] hiddenSpinnerView];
  [self showAlertViewWithTitle:[theError domain]];
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


- (void)setNavigatioBarButtonImage:(NSString *)aImageString
{

}


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

-(void)viewDidAppear:(BOOL)animated
{
  [super viewDidAppear:animated];
}
@end
