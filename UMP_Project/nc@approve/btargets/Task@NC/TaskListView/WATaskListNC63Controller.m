
#import "WATaskListNC63Controller.h"
#import "AppDelegate.h"
#import "WATimeUtil.h"
#import "WASpinnerView.h"
#import "WABaseAppDelegate.h"

static NSString *TASK_TASKLIST_KGETNC63TASKLIST =  @"getNC63TaskList";
static NSString *TASK_TASKLIST_KGETTASKSTATUSLIST  = @"getTaskStatusList";
@implementation CWATaskListNC63Controller

@synthesize iNC63TaskListControllerDelegate;
@synthesize iListControllerDelegate;

- (void) buttonListTouch:(id)sender
{
  CWAButton *buttonTouched = (CWAButton *)sender;
  NSString *iCode = buttonTouched.iStatusCode;
  NSString *status = buttonTouched.iStatus;
  [self ShowLoadingView];
  if(!iListBnsHandler)
  {
    iListBnsHandler = [[CWATaskListNC63BnsHandler alloc] init];
  }
  iListBnsHandler.iDelegate = self;
  
  [self clearUIData];
  
  [iListBnsHandler requestWithDate:[CWATimeUtil getTodayDateString]
                     andStartline:@"1"
                         andCount:WA_UNHANDLED_QUERY_COUNT
                     andStatusKey:status
                   WithSeviceCode:nil
                    andStatusCode:iCode];
}

- (void)rightButtonClick:(id)sender
{
  NSString *text  = NSLocalizedStringFromTable(@"Wait", @"btarget_task", nil);
  [[CWASpinnerView sharedCWASpinnerView] showInWindowsIsFullScreen:NO withShowingText:text];
  CWAButton *btn = (CWAButton *)sender;
  iNavBarItem.title = btn.iStatusCode;
  NSString *status = btn.iStatus;
  if(!iListBnsHandler)
  {
    iListBnsHandler = [[CWATaskListNC63BnsHandler alloc] init];
  }
  
 
  iListBnsHandler.iDelegate = self;
  if(iNC63TaskListControllerDelegate && [iNC63TaskListControllerDelegate respondsToSelector:@selector(beforeSentHttp)])
  {
    [iNC63TaskListControllerDelegate beforeSentHttp];
  }
  [iListBnsHandler requestWithDate:[CWATimeUtil getTodayDateString]
                     andStartline:@"1"
                         andCount:WA_UNHANDLED_QUERY_COUNT
                     andStatusKey:status
                   WithSeviceCode:nil
                    andStatusCode:nil];
  
}

- (void)settingBtnClick:(id)sender
{

  
  
//  UINavigationController *navCtrl = ((AppDelegate *)[[UIApplication sharedApplication] delegate]).iNavigationController;
//  CWANC632SetingViewController *settingView = [[CWANC632SetingViewController alloc] initWithNavCtrl:navCtrl withSetingFuns:EABOUTFUN|ELOGINOUTFUN|EMODIFYURLFUN];
//  
//  
//  settingView.iBackBtnNeedTitle = NO;
//  settingView.iToolbarNotification = (AppDelegate *)[UIApplication sharedApplication].delegate;
//  settingView.iHasLeftBtn = YES;
//  
//  [settingView addDataWithSetingDataVO:nil withSetingFuns:EABOUTFUN];
//  [settingView addDataWithSetingDataVO:nil withSetingFuns:EMODIFYURLFUN];
//   [settingView addDataWithSetingDataVO:nil withSetingFuns:ELOGINOUTFUN];
//  [navCtrl pushViewController:settingView animated:YES];
}


- (void)requestReturnWithResponseVO:(CWABaseVO *)aBaseVO andMsgVO:(CWAResponseMsg *)aMsgVO
{
  if([aMsgVO.iFlag intValue] == 0)
  {
    
    
    NSMutableDictionary * buttonList = [CWATaskListNC63BnsHandler getButtonListWithRequsetDic:aBaseVO.voDictionary
                                                                                withMsgVO:aMsgVO
                                                                             withIsSingle:NO];
    
    if(buttonList && [buttonList count] > 0 && iListControllerDelegate && [iListControllerDelegate respondsToSelector:@selector(updateButtonVO:)])
    {
      [iListControllerDelegate updateButtonVO:buttonList];
    }
    
    
    CWATaskListVoArray *ListVos = [CWATaskListNC63BnsHandler getTaskListWithRequsetDic:aBaseVO.voDictionary
                                                                         withMsgVO:aMsgVO
                                                                      withIsSingle:YES];
    if(iListControllerDelegate && [iListControllerDelegate respondsToSelector:@selector(updateVO:)])
    {
      [iListControllerDelegate updateVO:ListVos];
    }
  }
  else if([aMsgVO.iFlag intValue]< 0)
  {
    [self showMessage:aMsgVO.iDesc];
  }
  else if([aMsgVO.iFlag intValue] == 1)
  {
    [self showMessage:aMsgVO.iDesc];
  }
  else
  {
    [self showMessage:aMsgVO.iDesc];
  }
  
}

