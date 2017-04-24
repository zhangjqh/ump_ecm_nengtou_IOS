
#import "WATaskDetailNC63Controller.h"
#import "WASpinnerView.h"
#import "WATaskNC63BnsHandler.h"
#import "WATaskAcListVO.h"
#import "WATaskDetailNC63ViewVO.h"
#import "WATaskActionViewVO.h"
#import "WATaskActionNC63ViewController.h"
#import "AppDelegate.h"
#import "WATaskHistoryNC63ViewController.h"
#import "WATaskHistoryHandlerDetailNC63VO.h"
#import "WASpinnerView.h"

@implementation CWATaskDetailNC63Controller

static NSString * WA_TASKHISTORY_TASKID  = @"taskid";
static NSString * WA_TASKHISTORY_STARTLINE = @"startline";
static NSString * WA_TASKHISTORY_COUNT     = @"count";


static NSString * WA_TASKACTIONVIEW_DEFACTION = @"defaction";
static NSString * WA_TASKACTIONVIEW_ASSIGNTYPE = @"assigntype";
static NSString * WA_TASKACTIONVIEW_ISAASSIGN = @"isaassign";
static NSString * WA_TASKACTIONVIEW_ISASSIGN = @"isassign";
static NSString * WA_TASKACTIONVIEW_ISASSIGNSIGLE = @"isassignsigle";
static NSString * WA_TASKACTIONVIEW_ISBASSIGN= @"isbassign";
static NSString * WA_TASKACTIONVIEW_ISHASMEMO = @"ishasmemo";
static NSString * WA_TASKACTIONVIEW_ISHASNOTE = @"ishasnote";
static NSString * WA_TASKACTIONVIEW_ISSEND = @"issend";
static NSString * WA_TASKACTIONVIEW_ISUPLOAD = @"isupload";
static NSString * WA_TASKACTIONVIEW_MEMO = @"memo";
static NSString * WA_TASKACTIONVIEW_OPINION = @"opinion";

static NSString  * WA_TASKHISTORY_VIEW_CONTROLLER = @"WATaskHistoryviewController";
static NSString  * WA_TASKHISTORY_APPROVEDDETAIL = @"approvedetail";
static NSString  * WA_TASKHISTORY_APPROVEDSTORYLINE = @"approvehistoryline";
static NSString  * WA_TASKHISTORY_MAKERNAME = @"makername";
static NSString  * WA_TASKHISTORY_SUBMITDATE = @"submitdate";
static NSString  * WA_TASKHISTORY_PSNID = @"psnid";
static NSString  * WA_TASKHISTORY_MARK = @"mark";
static NSString  * WA_TASKHISTORY_HANDERNAME = @"handername";
static NSString  * WA_TASKHISTORY_HANDERDATE = @"handedate";
static NSString  * WA_TASKHISTORY_ACTION = @"action";
static NSString  * WA_TASKHISTORY_NOTE = @"note";

- (void)initElementWithStatusDic:(NSDictionary *)aDic
{
  iTaskHanlder = [[CWATaskNC63BnsHandler alloc] init];
  iTaskHanlder.iDelegate = self;
  iTaskStatusDic = aDic;
}

- (IBAction)showTaskHistoryView
{
  [[CWASpinnerView sharedCWASpinnerView ]showInWindowsIsFullScreen:YES withShowingText:NSLocalizedStringFromTable(@"Wait",@"btarget_task",nil)];
  NSMutableDictionary *msg = [[NSMutableDictionary alloc] initWithObjectsAndKeys:
                              iTaskID,WA_TASKHISTORY_TASKID,
                              @"1",WA_TASKHISTORY_STARTLINE,
                              @"25",WA_TASKHISTORY_COUNT,
                              nil] ;
  [msg addEntriesFromDictionary:iTaskStatusDic];
  [msg addEntriesFromDictionary:[CWACommonInfoVO getDefaultEmptyGroupIDAndUserID]];
  CWATaskHistoryRequestVO *aTaskHistoryRequestVO = [[CWATaskHistoryRequestVO alloc] initWithDic:msg];
  [iTaskHanlder sendGetApprovedDetail:aTaskHistoryRequestVO
                      withServiceCode:self.iServiceCode];
}

