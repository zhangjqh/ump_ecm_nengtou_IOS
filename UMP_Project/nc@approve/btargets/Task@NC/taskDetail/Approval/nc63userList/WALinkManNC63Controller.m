
#import "WALinkManNC63Controller.h"
#import "WASpinnerView.h"
//每页请求的数据数
#define WA_SEAECHLIST_REQUEST_COUNT 25

@implementation CWALinkManNC63Controller

@synthesize iActioncode;
@synthesize iActivityid;

static NSString *WA_TASKUSERLIST_TASKID = @"taskid";


static NSString *WA_TASKUSERLIST_ACTIVITYID = @"activityid";

//人员列表的请求查询条件key
static NSString *WA_TASKUSERLIST_CONDITION = @"condition";
//人员列表的位置
static NSString *WA_TASKUSERLIST_STARTLINE = @"startline";

static NSString *WA_TASKUSERLIST_ACTIONCODE = @"actioncode";
//人员列表的请求数目key
static NSString *WA_TASKUSERLIST_COUT = @"count";
//人员是否同意列表的key
static NSString *const WA_TASKURERLIST_ISAGREE = @"isagree";


- (void)sendTaskActionLinkManMsgWithCondition:(NSString *)aCondition
{
    
  //等待视图
  NSString *text  = NSLocalizedStringFromTable(@"Wait", @"btarget_task", nil);
  [[CWASpinnerView sharedCWASpinnerView] showInWindowsIsFullScreen:NO withShowingText:text];
  
  //获取人员类表信息
  NSMutableDictionary *dataDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                   iTaskId,WA_TASKUSERLIST_TASKID,
                                  [NSString stringWithFormat:@"%i",WA_SEAECHLIST_REQUEST_COUNT * iRequestPage + 1],WA_TASKUSERLIST_STARTLINE,
                                  [NSString stringWithFormat:@"%i",WA_SEAECHLIST_REQUEST_COUNT],WA_TASKUSERLIST_COUT,
                                  aCondition,WA_TASKUSERLIST_CONDITION,
                                  nil];
  [dataDic addEntriesFromDictionary:[CWACommonInfoVO getDefaultEmptyGroupIDAndUserID]];
  
  if(iActioncode)
  {
     [dataDic setObject:iActioncode forKey:WA_TASKUSERLIST_ACTIONCODE];
  }
  if(iActivityid)
  {
    [dataDic setObject:iActivityid forKey:WA_TASKUSERLIST_ACTIVITYID];
  }
  

  CWALinkManRequestVO *aRequestVO = [[CWALinkManRequestVO alloc] initWithDic:dataDic];
  
  [iTaskActionHanlder sendGetUserListMsg:aRequestVO
                          withActionType:iLinkManRequestType
                         withServiceCode:self.iServiceCode];
}

@end
