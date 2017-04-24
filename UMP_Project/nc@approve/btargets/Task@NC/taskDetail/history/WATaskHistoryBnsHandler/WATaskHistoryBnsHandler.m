/*!
 @header WATaskHistoryBnsHandler.h 
 @abstract 任务历史数据下载
 @author Created by Li Xiaopeng on 12-5-22.
 @version 1.00 2012/5/22 Creation (此文档的版本信息)
 */

#import "WATaskHistoryBnsHandler.h"
#import "WATaskHistoryController.h"
#import "WABaseVO.h"
#import "WAHTTPRequestHandler.h"
#import "WAContactDetailVO.h"
#import "WAContactVO.h"
#import "WASpinnerView.h"
#import "WACommonInfoVO.h"

/*!
 @class
 @abstract 任务历史数据处理类
 */
@implementation CWATaskHistoryBnsHandler

@synthesize iTaskHistoryController;

@synthesize iSection;

//数据解析时的常量
//请求时的常量
static NSString * WA_TASKHISTORY_COMPONENTID = @"A0A007";
static NSString * WA_TASKHISTORY_GETPSNDETAIL     = @"getPsnDetail";
static NSString  * WA_TASKHISTORY_PSNID = @"psnid";

//解析返回数据
static NSString  * WA_TASKHISTORY_PERSON = @"person";
static NSString  * WA_TASKHISTORY_NAME = @"pname";
static NSString  * WA_TASKHISTORY_PROPNAME = @"propname";
static NSString  * WA_TASKHISTORY_CONTACTINFO = @"contactinfo";
static NSString  * WA_TASKHISTORY_PROPVALUE = @"propvalue";
static NSString  * WA_TASKHISTORY_MSGTYPE = @"msgtype";
static NSString  * WA_TASKHISTORY_PROPOSER_IMAGE = @"TaskHistory_Proposer.png";
static NSString  * WA_TASKHISTORY_HANDLER_IMAGE = @"TaskHistory_Handler.png";


/*!
 @method 
 @abstract 控制器销毁时发送的消息
 @discussion 
 @result 
 */
- (void)dealloc 
{  
  self.iTaskHistoryController = nil;
}

/*!
 @method 
 @abstract 发送http请求联系人详情
 @discussion
 @param aPsnID 联系人编号 
 @result 
 */
- (void)sendHttpRequestWithPsnID:(NSString *)aPsnID 
                      withSection:(NSInteger)aSection
                 withServiceCode:(NSString *)aServiceCode
{
  [[CWASpinnerView sharedCWASpinnerView] showInWindowsIsFullScreen:YES withShowingText:NSLocalizedStringFromTable(@"Wait",@"btarget_task",nil)];
  iSection = aSection;
  NSMutableDictionary *mdic = [[NSMutableDictionary alloc] initWithObjectsAndKeys:aPsnID,WA_TASKHISTORY_PSNID,
                              nil];
  [mdic addEntriesFromDictionary:[CWACommonInfoVO getDefaultEmptyGroupIDAndUserID]];
  CWABaseVO *requestVO = [[CWABaseVO alloc]init];
  requestVO.voDictionary=mdic;
  
  CWABnsDesVO *msgBizVO = [[CWABnsDesVO alloc] initWithComponetID:WA_TASKHISTORY_COMPONENTID 
                                                    actionTypes:[NSMutableArray
                                                arrayWithObject:WA_TASKHISTORY_GETPSNDETAIL]];
  
  NSMutableArray *serviceCodes = [[NSMutableArray alloc] initWithObjects:aServiceCode, nil];
  
  msgBizVO.iServiceCodes = serviceCodes;
  [[CWAHTTPRequestHandler sharedManager]firePostRequestWithBodyData:requestVO 
                                                           delegate:self 
                                                             mehtod:(RQ_METHOD)NORMAL 
                                                              bnsVO:msgBizVO];

}

- (void)failedRequestWithError:(NSError*)theError
{
  [[CWASpinnerView sharedCWASpinnerView] hiddenSpinnerView];
  [self showAlertView:theError.domain];
  
}

- (void)requestFinishedWithResponseString:(NSString *)aRequestStr
{
  
}

- (void)requestStarted
{
  
}

-(void)requestFinishedWithResponseVO:(CWABaseVO *)aBaseVO andMsgVO:(CWAResponseMsg *)aMsgVO
{
  //隐藏等待框
  [[CWASpinnerView sharedCWASpinnerView] hiddenSpinnerView];
  
  @try
  {
    //业务出错，弹出提示框
    NSNumber *flag = aMsgVO.iFlag;
    if (flag.intValue == 0)
    {
      if (aBaseVO)
      {
        @try
        {
          NSDictionary *dic = aBaseVO.voDictionary;
          NSDictionary *bizDic = [[dic valueForKey:aMsgVO.iServiceCode] objectAtIndex:0];
          
          //人员详情
          NSDictionary *psnDic = [bizDic valueForKey:WA_TASKHISTORY_PERSON];
          NSString *psnName;
          CWAContactVO *contactVO = [[CWAContactVO alloc]init];
          
          //提交人姓名
          psnName = [psnDic valueForKey:WA_TASKHISTORY_NAME];
          contactVO.iTitle = psnName;
          switch (iSection)
          {
              case 0:
              //提交人图片
              contactVO.iImage = WA_TASKHISTORY_PROPOSER_IMAGE;
              contactVO.iNavTitle = NSLocalizedStringFromTable(@"ProposerTitle", @"btarget_task", nil);
              break;
              case 1:
              //处理人图片
              contactVO.iImage = WA_TASKHISTORY_HANDLER_IMAGE;
              contactVO.iNavTitle = NSLocalizedStringFromTable(@"HandlerTitle", @"btarget_task", nil);
              break;
              default:
              break;
          }
          
          NSArray *contactArray = [psnDic valueForKey:WA_TASKHISTORY_CONTACTINFO];
          for (NSDictionary *contactDic in contactArray)
          {
              CWAContactDetailVO *contactDetailVO = [[CWAContactDetailVO alloc]init];
              //信息类型
              contactDetailVO.iFlag = [contactDic valueForKey:WA_TASKHISTORY_MSGTYPE];
              //处理人姓名
              contactDetailVO.iNumberName = [contactDic valueForKey:WA_TASKHISTORY_PROPNAME];
              //邮件主题
              contactDetailVO.iSubject = NSLocalizedStringFromTable(@"MailTheme", @"btarget_task", nil);
              //电话号码
              contactDetailVO.iNumberValue = [contactDic valueForKey:WA_TASKHISTORY_PROPVALUE];
            
              [contactVO.iDetailArray addObject:contactDetailVO];

          }
          
          
          [self.iTaskHistoryController showContactViewWithWAContactVO:contactVO];

          
        }
        @catch (NSException *exception)
        {
          //出错提示，提示语句是 "数据格式错误"
        }
        
      }
    }
    else if (flag.intValue == 1) 
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
  @catch (NSException *exception)
  {
    
  }
  @finally
  {
    
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

@end