- (IBAction)showMore
{
  NSArray *actions = iTaskDetailNC63ViewController.iFeedViewVO.iTaskActionArray;
  if([actions count] >2)
  {
    
    UIActionSheet *sheet = [[UIActionSheet alloc] initWithTitle:nil
                                                       delegate:self
                                              cancelButtonTitle:nil
                                         destructiveButtonTitle:nil
                                            otherButtonTitles:nil];
    //多于四个按钮的从第3个起折叠到更多中
    for(int i = 3; i < [actions count] ;i ++)
    {
      CWATaskAcListVO *taskAcListVO = [iTaskDetailNC63ViewController.iFeedViewVO.iTaskActionArray objectAtIndex:i];
      if(taskAcListVO.iActFlag == 99)
      {
        continue;
      }
      NSString *actionName = taskAcListVO.iActionname;
      [sheet addButtonWithTitle:actionName];
    }
    NSString *cancel = NSLocalizedStringFromTable(@"cancel", @"btarget_task", nil);
  NSInteger cancleindex =  [sheet addButtonWithTitle:cancel];
    [sheet setCancelButtonIndex:cancleindex];
    [sheet showInView:iTaskDetailNC63ViewController.view];
  
  }
}

- (IBAction)goBackTaskListView
{
  if(iTaskDetailNC63ViewController.iTaskID)
  {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"disMissView"
                                                      object:nil];
  }
  else
  {
    UINavigationController *navController = ((AppDelegate *)[[UIApplication sharedApplication] delegate]).navigationCtl ;
    [navController popViewControllerAnimated:YES];
  }
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
  if(buttonIndex != (actionSheet.numberOfButtons -1))
  {
    [self getDefaultValeWithIndex:buttonIndex + 3];
  }
}

- (void)requestReturnWithResponseVO:(CWABaseVO *)aBaseVO andMsgVO:(CWAResponseMsg *)aMsgVO;
{
  
  //隐藏等待框
  [[CWASpinnerView sharedCWASpinnerView] hiddenSpinnerView];
  
  if (aBaseVO)
  {
    //业务出错，弹出提示框
    NSNumber *flag = aMsgVO.iFlag;
    if (flag.intValue == 0)
    {
      CWATaskHistoryNC63ViewController *taskHistoryviewController = [[CWATaskHistoryNC63ViewController alloc] initWithNibName:WA_TASKHISTORY_VIEW_CONTROLLER bundle:nil];
      
      taskHistoryviewController.iBizTitle = self.iTaskTitle;
      taskHistoryviewController.iServiceCode = self.iServiceCode;
      
      @try
        {
        NSDictionary *dic = aBaseVO.voDictionary;
        NSDictionary *bizDic = [[dic valueForKey:aMsgVO.iServiceCode] objectAtIndex:0];
        
        //获取任务详情
        NSDictionary *approvedDetailDic = [bizDic valueForKey:WA_TASKHISTORY_APPROVEDDETAIL];

        //提交人姓名
        NSString* proposerName = [approvedDetailDic valueForKey:WA_TASKHISTORY_MAKERNAME];
        
        //提交时间
        NSString* proposerData = [approvedDetailDic valueForKey:WA_TASKHISTORY_SUBMITDATE];
        
        //提交人编码
        NSString* proposerID= [approvedDetailDic valueForKey:WA_TASKHISTORY_PSNID];
  
        CWATaskHistoryProposerVO *proposerVO = [[CWATaskHistoryProposerVO alloc] init];
        proposerVO.iProposerName = proposerName;
        proposerVO.iProposeDate = proposerData;
        
        proposerVO.iPnsID = proposerID;
        
        taskHistoryviewController.iTaskHistoryProposerVO = proposerVO;
//
        CWATaskHistoryHandlerVO * handlerVO = [[CWATaskHistoryHandlerVO alloc] init];
        //审批历史流程
        NSArray *approveHistoryArray = [approvedDetailDic valueForKey:WA_TASKHISTORY_APPROVEDSTORYLINE];
        for (NSDictionary *handlerDic in approveHistoryArray) {
          
          CWATaskHistoryHandlerDetailNC63VO *handlerDetailVO = [[CWATaskHistoryHandlerDetailNC63VO alloc] init];
          //处理人姓名
          handlerDetailVO.iHandlerName = [handlerDic valueForKey:WA_TASKHISTORY_HANDERNAME];
          //处理时间
          handlerDetailVO.iHandlerDate = [handlerDic valueForKey:WA_TASKHISTORY_HANDERDATE];
          //动作
          handlerDetailVO.iHandlerIdea = [handlerDic valueForKey:WA_TASKHISTORY_ACTION];
          //备注
          handlerDetailVO.iHandlerDetail = [handlerDic valueForKey:WA_TASKHISTORY_NOTE];
          
          //人员编号
          handlerDetailVO.iPnsID = [handlerDic valueForKey:WA_TASKHISTORY_PSNID];
          handlerDetailVO.iMark = [handlerDic valueForKey:WA_TASKHISTORY_MARK];

          [handlerVO.iHandlerDetailVOArray addObject:handlerDetailVO];
        }
        taskHistoryviewController.iTaskHistoryHandlerVO = handlerVO;
        }
      @catch (NSException *exception)
        {
        
        }
        if(!iTaskDetailNC63ViewController.iTaskID)
        {
          [iTaskDetailNC63ViewController.navigationController pushViewController:taskHistoryviewController animated:YES];
        }
        else
        {
          [iTaskDetailNC63ViewController.navigationController pushViewController:taskHistoryviewController animated:YES];
        }
      }
    else if(flag.intValue == 1)
      {
      [self showAlertView:aMsgVO.iDesc];
      return;
      }
    else
      {
      [self showAlertView:aMsgVO.iDesc];
      return;
      }
    }
}


