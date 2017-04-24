/*!
 @header CWATaskActionController.m
 @abstract 任务处理界面的action类
 @author dequan
 @copyright ufida
 @version 1.00 2012/05/22 Creation 
 */

#import "WATaskActionController.h"
#import "WATaskMacro.h"
#import "AppDelegate.h"
#import "WASpinnerView.h"
#import "WACommonInfoVO.h"
#import "WATaskActionVO.h"
#import "TaskDef.h"

@implementation CWATaskActionController
@synthesize iDelegate;
@synthesize iTaskid;
@synthesize iServiceCode;

//任务审批动作请求关键key
//任务审批动作taskid
static NSString *WA_TASKACTION_TASKID = @"taskid";
//任务审批动作批语
static NSString *WA_TASKACTION_NOTE = @"note";
//任务审批动作人员列表
static NSString *WA_TASKACTION_USERIDS = @"userids";


//初始化成员变量
- (void)initElements
{
  iTaskHanlder = [[CWATaskBnsHandler alloc] init]; 
  iTaskHanlder.iDelegate = self;
}

//点击同意后的操作
- (IBAction)dealWithTask;
{
  [iDelegate setKeyBoardIsVisiable:NO];
  [[CWASpinnerView sharedCWASpinnerView] showInWindowsIsFullScreen:YES 
                                                   withShowingText:NSLocalizedStringFromTable(@"Wait",@"btarget_task",nil)];

  NSArray *linkmanArray = [iDelegate linkManNameSet];
  NSMutableDictionary *dataDic = nil;
  dataDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                    iTaskid,WA_TASKACTION_TASKID,
                                    [iDelegate noteForTask],WA_TASKACTION_NOTE,
                                    linkmanArray,WA_TASKACTION_USERIDS,nil];

  [dataDic addEntriesFromDictionary:[CWACommonInfoVO getDefaultEmptyGroupIDAndUserID]];

  
  CWATaskAcRequestVO *aLinkManRequestVo = [[CWATaskAcRequestVO alloc] initWithDic:dataDic];
  [iTaskHanlder sendTaskApprovalMsg:aLinkManRequestVo 
                       withTaskType:[iDelegate taskType]
                    withServiceCode:self.iServiceCode];
}

//展示alertview信息
- (void)showAlertViewWithTitle:(NSString *)aTitle
{
  UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil
                                                  message:aTitle
                                                 delegate:nil 
                                        cancelButtonTitle:NSLocalizedStringFromTable(@"ok",@"btarget_task", nil)
                                        otherButtonTitles:nil, nil];
  [alert show];
}

#pragma mark -
#pragma mark - MWATaskHandlerDelegate delegate
//请求成功
- (void)requestReturnWithResponseVO:(CWABaseVO *)aBaseVO andMsgVO:(CWAResponseMsg *)aMsgVO;
{
  [[CWASpinnerView sharedCWASpinnerView] hiddenSpinnerView];

  if ([aMsgVO.iFlag intValue] == 0) 
  {
    NSDictionary *dataDic = [aBaseVO.voDictionary objectForKey:aMsgVO.iServiceCode];
    CWATaskActionVO *aTaskActionVO = [[CWATaskActionVO alloc] initWithDic:dataDic];
    aTaskActionVO.iReturnFlag = [aMsgVO.iFlag intValue];
    aTaskActionVO.iDesc = aMsgVO.iDesc;
    
    iTempKeyWindow = [UIApplication sharedApplication].keyWindow; 
    //在这加警告栏
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil
                                                    message:aMsgVO.iDesc
                                                   delegate:self 
                                          cancelButtonTitle:NSLocalizedStringFromTable(@"ok",@"btarget_task", nil)
                                          otherButtonTitles:nil];
    [alert show];
  }
  else if ([aMsgVO.iFlag intValue] == 1)
  {
    //业务失败
    [self showAlertViewWithTitle:aMsgVO.iDesc];
  }
  else 
  {
    //其他情况
    [self showAlertViewWithTitle:aMsgVO.iDesc];
  }

}

//请求失败
- (void)failedRequestWithError:(NSError*)theError
{
  UIAlertView *alerView = [[UIAlertView alloc] initWithTitle:nil 
                                                     message:theError.domain 
                                                    delegate:nil 
                                           cancelButtonTitle:NSLocalizedStringFromTable(@"ok",@"btarget_task",nil)
                                           otherButtonTitles:nil];
  [alerView show];
  [[CWASpinnerView sharedCWASpinnerView] hiddenSpinnerView];
}


#pragma mark -
#pragma mark - UIAlertViewDelegate methods

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
  if (iTempKeyWindow) 
  {
    [iTempKeyWindow makeKeyAndVisible];
  }
//  UINavigationController *navController = ((AppDelegate *)[[UIApplication sharedApplication] delegate]).iNavigationController;
//  [navController popToRootViewControllerAnimated:NO];
//  [[NSNotificationCenter defaultCenter] postNotificationName:TASKCENTER_TASKLIST_REFRESH_NOFIFY object:nil];
}
@end
