/*!
 @header CWAFeedController.h
 @abstract 它实现CWATaskDetailController中的方法交互和数据加载
 @author dequan
 @copyright ufida
 @version 1.00 2012/05/26 Creation 
 */

#import "WATaskDetailController.h"
#import "WATaskMacro.H"
#import "WATaskAttachmentRequestVO.h"
#import "WATaskHistoryviewController.h"
#import "AppDelegate.h"
#import "WASpinnerView.h"
#import "WATaskActionViewController.h"
@implementation CWATaskDetailController
@synthesize iTaskTitle;
@synthesize iTaskID;
@synthesize iServiceCode;
@synthesize iActionListController;
@synthesize iActionArray;
@synthesize iActionView;
//数据解析时的常量
//请求时的常量
static NSString * WA_TASKHISTORY_TASKID  = @"taskid";
static NSString * WA_TASKHISTORY_STARTLINE = @"startline";
static NSString * WA_TASKHISTORY_COUNT     = @"count";

//解析返回数据
static NSString  * WA_TASKHISTORY_VIEW_CONTROLLER = @"WATaskHistoryviewController";
static NSString  * WA_TASKHISTORY_APPROVEDDETAIL = @"approveddetail";
static NSString  * WA_TASKHISTORY_APPROVEDSTORYLINE = @"approvehistoryline";
static NSString  * WA_TASKHISTORY_MAKERNAME = @"makername";
static NSString  * WA_TASKHISTORY_SUBMITDATE = @"submitdate";
static NSString  * WA_TASKHISTORY_PSNID = @"psnid";
static NSString  * WA_TASKHISTORY_HANDERNAME = @"handername";
static NSString  * WA_TASKHISTORY_HANDERDATE = @"handerdate";
static NSString  * WA_TASKHISTORY_ACTION = @"action";
static NSString  * WA_TASKHISTORY_NOTE = @"note";



- (void)initElementWithStatusDic:(NSDictionary *)aDic
{
  iTaskHanlder = [[CWATaskBnsHandler alloc] init];
  iTaskHanlder.iDelegate = self;
  iTaskStatusDic = aDic;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
  return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  static NSString *CellIdentifier = @"Cell";
  
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
  if (cell == nil) 
  {
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
  }
  cell.textLabel.text = [NSString stringWithFormat:@"123"];
  return cell;
}

//跳转到右边的视图
- (IBAction)showRightView
{
//  [[NSNotificationCenter defaultCenter] postNotificationName:WA_TASK_MENUCONTROLLER_SCROLLRIGHT_NOTICE 
//                                                      object:nil 
//                                                    userInfo:nil];
  [self showActionSheet];
}
-(void)showActionSheet
{
  if (!iActionListController)
  {
    iActionListController = [[CWATaskAcListController alloc]init];
    [iActionListController initElementsDic:self.iActionArray];
    iActionListController.iDelegate = self;
  }
  [iActionListController showActionSheet:self.iActionView];
  
}

- (void)goTaskActionControllerWithData:(CWATaskAcListVO *)aRightVO
{
//  UINavigationController *navController = ((AppDelegate *)[[UIApplication sharedApplication] delegate]).iNavigationController;
//  CWATaskActionViewController *aActionViewController = [[CWATaskActionViewController alloc]
//                                                        initWithNibName:@"WATaskActionViewController"
//                                                        bundle:nil];
//  aActionViewController.iFlag = aRightVO.iActFlag;
//  aActionViewController.iTaskid = self.iTaskID;
//  aActionViewController.iActionVO = aRightVO;
//  [navController pushViewController:aActionViewController animated:YES];
}
- (IBAction)goBackTaskListView
{
//  UINavigationController *navController = ((AppDelegate *)[[UIApplication sharedApplication] delegate]).iNavigationController ;
//  [navController popViewControllerAnimated:YES];
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

#pragma mark -
#pragma mark - MWATaskHandlerDelegate delegate
//请求成功
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
      CWATaskHistoryviewController *taskHistoryviewController = [[CWATaskHistoryviewController alloc] initWithNibName:WA_TASKHISTORY_VIEW_CONTROLLER bundle:nil];
      
      taskHistoryviewController.iBizTitle = self.iTaskTitle;
      taskHistoryviewController.iServiceCode = self.iServiceCode;
      
      @try 
      {
        NSDictionary *dic = aBaseVO.voDictionary;
        NSDictionary *bizDic = [dic valueForKey:aMsgVO.iServiceCode];
        //获取任务详情
        NSDictionary *approvedDetailDic = [[bizDic valueForKey:WA_TASKHISTORY_APPROVEDDETAIL] objectAtIndex:0];
        
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
        
        CWATaskHistoryHandlerVO * handlerVO = [[CWATaskHistoryHandlerVO alloc] init];
        //审批历史流程
        NSArray *approveHistoryArray = [approvedDetailDic valueForKey:WA_TASKHISTORY_APPROVEDSTORYLINE];
        for (NSDictionary *handlerDic in approveHistoryArray) {
          
          CWATaskHistoryHandlerDetailVO *handlerDetailVO = [[CWATaskHistoryHandlerDetailVO alloc] init];
          //处理人姓名
          handlerDetailVO.iHandlerName = [handlerDic valueForKey:WA_TASKHISTORY_HANDERNAME];
          //处理时间
          handlerDetailVO.iHandlerDate = [handlerDic valueForKey:WA_TASKHISTORY_HANDERDATE];
          //动作
          handlerDetailVO.iHandlerIdea = [handlerDic valueForKey:WA_TASKHISTORY_ACTION];
          //备注
          handlerDetailVO.iHandlerDetail = [handlerDic valueForKey:WA_TASKHISTORY_NOTE];
          
          //人员编号
          handlerDetailVO.iPnsID =[handlerDic valueForKey:WA_TASKHISTORY_PSNID];
          [handlerVO.iHandlerDetailVOArray addObject:handlerDetailVO];
        }
        taskHistoryviewController.iTaskHistoryHandlerVO = handlerVO;
      }
      @catch (NSException *exception) 
      {
        
      }
//      UINavigationController *navController = ((AppDelegate *)[[UIApplication sharedApplication] delegate]).iNavigationController ;
//      [navController pushViewController:taskHistoryviewController animated:YES];
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

//请求失败
- (void)failedRequestWithError:(NSError*)theError
{
  [[CWASpinnerView sharedCWASpinnerView] hiddenSpinnerView];
  [self showAlertView:theError.domain];

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

@end