- (void)showAlertView:(NSString*)aDesc
{
  UIAlertView *alertView =
  [[UIAlertView alloc] initWithTitle: nil
                             message: aDesc
                            delegate: nil
                   cancelButtonTitle:NSLocalizedStringFromTable(@"ok", @"btarget_task",nil)
                   otherButtonTitles:nil];
  [alertView show];
  
}

- (void)getDefaultValeWithIndex:(NSInteger)aIndex
{
  NSString *text  = NSLocalizedStringFromTable(@"Wait", @"btarget_task", nil);
  [[CWASpinnerView sharedCWASpinnerView] showInWindowsIsFullScreen:NO withShowingText:text];
  CWATaskDetailNC63ViewVO *taskDetailNC63ViewVO = (CWATaskDetailNC63ViewVO *)iTaskDetailNC63ViewController.iFeedViewVO;
  CWATaskAcListVO *taskAcListVO = [taskDetailNC63ViewVO.iTaskActionArray objectAtIndex:aIndex];
  CWADefaultValueRequsetVO *defaultValueRequsetVO = [[CWADefaultValueRequsetVO alloc] init];
  defaultValueRequsetVO.iTaskid = iTaskID;
  defaultValueRequsetVO.iActioncode = taskAcListVO.iActionCode;
  defaultValueRequsetVO.iStatuscode = taskDetailNC63ViewVO.iStatuscode;
  defaultValueRequsetVO.iStatuskey = taskDetailNC63ViewVO.iStatuskey;
  [defaultValueRequsetVO fillVoDictionary];
  [((CWATaskNC63BnsHandler *)iTaskHanlder) getDefaultValueWithDefaultValueRequsetVO:defaultValueRequsetVO
                                                                    withServiceCode:self.iServiceCode
                                                            withGetDefaultValeBlock:
   ^(NSDictionary *aDefaultValeDic, NSError *aError)
   {
   
    [[CWASpinnerView sharedCWASpinnerView] hiddenSpinnerView];
    if(aError)
    {
      NSString *ok = NSLocalizedStringFromTable(@"ok", @"btarget_task", nil);
      UIAlertView *alert =[[UIAlertView alloc] initWithTitle:[aError domain]
                                                     message:nil
                                                    delegate:nil
                                           cancelButtonTitle:ok
                                           otherButtonTitles:nil];
      [alert show];
    }
    else
    {
     
      //显示动作界面
      CWATaskActionViewVO *taskActionViewVO  = [self parseDefaultValueDic:aDefaultValeDic];
      taskActionViewVO.iTaskid = iTaskID;
      taskActionViewVO.iActioncode = taskAcListVO.iActionCode;
      taskActionViewVO.iStatuscode = taskDetailNC63ViewVO.iStatuscode;
      taskActionViewVO.iStatuskey = taskDetailNC63ViewVO.iStatuskey;
      taskActionViewVO.iServiceCode = self.iServiceCode;
      taskActionViewVO.iActFlag = taskAcListVO.iActFlag;
      CWATaskActionNC63ViewController *taskActionNC63ViewController =
      [[CWATaskActionNC63ViewController alloc]  initWithNibName:@"WATaskActionNC63ViewController"
                                                         bundle:nil
                                           WithTaskActionViewVO:taskActionViewVO
                                                      WithTitle:taskAcListVO.iActionname];
    UINavigationController * iNav = ((AppDelegate *) [[UIApplication sharedApplication] delegate]).navigationCtl;
    [iNav pushViewController:taskActionNC63ViewController animated:YES];

   
   }
   }];

}


