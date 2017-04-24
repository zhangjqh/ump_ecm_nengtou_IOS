
/*!
@class
@abstract 任务中心列表界面动作处理类
*/

#import "WATaskListController.h"
#import "WATimeUtil.h"
#import "WATaskListDef.h"
#import "WASpinnerView.h"
#import "WAButton.h"

@implementation CWATaskListController

@synthesize iNavRightBarItem;
@synthesize iNavBarItem;
@synthesize iListControllerDelegate;
@synthesize iView;
//@synthesize isSetPage;


- (id)init
{
  self = [super init];
  if (self) 
  {
    type = EIsHandled;
  }
  return self;
}

- (void)clearUIData
{
  if(iListControllerDelegate && [iListControllerDelegate respondsToSelector:@selector(setPage:)])
  {
    NSNumber *aPage = [[NSNumber alloc] initWithInt:0];
    [iListControllerDelegate setCurrentPageWithPage:aPage];
  }
  if(iListControllerDelegate && [iListControllerDelegate respondsToSelector:@selector(updateVO:)])
  {
    [iListControllerDelegate clearUI];
  }
}
- (void) buttonListTouch:(id)sender
{
  CWAButton *buttonTouched = (CWAButton *)sender;
  NSString *iCode = buttonTouched.iStatusCode;  
  [self ShowLoadingView];
  CWATaskListBnsHandler *listBnsHandler = [[CWATaskListBnsHandler alloc] init ];
  listBnsHandler.iDelegate = self;

  [self clearUIData];

  [listBnsHandler requestWithStatus:iCode 
                       andStartline:@"1" 
                           andCount:@"25" 
                            andDate:[CWATimeUtil getTodayDateString] 
                        andTaskType:type];
}
#pragma mark rightButtonClick 导航栏右边按钮点击事件处理
- (void)rightButtonClick:(id)sender
{
  NSString *navRightBarItemtitle = iNavRightBarItem.title ;
  NSString *navBarItemtitle = iNavBarItem.title ;
  
  if([sender isKindOfClass:[UIButton class]])
  {
     [(UIButton *)sender setTitle:navBarItemtitle forState:UIControlStateNormal];
  }
  iNavRightBarItem.title = navBarItemtitle;
  
  iNavBarItem.title = navRightBarItemtitle;
  
  //判断类型
  if( [iNavBarItem.title  isEqualToString:TASKLIST_MAINTITLE])
  {
      type = EIsHandled;
  }
  else 
  {
      type =  ESubmit;
  }
  
  NSMutableDictionary *buttonVOdic = nil;
  if(iListControllerDelegate && [iListControllerDelegate respondsToSelector:@selector(getButtonVoDic)])
  {
    buttonVOdic = [iListControllerDelegate getButtonVoDic];
  }
  //请求网络数据
  [self ShowLoadingView];
//  isSetPage = YES;
  CWATaskListBnsHandler *listBnsHandler = [[CWATaskListBnsHandler alloc] init];
  listBnsHandler.iDelegate = self;
  
  
  CWAButtonVOArray *buttonArray = nil;
  if(buttonVOdic)
  {
    if(type ==  ESubmit)
    {
      buttonArray = [buttonVOdic objectForKey:TASK_TASKLIST_KSUBMIT];
    }
    else if(type ==  EIsHandled)
    {
      buttonArray = [buttonVOdic objectForKey:TASK_TASKLIST_KISHANDLED];
    }
  }
  if(!buttonArray)
  {
    [listBnsHandler requestDataAndButtonsWithDate:[CWATimeUtil getTodayDateString]
                                         andCount:@"25" 
                                      andTaskType:type];
  }
  else
  {
     [listBnsHandler requestWithDate:[CWATimeUtil getTodayDateString] 
                        andStartline:@"1" 
                            andCount:@"25" 
                           andStatus:ENoDeal 
                         andTaskType:type];
    [self updateWithTaskType];
  }
 
}

#pragma mark 显示loading界面

