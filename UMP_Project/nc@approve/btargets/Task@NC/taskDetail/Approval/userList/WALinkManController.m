/*!
 @header CWALinkManController.m
 @abstract 联系人界面action控制类
 @author dequan
 @copyright ufida
 @version 1.00 2012/05/22 Creation 
 */

#import "WALinkManController.h"
#import "WATaskMacro.h"
#import "WALinkManVO.h"
#import "WASpinnerView.h"
#import "WACommonInfoVO.h"
#import "WALocalStorageHandler.h"

//每页请求的数据数
#define WA_SEAECHLIST_REQUEST_COUNT 25

//人员列表的请求的关键key
//人员列表的请求taskid
static NSString *WA_TASKUSERLIST_TASKID = @"taskid";
//人员列表的请求查询条件key
static NSString *WA_TASKUSERLIST_CONDITION = @"condition";
//人员列表的位置
static NSString *WA_TASKUSERLIST_STARTLINE = @"startline";
//人员列表的请求数目key
static NSString *WA_TASKUSERLIST_COUT = @"count";
//人员是否同意列表的key
static NSString *WA_TASKURERLIST_ISAGREE = @"isagree";


static NSString * WA_LISTCACHE_HISTORYKEY = @"histroy";


@implementation CWALinkManController
@synthesize iDelegate;
@synthesize iRequestPage;
@synthesize iFlag;
@synthesize iServiceCode;

//设置界面的ui元素和加载本地数据
- (void)setElementAndLocal
{
  iTaskActionHanlder = [[CWAActionBnsHanlder alloc] init];
  iTaskActionHanlder.iDelegate = self;
  iSearchTaskActionHanlder = [[CWAActionBnsSearchHanlder alloc] init];
  iSearchTaskActionHanlder.iDelegate = self;
}

- (void)sendTaskActionLinkManMsgWithCondition:(NSString *)aCondition withTag:(NSString*)tag
{
    if (aCondition == nil)
    {
        aCondition = @"";
    }
    
    //等待视图
    NSString *text  = NSLocalizedStringFromTable(@"Wait", @"btarget_task", nil);
    [[CWASpinnerView sharedCWASpinnerView] showInWindowsIsFullScreen:NO withShowingText:text];
    
    //获取人员类表信息
    NSMutableDictionary *dataDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                    iTaskId,WA_TASKUSERLIST_TASKID,
                                    [NSString stringWithFormat:@"%i",WA_SEAECHLIST_REQUEST_COUNT * iRequestPage + 1],WA_TASKUSERLIST_STARTLINE,
                                    [NSString stringWithFormat:@"%i",WA_SEAECHLIST_REQUEST_COUNT],WA_TASKUSERLIST_COUT,
                                    aCondition,WA_TASKUSERLIST_CONDITION,nil];
    [dataDic addEntriesFromDictionary:[CWACommonInfoVO getDefaultEmptyGroupIDAndUserID]];
    
    //如果为获取人员列表则添加isagree字段
    if (iFlag == 0 || iFlag == 1)
    {
        [dataDic addEntriesFromDictionary:[NSDictionary dictionaryWithObject:@"Y" forKey:WA_TASKURERLIST_ISAGREE]];
    }
    else if (iFlag == 2 || iFlag == 3)
    {
        [dataDic addEntriesFromDictionary:[NSDictionary dictionaryWithObject:@"N" forKey:WA_TASKURERLIST_ISAGREE]];
    }
    
    CWALinkManRequestVO *aRequestVO = [[CWALinkManRequestVO alloc] initWithDic:dataDic];
    
    [iSearchTaskActionHanlder sendGetUserListMsg:aRequestVO
                                  withActionType:iLinkManRequestType
                                 withServiceCode:self.iServiceCode];
    
}