#pragma mark 显示错误信息
- (void)showMessage:(NSString *)aMessage
{
  //tableview完成刷新
}

- (void)requestOfOneComponentMultiActionsResponesVOs:(NSArray*)vosArray
{
  if(!vosArray)
  {
    return;
  }
  
  if([vosArray count] == 2)
  {
    CWABaseVO *taskListVO = nil;
    CWABaseVO *buttonBaseVO = nil;
  
		CWABaseVO *firstListVO = [vosArray objectAtIndex:0];
	
		NSString *actiontype = (NSString *)[firstListVO.voDictionary objectForKey:WA_TASKDETAIL_ACTIONTYPE];
		if([actiontype isEqualToString:TASK_TASKLIST_KGETBUTTONLIST])
	  {
			buttonBaseVO = firstListVO;
			taskListVO = [vosArray objectAtIndex:1];
	  }
		else
	  {
			taskListVO = firstListVO;
			buttonBaseVO = [vosArray objectAtIndex:1];
	  }
  
  
  
    NSDictionary *buttonDic = [[NSDictionary alloc] initWithObjectsAndKeys:
                               buttonBaseVO.voDictionary,TASK_TASKLIST_KGETBUTTONLIST,
                               nil];
    NSMutableDictionary *buttons = [CWATaskListNC63BnsHandler getButtonListWithRequsetDic:buttonDic
                                                                            withMsgVO:nil
                                                                         withIsSingle:NO];
    
    
    NSDictionary *taskListDic = [[NSDictionary alloc] initWithObjectsAndKeys:
                                 taskListVO.voDictionary, TASK_TASKLIST_KGETNC63TASKLIST,
                                 nil];
    CWATaskListVoArray *taskListVoArray = [CWATaskListNC63BnsHandler getTaskListWithRequsetDic:taskListDic
                                                                                 withMsgVO:nil
                                                                              withIsSingle:NO];
    
    
    if(iListControllerDelegate && [iListControllerDelegate respondsToSelector:@selector(updateButtonVO:)])
    {
      [iListControllerDelegate updateButtonVO:buttons];
    }
    
    [self updateWithTaskType];
    if(iListControllerDelegate && [iListControllerDelegate respondsToSelector:@selector(updateVO:)])
    {
      [iListControllerDelegate updateVO:taskListVoArray];
    }
    
    
    }
  else if([vosArray count] == 3)
  {

    CWABaseVO *buttonBaseVO = [vosArray objectAtIndex:0];
    CWABaseVO *taskListVO = [vosArray objectAtIndex:1];
    CWABaseVO *statusListDicVO = [vosArray objectAtIndex:2];
  
  
  
  NSDictionary *buttonDic = [[NSDictionary alloc] initWithObjectsAndKeys:
                             buttonBaseVO.voDictionary,TASK_TASKLIST_KGETBUTTONLIST,
                             nil];
  NSMutableDictionary *buttons = [CWATaskListNC63BnsHandler getButtonListWithRequsetDic:buttonDic
                                                                              withMsgVO:nil
                                                                           withIsSingle:NO];

  
  NSDictionary *taskListDic = [[NSDictionary alloc] initWithObjectsAndKeys:
                               taskListVO.voDictionary, TASK_TASKLIST_KGETNC63TASKLIST,
                               nil];
  CWATaskListVoArray *taskListVoArray = [CWATaskListNC63BnsHandler getTaskListWithRequsetDic:taskListDic
                                                                                   withMsgVO:nil
                                                                                withIsSingle:NO];

  
  NSDictionary *statusListDic = [[NSDictionary alloc] initWithObjectsAndKeys:
                               statusListDicVO.voDictionary,TASK_TASKLIST_KGETTASKSTATUSLIST,
                               nil];
  NSMutableArray *aStatusVOs = [CWATaskListNC63BnsHandler getStatusListWithRequsetDic:statusListDic
                                                                 withMsgVO:nil];
  
  if(iNC63TaskListControllerDelegate && [iNC63TaskListControllerDelegate respondsToSelector:@selector(updateStatusVOs:)])
  {
    [iNC63TaskListControllerDelegate updateStatusVOs:aStatusVOs];
  }
  
  if(iListControllerDelegate && [iListControllerDelegate respondsToSelector:@selector(updateButtonVO:)])
   {
    [iListControllerDelegate updateButtonVO:buttons];
  }
  
    [self updateWithTaskType];
  if(iListControllerDelegate && [iListControllerDelegate respondsToSelector:@selector(updateVO:)])
  {
    [iListControllerDelegate updateVO:taskListVoArray];
  }
  
  }
}

- (void)updateWithTaskType
{
  if(iListControllerDelegate && [iListControllerDelegate respondsToSelector:@selector(clearUI)])
  {
    [iListControllerDelegate clearUI];
  }
  if(iNC63TaskListControllerDelegate && [iNC63TaskListControllerDelegate respondsToSelector:@selector(updateTastKey)])
  {
      [iNC63TaskListControllerDelegate updateTastKey];
  }
  
}
@end