- (void)updateWithTaskType
{
  if(iListControllerDelegate && [iListControllerDelegate respondsToSelector:@selector(updateVO:)])
  {
    [iListControllerDelegate clearUI];
  }
  //判断类型
  if(type == EIsHandled)
  {
    if(iListControllerDelegate && [iListControllerDelegate respondsToSelector:@selector(updateWithTaskType:)])
    {
      [iListControllerDelegate updateWithTaskType:EIsHandled];
    }
  }
  else 
  {
    if(iListControllerDelegate && [iListControllerDelegate respondsToSelector:@selector(updateWithTaskType:)])
    {
      [iListControllerDelegate updateWithTaskType:ESubmit];
    }
  }
}

- (void)ShowLoadingView
{
  NSString *loadingText = NSLocalizedStringFromTable(@"Wait", @"btarget_task", nil);
  [[CWASpinnerView sharedCWASpinnerView] showInWindowsIsFullScreen:YES withShowingText:loadingText];
}

#pragma mark 实现MWATaskHandlerDelegate委托
- (void)requestReturnWithResponseVO:(CWABaseVO *)aBaseVO andMsgVO:(CWAResponseMsg *)aMsgVO
{
  if([aMsgVO.iFlag intValue] == 0)
   {
   
  
    NSMutableDictionary * buttonList = [CWATaskListBnsHandler getButtonListWithRequsetDic:aBaseVO.voDictionary 
                                           withMsgVO:aMsgVO 
                                        withIsSingle:NO];
  
    if(buttonList && [buttonList count] > 0 && iListControllerDelegate && [iListControllerDelegate respondsToSelector:@selector(updateButtonVO:)])
    {
      [iListControllerDelegate updateButtonVO:buttonList];
    }
  
   
   CWATaskListVoArray *ListVos = [CWATaskListBnsHandler getTaskListWithRequsetDic:aBaseVO.voDictionary
                                                                        withMsgVO:aMsgVO
                                                                     withIsSingle:YES];
   if(iListControllerDelegate && [iListControllerDelegate respondsToSelector:@selector(updateVO:)])
    {
      [iListControllerDelegate updateVO:ListVos];
    }
  
//    if(isSetPage&& iListControllerDelegate && 
//       [iListControllerDelegate respondsToSelector:@selector(setPage:)])
//    {
//      NSNumber *aPage = [[NSNumber alloc] initWithInt:0];
//      [iListControllerDelegate setCurrentPageWithPage:aPage];
//      [aPage release];
//      isSetPage = NO;
//    }
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
  UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:nil 
                                                      message:aMessage
                                                     delegate:nil 
                                            cancelButtonTitle:NSLocalizedStringFromTable(@"ok", @"btarget_task",nil) 
                                            otherButtonTitles:nil];
  [alertView show];
}

- (void)requestOfOneComponentMultiActionsResponesVOs:(NSArray*)vosArray
{
  if(!vosArray)
  {
    return;
  }
  
  if([vosArray count] >= 2)
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
    NSMutableDictionary *buttons = [CWATaskListBnsHandler getButtonListWithRequsetDic:buttonDic 
                                                                            withMsgVO:nil 
                                                                         withIsSingle:NO];
  
    
    NSDictionary *taskListDic = [[NSDictionary alloc] initWithObjectsAndKeys:
                               taskListVO.voDictionary, TASK_TASKLIST_KGETTASKLIST,
                               nil];
    CWATaskListVoArray *taskListVoArray = [CWATaskListBnsHandler getTaskListWithRequsetDic:taskListDic 
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
}

- (void)requestFail:(NSError*)theError
{
  UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:nil 
                                                      message:theError.domain 
                                                     delegate:nil 
                                            cancelButtonTitle:@"确定" 
                                            otherButtonTitles:nil];
  [alertView show];
  if (iListControllerDelegate &&[iListControllerDelegate respondsToSelector:@selector(requestFail)]) 
  {
    [iListControllerDelegate requestFail];
  }
}
@end