- (void)sendTaskActionLinkManMsgWithCondition:(NSString *)aCondition
{
  if (aCondition == nil) 
  {
    aCondition = @"";
  }
  
  //等待视图
  NSString *text  = NSLocalizedStringFromTable(@"Wait", @"btarget_task", nil);
  [[CWASpinnerView sharedCWASpinnerView] showInWindowsIsFullScreen:NO withShowingText:text];
  
  //获取人员类表信息
  NSMutableDictionary *dataDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                  iTaskId,WA_TASKUSERLIST_TASKID,
                                  [NSString stringWithFormat:@"%i",WA_SEAECHLIST_REQUEST_COUNT * iRequestPage + 1],WA_TASKUSERLIST_STARTLINE,
                                  [NSString stringWithFormat:@"%i",WA_SEAECHLIST_REQUEST_COUNT],WA_TASKUSERLIST_COUT,
                                  aCondition,WA_TASKUSERLIST_CONDITION,nil];
  [dataDic addEntriesFromDictionary:[CWACommonInfoVO getDefaultEmptyGroupIDAndUserID]];
  
  //如果为获取人员列表则添加isagree字段
  if (iFlag == 0 || iFlag == 1) 
  {
    [dataDic addEntriesFromDictionary:[NSDictionary dictionaryWithObject:@"Y" forKey:WA_TASKURERLIST_ISAGREE]];
  }
  else if (iFlag == 2 || iFlag == 3)
  {
    [dataDic addEntriesFromDictionary:[NSDictionary dictionaryWithObject:@"N" forKey:WA_TASKURERLIST_ISAGREE]];
  }
  
  CWALinkManRequestVO *aRequestVO = [[CWALinkManRequestVO alloc] initWithDic:dataDic];
  
  [iTaskActionHanlder sendGetUserListMsg:aRequestVO
                          withActionType:iLinkManRequestType
                         withServiceCode:self.iServiceCode];
  
}

//开始搜索条件请求
- (void)startSearchConditionRequestWithComponetID:(NSString *)aComponetID
{
  [[CWASpinnerView sharedCWASpinnerView] showInWindowsIsFullScreen:YES withShowingText:NSLocalizedStringFromTable(@"Wait",@"btarget_task",nil)];
  
  NSMutableDictionary *aRequestDic = [[NSMutableDictionary alloc] initWithDictionary:[CWACommonInfoVO getDefaultEmptyGroupIDAndUserID]];
  CWASearchConditionRequestVO *aRequestVO = [[CWASearchConditionRequestVO alloc] initWithDic:aRequestDic];
  [iTaskActionHanlder sendSearchListConditionMsg:aRequestVO 
                                  WithComponetID:aComponetID 
                                 WithServiceCode:self.iServiceCode];
}

//设置actiontype的值和taskid的值
- (void)setRequestLinkManActionType:(NSString *)aActionType andTaskID:(NSString *)aTaskId
{
  iTaskId = aTaskId;
  iLinkManRequestType = aActionType;
}

#pragma mark - UISearchDisplayController delegate methods

- (void)searchBarTextDidBeginEditing:(UISearchBar *)searchBar
{
  searchBar.showsCancelButton = YES;
  if (iDelegate && [iDelegate respondsToSelector:@selector(showHistoryList)])
  {
    [iDelegate showHistoryList];
  }
}

- (void)searchBarCancelButtonClicked:(UISearchBar *) searchBar
{
  searchBar.showsCancelButton = NO;
  [searchBar resignFirstResponder];
  if (iDelegate && [iDelegate respondsToSelector:@selector(hidenHistoryList)])
  {
    [iDelegate hidenHistoryList];
  }
}





