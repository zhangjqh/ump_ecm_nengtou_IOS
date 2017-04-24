//
//  TaskPushHandler.m
//  UMP_Project
//
//  Created by Kevin Forlin on 15/6/2.
//
//

#import "TaskPushHandler.h"
#import "WATaskListBnsHandler.h"
#import "WACommonInfoVO.h"
#import "WATaskAttachmentRequestVO.h"
#import "WATaskAcListRequestVO.h"
#import "WATaskAcRequestVO.h"
#import "WAMainBodyRequestVO.h"
#import "WASpinnerView.h"
#import "WATaskDetailNC63ViewVO.h"
#import "WAButton.h"
#import "WATaskDetailNC63ViewController.h"
#import "WAMenuViewController.h"
#import "WAFileUtil.h"
#import "AppDelegate.h"
#import "WAHTMLResourceVO.h"

@implementation TaskPushHandler

static NSString *WA_TASKDETAIL_TASKID = @"taskid";

//任务列表的key
static NSString *WA_TASKDETAIL_TASKBILL = @"getTaskBill";
//任务详情返回的flag
static NSString *WA_TASKDETAIL_FLAG = @"flag";
//任务详情返回的描述信息
static NSString *WA_TASKDETAIL_DESC = @"desc";

//servicecodekey
static NSString *WA_TASKDETAIL_SERVICECODE = @"servicecode";




-(void) handlePush:(NSString*) withTaskId from :(NSString *) from{
    
    iTaskID = withTaskId;
    
    if(!iTaskBnsHandler)
    {
        iTaskBnsHandler = [[CWATaskListNC63BnsHandler alloc] init];
    }
    iTaskBnsHandler.iDelegate = self;
    
    NSDictionary *taskStatueDic = [[NSDictionary alloc] initWithObjectsAndKeys:
                                   @"ishandled",TASK_TASKLIST_KSTATUSKEY,
                                   @"unhandled",TASK_TASKLIST_KSTATUSVALUE,
                                   nil];
    
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
    mainBodyRequestVO.iTaskid = withTaskId;
    mainBodyRequestVO.iStatuskey =  @"ishandled";
    mainBodyRequestVO.iStatuscode = @"unhandled";
    [mainBodyRequestVO fillVoDictionary];
    
    
    
    
    NSArray *dataArray = nil;
    
    dataArray = [NSArray arrayWithObjects:aBillVo,aActionVO,aAttachmentVo,mainBodyRequestVO,nil];
    NSString *serviceCode = @"";
    if ([from isEqual:@"oa"]) {
        serviceCode = @"1415158109344";
    }
    if ([from isEqual:@"nc"]) {
        serviceCode = @"1418020749101";
    }
    [iTaskBnsHandler sendTaskBillMsg:dataArray
                     withServiceCode:serviceCode
                     WithIsReminder:[@"N" isEqualToString:@"Y"]];
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
        NSDictionary *taskStatueDic = [[NSDictionary alloc] initWithObjectsAndKeys:
                                       @"ishandled",TASK_TASKLIST_KSTATUSKEY,
                                       @"unhandled",TASK_TASKLIST_KSTATUSVALUE,
                                       nil];
        
        aFeedViewVo.iStatuscode = @"unhandled";
        aFeedViewVo.iStatuskey = @"ishandled";
        
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

- (void)showAlertViewWithTitle:(NSString *)aTitle
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil
                                                    message:aTitle
                                                   delegate:nil
                                          cancelButtonTitle:NSLocalizedStringFromTable(@"ok",@"btarget_task", nil)
                                          otherButtonTitles:nil, nil];
    [alert show];
}

- (NSURL *)saveHTMLVO:(CWATaskDetailViewVO *)aHTMLVO
{
    NSURL *url = nil;
    if (aHTMLVO != nil)
    {
        NSData *aHtmlData= [GTMBase64 decodeString:aHTMLVO.iHtmlfile];
        NSString *aHtmlPath= [CWAFileUtil createFileAtTmpWithName:aHTMLVO.iHtmlname
                                                          content:aHtmlData];
        for (int i = 0; i < [aHTMLVO.iResourcelist count]; i++)
        {
            CWAHTMLResourceVO *resourceVO = aHTMLVO.iResourcelist[i];
            NSData *aResourceData = [GTMBase64 decodeString:resourceVO.iResourcefile];
            NSString *resourceWholeName = [NSString stringWithFormat:@"%@/%@", aHTMLVO.iResoucedir, resourceVO.iResourcename];
            [CWAFileUtil createFileAtTmpWithName:resourceWholeName content:aResourceData];
        }
        url = [NSURL fileURLWithPath:aHtmlPath];
    }
    return url;
}


- (void)requestFail:(NSError *)aError
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:nil
                                                        message:[aError domain]
                                                       delegate:nil
                                              cancelButtonTitle:NSLocalizedStringFromTable(@"ok", @"btarget_task",nil)
                                              otherButtonTitles:nil];
    [alertView show];
}

- (void)failedRequestWithError:(NSError*)theError
{
    
    [[CWASpinnerView sharedCWASpinnerView] hiddenSpinnerView];
    UIAlertView *alerView = [[UIAlertView alloc] initWithTitle:nil
                                                       message:theError.domain
                                                      delegate:nil
                                             cancelButtonTitle:@"确定"
                                             otherButtonTitles:nil];
    [alerView show];
    
    
}



@end