- (void)actionBtnClick:(id)sender
{
  UIButton *btn = (UIButton *)sender;
  NSInteger tag = btn.tag;
  [self getDefaultValeWithIndex:tag];
}


- (CWATaskActionViewVO *)parseDefaultValueDic:(NSDictionary *)aDic
{
  CWATaskActionViewVO *taskActionViewVO = nil;
  NSArray *servicecodes = [aDic objectForKey:WA_HTTP_RTN_SERVICECODE_KEY];
  if(servicecodes)
  {
    for (NSInteger i = 0; i < [servicecodes count]; i++)
    {
      NSString *serviceCode = [servicecodes objectAtIndex:i];
      if ([aDic objectForKey:serviceCode] == [NSNull null])
      {
        continue;
      }
      NSArray *scodeDics = [aDic objectForKey:serviceCode];
      NSDictionary *scodeDic = [scodeDics objectAtIndex:0];
      NSDictionary *actionsDic = [scodeDic objectForKey:WA_TASKACTIONVIEW_DEFACTION];
      taskActionViewVO = [[CWATaskActionViewVO alloc] init];
     
      taskActionViewVO.iAssigntype = [actionsDic objectForKey:WA_TASKACTIONVIEW_ASSIGNTYPE];
      taskActionViewVO.iIsaassign = [actionsDic objectForKey:WA_TASKACTIONVIEW_ISAASSIGN];
      taskActionViewVO.iIsassign = [actionsDic objectForKey:WA_TASKACTIONVIEW_ISASSIGN];
      taskActionViewVO.iIsassignsigle = [actionsDic objectForKey:WA_TASKACTIONVIEW_ISASSIGNSIGLE];
      taskActionViewVO.iIsbassign = [actionsDic objectForKey:WA_TASKACTIONVIEW_ISBASSIGN];
      taskActionViewVO.iIshasmemo = [actionsDic objectForKey:WA_TASKACTIONVIEW_ISHASMEMO];
      taskActionViewVO.iIshasnote = [actionsDic objectForKey:WA_TASKACTIONVIEW_ISHASNOTE];
      taskActionViewVO.iIssend = [actionsDic objectForKey:WA_TASKACTIONVIEW_ISSEND];
      taskActionViewVO.iIsupload = [actionsDic objectForKey:WA_TASKACTIONVIEW_ISUPLOAD];
      taskActionViewVO.iMemo = [actionsDic objectForKey:WA_TASKACTIONVIEW_MEMO];
      taskActionViewVO.iOpinion = [actionsDic objectForKey:WA_TASKACTIONVIEW_OPINION];
    }
  }
  return taskActionViewVO;
}
@end