//存储历史记录
-(BOOL)saveASearchHistory:(NSString*)aSearchHistory
{
  BOOL isOperateSec = NO;
  //保存最近5条数据
  //得到文件指针，并初始化文件
  NSFileManager* fileManager=[NSFileManager defaultManager];
  //如果无此文件，则设立文件
  NSString *aCachePath = [self getHistoryCachePath];
  if(![fileManager fileExistsAtPath:aCachePath])
    {
    [CWAFileUtil createFileWithPath:aCachePath content:nil];
    }
  
  //取数据
  NSMutableArray *iRecentContactArray =
  [[NSMutableArray alloc] initWithContentsOfFile:aCachePath];
  NSMutableArray   *tempArray = [[NSMutableArray alloc] init];
  if ([iRecentContactArray count]!=0)
  {
    for (NSDictionary* contactInfo in iRecentContactArray)
    {
      NSString * aHistory = [contactInfo objectForKey:WA_LISTCACHE_HISTORYKEY];
      [tempArray addObject:aHistory];
    }
  }
  
  NSMutableArray *aSearchArray = [[NSMutableArray alloc] initWithArray:iRecentContactArray];
  //如果第一条和当前要存储的文本相同,不存储
  if ([aSearchArray count]>=1)
    {
    NSString * searchHistroy = [[aSearchArray objectAtIndex:0]
                                objectForKey:WA_LISTCACHE_HISTORYKEY];
    if (![searchHistroy isEqualToString:aSearchHistory])
      {
      //不相同
      if ([aSearchArray count] >=5)
        {
        [aSearchArray removeLastObject];
        }
      NSDictionary* contactInfo = [NSDictionary dictionaryWithObjectsAndKeys:
                                   aSearchHistory,WA_LISTCACHE_HISTORYKEY,nil];
      [aSearchArray insertObject:contactInfo atIndex:0];
      }
    }
  else
    {
    NSDictionary* contactInfo = [NSDictionary dictionaryWithObjectsAndKeys:
                                 aSearchHistory,WA_LISTCACHE_HISTORYKEY,nil];
    [aSearchArray insertObject:contactInfo atIndex:0];
    }
  //写文件
  [aSearchArray writeToFile:aCachePath atomically:YES];
  
  return isOperateSec;
}


//获取历史记录数组
- (NSMutableArray*)getHistoryArray
{
  //得到文件指针，并初始化文件
  NSFileManager* fileManager=[NSFileManager defaultManager];
  //如果无此文件，则设立文件
  NSString *aCachePath = [self getHistoryCachePath];
  if(![fileManager fileExistsAtPath:aCachePath])
    {
    [CWAFileUtil createFileWithPath:aCachePath content:nil];
    }
  //取数据
  NSMutableArray *iRecentContactArray =
  [[NSMutableArray alloc] initWithContentsOfFile:aCachePath];
  
  NSMutableArray   *tempArray = [[NSMutableArray alloc] init];
  
  if ([iRecentContactArray count]!=0)
    {
    for (NSDictionary* contactInfo in iRecentContactArray)
      {
      NSString * aHistory = [contactInfo objectForKey:WA_LISTCACHE_HISTORYKEY];
      [tempArray addObject:aHistory];
      }
    }
  return tempArray;
}

//缓存文件路径
-(NSString*)getHistoryCachePath
{
  NSString *path = [CWALocalStorageHandler
                    createDirOfLastLoginUserWithBtarget:@"SearchListCache"];
  path = [NSString stringWithFormat:@"%@/userlistSearch",path];
  return path;
}

//键盘search-button别按的时候调用
- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
{
  searchBar.showsCancelButton = NO;
    iRequestPage = 0;
  [iSearchBar resignFirstResponder];
  
  //等待视图
  NSString *text  = NSLocalizedStringFromTable(@"Wait", @"btarget_task", nil);
  [[CWASpinnerView sharedCWASpinnerView] showInWindowsIsFullScreen:NO withShowingText:text];
//  
//  //保存最近5条数据
//  NSArray *tempArray = [[NSUserDefaults standardUserDefaults] objectForKey:WA_HISTORY_SRARCH_CONDITION_KEY];
//  NSMutableArray *aSearchArray = [[NSMutableArray alloc] initWithCapacity:1];
//  [aSearchArray addObjectsFromArray:tempArray];
//  
  NSString *searchString = searchBar.text;
  [self saveASearchHistory:searchString];
//
//  BOOL isDeleteSearchString = NO;
//  //删除重复选项
//  for (NSString *searchCondition in aSearchArray) 
//  {
//    if ([searchCondition isEqualToString:searchString]) 
//    {
//      isDeleteSearchString = YES;
//    }
//  }
//  
//  if (isDeleteSearchString) 
//  {
//    [aSearchArray removeObject:searchString];
//  }
//  
//  //大于等于5条移除最先的一条数据
//  if ([aSearchArray count] >=5) 
//  {
//    [aSearchArray removeLastObject];
//  }
//  [aSearchArray insertObject:searchBar.text atIndex:0];
//  [[NSUserDefaults standardUserDefaults] setObject:aSearchArray forKey:WA_HISTORY_SRARCH_CONDITION_KEY];
//  [[NSUserDefaults standardUserDefaults] synchronize];
//  [aSearchArray release];
  
  
  //发送获取人员列表消息
  NSMutableDictionary *dataDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                  iTaskId,WA_TASKUSERLIST_TASKID,
                                  [NSString stringWithFormat:@"%i",WA_SEAECHLIST_REQUEST_COUNT * iRequestPage + 1],WA_TASKUSERLIST_STARTLINE,
                                  [NSString stringWithFormat:@"%i",WA_SEAECHLIST_REQUEST_COUNT],WA_TASKUSERLIST_COUT,
                                  searchString,WA_TASKUSERLIST_CONDITION,nil];
  [dataDic addEntriesFromDictionary:[CWACommonInfoVO  getDefaultEmptyGroupIDAndUserID]];
  //如果为获取人员列表则添加isagree字段
  if (iFlag == 0 || iFlag == 1) 
  {
    [dataDic addEntriesFromDictionary:[NSDictionary dictionaryWithObject:@"Y" forKey:WA_TASKURERLIST_ISAGREE]];
  }
  else if (iFlag == 2 || iFlag == 3)
  {
    [dataDic addEntriesFromDictionary:[NSDictionary dictionaryWithObject:@"N" forKey:WA_TASKURERLIST_ISAGREE]];
  }
  
  CWALinkManRequestVO *aRequestVO = [[CWALinkManRequestVO alloc] initWithDic:dataDic];
  
  [iTaskActionHanlder sendGetUserListMsg:aRequestVO 
                          withActionType:iLinkManRequestType
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

#pragma mark -  MWATaskBnsHandlerDelegate <NSObject>

- (void)requestReturnWithResponseVO:(CWABaseVO *)aBaseVO andMsgVO:(CWAResponseMsg *)aMsgVO;
{
  [[CWASpinnerView sharedCWASpinnerView] hiddenSpinnerView];
  if ([aMsgVO.iFlag intValue] == 0) 
  {
    //返回成功
      if (iDelegate && [iDelegate respondsToSelector:@selector(requestReturnWithResponseVO:andMsgVO:)])
    {
        [iDelegate requestReturnWithResponseVO:aBaseVO andMsgVO:aMsgVO];
    }
  }
  else if ([aMsgVO.iFlag intValue] == 1)
  {
    // 业务失败
    [self showAlertViewWithTitle:aMsgVO.iDesc];
  }
  else 
  {
    //其他情况
    [self showAlertViewWithTitle:aMsgVO.iDesc];
  }
  
}

#pragma mark -  MWATaskBnsHandlerDelegate <NSObject>

- (void)requestReturnWithResponseVO:(CWABaseVO *)aBaseVO andMsgVO:(CWAResponseMsg *)aMsgVO withTag:(NSString*) tag
{
    [[CWASpinnerView sharedCWASpinnerView] hiddenSpinnerView];
    if ([aMsgVO.iFlag intValue] == 0)
    {
        //返回成功
        if (iDelegate && [iDelegate respondsToSelector:@selector(requestReturnWithResponseVO:andMsgVO:withTag:)])
        {
            [iDelegate requestReturnWithResponseVO:aBaseVO andMsgVO:aMsgVO withTag:@""];
        }
    }
    else if ([aMsgVO.iFlag intValue] == 1)
    {
        // 业务失败
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
  [[CWASpinnerView sharedCWASpinnerView] hiddenSpinnerView];
  UIAlertView *alerView = [[UIAlertView alloc] initWithTitle:nil 
                                                     message:theError.domain 
                                                    delegate:nil 
                                           cancelButtonTitle: NSLocalizedStringFromTable(@"ok", @"btarget_task", nil) 
                                           otherButtonTitles:nil];
  [alerView show];
  
  if (iDelegate && [iDelegate respondsToSelector:@selector(requestFail)]) 
  {
    [iDelegate requestFail];
  }
  
}

@end
