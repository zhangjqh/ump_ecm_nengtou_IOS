
#import "WATaskListNC63BnsHandler.h"
#import "WATaskListVoArray.h"
#import "WAResponseMsg.h"
#import "WAStatusVO.h"
#import "WACommonInfoVO.h"
#import "WANC63TaskListVO.h"
@implementation CWATaskListNC63BnsHandler


static NSString *TASK_TASKLIST_KGETTASKSTATUSLIST  = @"getTaskStatusList";
static NSString *TASK_TASKLIST_STATUSLIST_KLIST  = @"statuslist";
static NSString *TASK_TASKLIST_STATUSLIST_KSTATUS  = @"status";
static NSString *TASK_TASKLIST_STATUSLIST_KID  = @"id";
static NSString *TASK_TASKLIST_STATUSLIST_KNAME  = @"name";
static NSString *TASK_TASKLIST_KGETNC63TASKLIST =  @"getNC63TaskList";
static NSString *TASK_TASKLIST_STATUSLIST_KPRIORITY  = @"priority";
static NSString *TASK_TASKLIST_STATUSLIST_KISREMINDER  = @"isreminder";

+ (CWATaskListVoArray *)getTaskListWithRequsetDic:(NSDictionary *)aRequsetDic
                                        withMsgVO:(CWAResponseMsg *)aMsgVO
                                     withIsSingle:(BOOL)isSingle
{
    NSArray *servicecodes = nil;
    CWATaskListVoArray *listVos = nil;
    NSDictionary *gettasklistDic = [aRequsetDic objectForKey:TASK_TASKLIST_KGETNC63TASKLIST];
    if(!aMsgVO ||[aMsgVO.iFlag intValue] == 0)
    {
        
        //复合的
        if(!isSingle)
        {
            servicecodes = [gettasklistDic objectForKey:TASK_TASKLIST_KSERVICECODES];
            if(!servicecodes)
            {
                servicecodes = [gettasklistDic objectForKey:TASK_TASKLIST_KSERVICECODE];
            }
            listVos =[CWATaskListNC63BnsHandler parseTaskListVosWithTasklistDics:gettasklistDic andServiceCodes:servicecodes];
        }
        else
        {
            
            servicecodes = [aRequsetDic objectForKey:TASK_TASKLIST_KSERVICECODES];
            if(!servicecodes)
            {
                servicecodes = [aRequsetDic objectForKey:TASK_TASKLIST_KSERVICECODE];
            }
            listVos =[CWATaskListNC63BnsHandler parseTaskListVosWithTasklistDics:aRequsetDic andServiceCodes:servicecodes];
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
    
    return listVos;
}


+ (NSString *)getSectiontitle:(NSString *)title
{
    NSString *loclaTitle = nil;
    if ([title isEqualToString:@"今天"])
    {
        loclaTitle = NSLocalizedStringFromTable(@"today", @"btarget_task", nil);
        
    }
    if ([title isEqualToString:@"昨天"])
    {
        loclaTitle = NSLocalizedStringFromTable(@"yesterday", @"btarget_task", nil);
        
    }
    if ([title isEqualToString:@"本周"])
    {
        loclaTitle  = NSLocalizedStringFromTable(@"thisweek", @"btarget_task", nil);
        
    }
    
    if ([title isEqualToString:@"上周"])
    {
        loclaTitle = NSLocalizedStringFromTable(@"lastweek", @"btarget_task", nil);
        
    }
    
    if ([title isEqualToString:@"更早"])
    {
        loclaTitle  = NSLocalizedStringFromTable(@"earlier", @"btarget_task", nil);
    }
    return loclaTitle;
    
}

+ (CWATaskListVoArray *)parseTaskListVosWithTasklistDics:(NSDictionary *)aTasklistDic
                                         andServiceCodes:(NSArray *)aServiceCodes
{
    @try
    {
        
        CWATaskListVoArray *listVos = [[CWATaskListVoArray alloc] init];
        NSNumber *flag = [aTasklistDic objectForKey:WA_HTTP_R_FLAG];
        if([flag intValue] == 0)
        {
            NSMutableArray *iSectionTitleArray = [[NSMutableArray alloc] init];
            NSMutableDictionary *ContentDic = [[NSMutableDictionary alloc] init];
            listVos.iSectionTitleArray = iSectionTitleArray;
            listVos.iContentDic = ContentDic;
            
            for (NSInteger i = 0; i < [aServiceCodes count]; i++)
            {
                NSString* serviceCode = [aServiceCodes objectAtIndex:i];
                //判断是否多系统的时候，有系统返回数据为空
                if ([aTasklistDic objectForKey:serviceCode] == [NSNull null])
                {
                    continue;
                }
                
                NSArray *scodeDics = [aTasklistDic objectForKey:serviceCode];
                NSDictionary *scodeDic = [scodeDics objectAtIndex:0];
                NSDictionary *tasklistDic = [scodeDic objectForKey:TASK_TASKLIST_KTASKLIST];
                NSArray *groupsArray = [tasklistDic objectForKey:TASK_TASKLIST_KGROUP];
                if (i == 0)
                {
                    listVos.iIsMutiServiceCode = NO;
                    for(int i = 0 ; i < [groupsArray count] ; i ++)
                    {
                        NSDictionary *group = [groupsArray objectAtIndex:i];
                        NSString *oldname = [group objectForKey:TASK_TASKLIST_KNAME];
                        NSString *name =[CWATaskListNC63BnsHandler getSectiontitle:oldname];
                        
                        NSArray *tasks = [group objectForKey:TASK_TASKLIST_KTASK];
                        
                        NSMutableArray *listVoArray = [[NSMutableArray alloc] init];
                        for (int j = 0 ; j < [tasks count]; j++)
                        {
                            NSDictionary *task = [tasks objectAtIndex:j];
                            NSString *data = [task objectForKey:TASK_TASKLIST_KDATE];
                            NSString *strId = [task objectForKey:TASK_TASKLIST_KID];
                            NSString *title = [task objectForKey:TASK_TASKLIST_KTITLE];
                            NSString *priority = [task objectForKey:TASK_TASKLIST_STATUSLIST_KPRIORITY];
                            NSString *isreminder = [task objectForKey:TASK_TASKLIST_STATUSLIST_KISREMINDER];
                            CWANC63TaskListVO *listVo = [[CWANC63TaskListVO alloc] init];
                            
                            NSString *humactname = [task objectForKey:TASK_TASKLIST_HUMACTNAME];
                            listVo.iTitle = title;
                            listVo.iTime = data;
                            listVo.iID = strId;
                            listVo.iServiceCode = serviceCode;
                            listVo.iIsreminder = isreminder;
                            listVo.iPriority = priority;
                            listVo.iName = humactname;
                            
                            NSString *resourcePath = [[NSBundle mainBundle] resourcePath];
                            NSString *iconPath = [NSString stringWithFormat:@"%@/%@",resourcePath,@"cutpics/taskcenter/TaskList/tasklist_undo.png"];
                            listVo.iIconPath = iconPath;
                            [listVoArray addObject:listVo];
                        }
                        [iSectionTitleArray addObject:name];
                        [ContentDic setObject:listVoArray forKey:name];
                    }
                }
                else
                {
                    listVos.iIsMutiServiceCode = YES;
                    for(int i = 0 ; i < [groupsArray count] ; i ++)
                    {
                        
                        NSDictionary *group = [groupsArray objectAtIndex:i];
                        NSString *oldName = [group objectForKey:TASK_TASKLIST_KNAME];
                        NSString *name =[CWATaskListNC63BnsHandler getSectiontitle:oldName];
                        NSArray *tasks = [group objectForKey:TASK_TASKLIST_KTASK];
                        if ([ContentDic valueForKey:name])
                        {
                            for (int j = 0 ; j < [tasks count]; j++)
                            {
                                NSDictionary *task = [tasks objectAtIndex:j];
                                NSString *data = [task objectForKey:TASK_TASKLIST_KDATE];
                                NSString *strId = [task objectForKey:TASK_TASKLIST_KID];
                                NSString *title = [task objectForKey:TASK_TASKLIST_KTITLE];
                                NSString *priority = [task objectForKey:TASK_TASKLIST_STATUSLIST_KPRIORITY];
                                NSString *isreminder = [task objectForKey:TASK_TASKLIST_STATUSLIST_KISREMINDER];
                                CWANC63TaskListVO *listVo = [[CWANC63TaskListVO alloc] init];
                                listVo.iTitle = title;
                                listVo.iTime = data;
                                listVo.iID = strId;
                                listVo.iServiceCode = serviceCode;
                                listVo.iIsreminder = isreminder;
                                listVo.iPriority = priority;
                                NSString *resourcePath = [[NSBundle mainBundle] resourcePath];
                                NSString *iconPath = [NSString stringWithFormat:@"%@/%@",resourcePath,@"cutpics/taskcenter/TaskList/tasklist_undo.png"];
                                listVo.iIconPath = iconPath;
                                [[ContentDic valueForKey:name] addObject:listVo];
                            }
                        }
                        else
                        {
                            NSMutableArray *listVoArray = [[NSMutableArray alloc] init];
                            for (int j = 0 ; j < [tasks count]; j++)
                            {
                                NSDictionary *task = [tasks objectAtIndex:j];
                                NSString *data = [task objectForKey:TASK_TASKLIST_KDATE];
                                NSString *strId = [task objectForKey:TASK_TASKLIST_KID];
                                NSString *title = [task objectForKey:TASK_TASKLIST_KTITLE];
                                NSString *priority = [task objectForKey:TASK_TASKLIST_STATUSLIST_KPRIORITY];
                                NSString *isreminder = [task objectForKey:TASK_TASKLIST_STATUSLIST_KISREMINDER];
                                CWANC63TaskListVO *listVo = [[CWANC63TaskListVO alloc] init];
                                listVo.iTitle = title;
                                listVo.iTime = data;
                                listVo.iID = strId;
                                listVo.iServiceCode = serviceCode;
                                listVo.iIsreminder = isreminder;
                                listVo.iPriority = priority;
                                
                                NSString *resourcePath = [[NSBundle mainBundle] resourcePath];
                                NSString *iconPath = [NSString stringWithFormat:@"%@/%@",resourcePath,@"cutpics/taskcenter/TaskList/tasklist_undo.png"];
                                listVo.iIconPath = iconPath;
                                [listVoArray addObject:listVo];
                            }
                            [iSectionTitleArray addObject:name];
                            [ContentDic setObject:listVoArray forKey:name];
                        }
                    }
                }
            }
            if (listVos.iIsMutiServiceCode == YES)
            {
                NSMutableArray* sectionTitleArray = [[NSMutableArray alloc] init];
                
                for (NSString* sectionName in listVos.iSectionTitleArray)
                {
                    if ([sectionName isEqualToString:[CWATaskListNC63BnsHandler getSectiontitle:@"今天" ]])
                    {
                        NSString *today = NSLocalizedStringFromTable(@"today", @"btarget_task", nil);
                        [sectionTitleArray addObject:today];
                        break;
                    }
                }
                for (NSString* sectionName in listVos.iSectionTitleArray)
                {
                    if ([sectionName isEqualToString:[CWATaskListNC63BnsHandler getSectiontitle:@"昨天" ]])
                    {
                        NSString *yesterday  = NSLocalizedStringFromTable(@"yesterday", @"btarget_task", nil);
                        [sectionTitleArray addObject:yesterday];
                        break;
                    }
                }
                for (NSString* sectionName in listVos.iSectionTitleArray)
                {
                    if ([sectionName isEqualToString:[CWATaskListNC63BnsHandler getSectiontitle:@"本周" ]])
                    {
                        NSString *thisweek  = NSLocalizedStringFromTable(@"thisweek", @"btarget_task", nil);
                        [sectionTitleArray addObject:thisweek];
                        break;
                    }
                }
                
                for (NSString* sectionName in listVos.iSectionTitleArray)
                {
                    if ([sectionName isEqualToString:[CWATaskListNC63BnsHandler getSectiontitle:@"上周" ]])
                    {
                        NSString *lastweek  = NSLocalizedStringFromTable(@"lastweek", @"btarget_task", nil);
                        [sectionTitleArray addObject:lastweek];
                        break;
                    }
                }
                
                for (NSString* sectionName in listVos.iSectionTitleArray)
                {
                    if ([sectionName isEqualToString:[CWATaskListNC63BnsHandler getSectiontitle:@"更早" ]])
                    {
                        NSString *earlier  = NSLocalizedStringFromTable(@"earlier", @"btarget_task", nil);
                        [sectionTitleArray addObject:earlier];
                        break;
                    }
                }
                
                listVos.iSectionTitleArray = sectionTitleArray;
                
                for (NSInteger i = 0; i < [listVos.iSectionTitleArray count]; i++)
                {
                    NSString* SectionTitle = [listVos.iSectionTitleArray objectAtIndex:i];
                    NSArray *rowArray  = [listVos.iContentDic objectForKey:SectionTitle];
                    NSArray *sortedArray = [rowArray sortedArrayUsingComparator: ^(id obj1, id obj2) {
                        NSComparisonResult comRes = [((CWATaskListVO *)obj1).iTime compare:((CWATaskListVO *)obj2).iTime];
                        if (comRes == NSOrderedDescending)
                        {
                            return (NSComparisonResult)NSOrderedAscending;
                        }
                        else if (comRes == NSOrderedAscending)
                        {
                            return (NSComparisonResult)NSOrderedDescending;
                        }
                        else if (comRes == NSOrderedSame)
                        {
                            return (NSComparisonResult)NSOrderedSame;
                        }
                        else
                        {
                            return (NSComparisonResult)NSOrderedSame;
                        }
                        
                    }];
                    
                    [listVos.iContentDic setObject:sortedArray forKey:SectionTitle];
                }
            }
        }
        else
        {
            NSString *error = [aTasklistDic objectForKey:WA_HTTP_R_DESC];
            [self showMessage:error];
        }
        return listVos;
    }
    @catch (NSException *exception)
    {
        //出错提示，提示语句是 "数据格式错误"
        NSString * msg = NSLocalizedStringFromTable(@"ok", @"btarget_task", nil);
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil
                                                        message:exception.name
                                                       delegate:nil
                                              cancelButtonTitle:msg
                                              otherButtonTitles:nil, nil];
        [alert show];
    }
    @finally
    {
        
    }
    return nil;
}


//发送获取任务明细消息
- (void)sendTaskBillMsg:(NSArray *)aRequestArray
        withServiceCode:(NSString *)aServiceCode
         WithIsReminder:(BOOL)aIsReminder
{
    CWABnsDesVO *bnsDesVO = nil;
    NSMutableArray *aServiceCodes = nil;
    if(aIsReminder)
    {
        bnsDesVO = [[CWABnsDesVO alloc]initWithComponetID:@"A0A007"
                                              actionTypes:
                    [NSMutableArray arrayWithObjects:@"getTaskBill",@"getTaskAction",@"getNC63MessageAttachmentList",@"getReminderContent",@"getMainBody",nil]];
        aServiceCodes = [[NSMutableArray alloc] initWithObjects:aServiceCode,aServiceCode,aServiceCode,aServiceCode,aServiceCode, nil];
        
    }
    else
    {
        bnsDesVO = [[CWABnsDesVO alloc]initWithComponetID:@"A0A007"
                                              actionTypes:
                    [NSMutableArray arrayWithObjects:@"getTaskBill",@"getTaskAction",@"getNC63MessageAttachmentList",@"getMainBody",nil]];
        aServiceCodes = [[NSMutableArray alloc] initWithObjects:aServiceCode,aServiceCode,aServiceCode,aServiceCode, nil];
    }
    
    
    bnsDesVO.iServiceCodes = aServiceCodes;
    
    [[CWAHTTPRequestHandler sharedManager] firePostRequestWithMAOCBodyData:aRequestArray
                                                                  delegate:self
                                                                    mehtod:(RQ_METHOD)NORMAL
                                                                     bnsVO:bnsDesVO];
    
}


+ (void)showMessage:(NSString *)aMessage
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:nil
                                                        message:aMessage
                                                       delegate:nil
                                              cancelButtonTitle:NSLocalizedStringFromTable(@"ok", @"btarget_task",nil)
                                              otherButtonTitles:nil];
    [alertView show];
}

+ (NSMutableArray *)getStatusListWithRequsetDic:(NSDictionary *)aRequsetDic
                                      withMsgVO:(CWAResponseMsg *)aMsgVO
{
    @try
    {
        NSArray *servicecodes = nil;
        NSMutableArray *statusVOs = [[NSMutableArray alloc] init];
        NSDictionary *statusListDic = [aRequsetDic objectForKey:TASK_TASKLIST_KGETTASKSTATUSLIST];
        NSNumber *flag = [statusListDic objectForKey:WA_HTTP_R_FLAG];
        if([flag intValue] == 0)
        {
            servicecodes = [statusListDic objectForKey:TASK_TASKLIST_KSERVICECODES];
            if(!servicecodes)
            {
                servicecodes = [statusListDic objectForKey:TASK_TASKLIST_KSERVICECODE];
            }
            for(int i = 0 ; i < [servicecodes count] ; i++)
            {
                NSString *servicecode = [servicecodes objectAtIndex:i];
                //判断是否多系统的时候，有系统返回数据为空
                if ([statusListDic objectForKey:servicecode] == [NSNull null])
                {
                    continue;
                }
                
                NSDictionary *statusListsDic = [[[statusListDic objectForKey:servicecode] objectAtIndex:0] objectForKey:TASK_TASKLIST_STATUSLIST_KLIST];
                
                NSArray *statuses = [statusListsDic objectForKey:TASK_TASKLIST_STATUSLIST_KSTATUS];
                
                for(int j = 0 ; j < [statuses count]; j++)
                {
                    NSDictionary *status = [statuses objectAtIndex:j];
                    NSString *statusID = [status objectForKey:TASK_TASKLIST_STATUSLIST_KID];
                    NSString *statusName=  [status objectForKey:TASK_TASKLIST_STATUSLIST_KNAME];
                    
                    BOOL isAlreadyAdd = NO;
                    for(int k = 0 ; k < [statusVOs count] ; k++)
                    {
                        CWAStatusVO *statusVO =  [statusVOs objectAtIndex:k];
                        if([statusVO.iID isEqualToString:statusID])
                        {
                            isAlreadyAdd = YES;
                            break;
                        }
                    }
                    if(!isAlreadyAdd)
                    {
                        CWAStatusVO *statusVO = [[CWAStatusVO alloc] init];
                        statusVO.iID = statusID;
                        statusVO.iName = statusName;
                        [statusVOs addObject:statusVO];
                    }
                }
            }
        }
        else
        {
            NSString *error = [statusListDic objectForKey:WA_HTTP_R_DESC];
            [self showMessage:error];
        }
        return statusVOs;
    }
    @catch (NSException *exception)
    {
        //出错提示，提示语句是 "数据格式错误"
        NSString * msg = NSLocalizedStringFromTable(@"ok", @"btarget_task", nil);
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil
                                                        message:exception.name
                                                       delegate:nil
                                              cancelButtonTitle:msg
                                              otherButtonTitles:nil, nil];
        [alert show];
    }
    @finally
    {
        
    }
    
    return nil;
}
#pragma mark 将获取的数据转化为界面按钮组VO数据
+ (NSMutableDictionary *)getButtonListWithRequsetDic:(NSDictionary *)aRequsetDic
                                           withMsgVO:(CWAResponseMsg *)aMsgVO
                                        withIsSingle:(BOOL)isSingle
{
    @try
    {
        NSMutableDictionary *buttonVOSDic = [[NSMutableDictionary alloc] init];
        NSArray *servicecodes = nil;
        CWAButtonVOArray *buttonVOs = [[CWAButtonVOArray alloc] init];
        NSDictionary *buttonListDic = [aRequsetDic objectForKey:TASK_TASKLIST_KGETBUTTONLIST];
        if(!isSingle)
        {
            NSNumber *flag = [buttonListDic objectForKey:WA_HTTP_R_FLAG];
            if([flag intValue] == 0)
            {
                servicecodes = [buttonListDic objectForKey:TASK_TASKLIST_KSERVICECODES];
                if(!servicecodes)
                {
                    servicecodes = [buttonListDic objectForKey:TASK_TASKLIST_KSERVICECODE];
                }
                for(int i = 0 ; i < [servicecodes count] ; i++)
                {
                    NSString *servicecode = [servicecodes objectAtIndex:i];
                    //判断是否多系统的时候，有系统返回数据为空
                    if ([buttonListDic objectForKey:servicecode] == [NSNull null])
                    {
                        continue;
                    }
                    
                    NSDictionary *buttonListsDic = [[[buttonListDic objectForKey:servicecode] objectAtIndex:0] objectForKey:TASK_TASKLIST_KBUTTONLIST];
                    
                    NSString *statusKey = [buttonListsDic objectForKey:TASK_TASKLIST_KBUTTONSTATUSSKEY];
                    NSArray *buttonStatusstruct = [buttonListsDic objectForKey:TASK_TASKLIST_KBUTTONSTATUSSTRUCT];
                    //第一组buttonlist的名称
                    NSArray *statusNameTempArray = [NSArray arrayWithArray:buttonVOs.buttonVOs];
                    
                    for (int j = 0; j < [buttonStatusstruct count]; j++)
                    {
                        NSDictionary *buttonDic = [buttonStatusstruct objectAtIndex:j];
                        
                        // 如果已经有值了。
                        if ([statusNameTempArray count])
                        {
                            for (NSInteger i = 0; i < [statusNameTempArray count]; i++)
                            {
                                NSString* statusName = ((CWAButtonVO *)[statusNameTempArray objectAtIndex:i]).iName;
                                NSString* statusCode = ((CWAButtonVO *)[statusNameTempArray objectAtIndex:i]).iCode;
                                
                                if ([statusName isEqualToString:[buttonDic objectForKey:TASK_TASKLIST_KSTATUSNAME]] && [statusCode isEqualToString:[buttonDic objectForKey:TASK_TASKLIST_KSTATUSCODE]])
                                {
                                    break;
                                }
                                else
                                {
                                    if (i == [statusNameTempArray count]-1)
                                    {
                                        //如果确实第一个数组中不存在此button，则将其加入buttonVOs
                                        [CWATaskListNC63BnsHandler parseButtonDetailWithArray:buttonVOs
                                                                               andServiceCode:servicecode
                                                                                 andButtonDic:buttonDic];
                                    }
                                    else
                                    {
                                        continue;
                                    }
                                }
                            }
                        }
                        else
                        {
                            [CWATaskListNC63BnsHandler parseButtonDetailWithArray:buttonVOs andServiceCode:servicecode andButtonDic:buttonDic];
                            
                            
                        }
                        
                    }
                    if(statusKey)
                    {
                        [buttonVOSDic setValue:buttonVOs forKey:statusKey];
                    }
                }
            }
            else
            {
                NSString *error = [buttonListDic objectForKey:WA_HTTP_R_DESC];
                [self showMessage:error];
            }
            
        }
        else
        {
            if ([aMsgVO.iFlag intValue] == 0)
            {
                servicecodes = [buttonListDic objectForKey:TASK_TASKLIST_KSERVICECODES];
                if(!servicecodes)
                {
                    servicecodes = [buttonListDic objectForKey:TASK_TASKLIST_KSERVICECODE];
                }
                for(int i = 0 ; i < [servicecodes count] ; i++)
                {
                    NSString *servicecode = [servicecodes objectAtIndex:i];
                    //判断是否多系统的时候，有系统返回数据为空
                    if ([buttonListDic objectForKey:servicecode] == [NSNull null])
                    {
                        continue;
                    }
                    NSDictionary *buttonListsDic = [[[buttonListDic objectForKey:servicecode] objectAtIndex:0] objectForKey:TASK_TASKLIST_KBUTTONLIST];
                    
                    NSString *statusKey = [buttonListsDic objectForKey:TASK_TASKLIST_KBUTTONSTATUSSKEY];
                    NSArray *buttonStatusstruct = [buttonListsDic objectForKey:TASK_TASKLIST_KBUTTONSTATUSSTRUCT];
                    
                    NSArray *statusNameTempArray = [NSArray arrayWithArray:buttonVOs.buttonVOs];
                    
                    for (int j = 0; j < [buttonStatusstruct count]; j++)
                    {
                        NSDictionary *buttonDic = [buttonStatusstruct objectAtIndex:j];
                        if ([statusNameTempArray count])
                        {
                            for (NSInteger i = 0; i < [statusNameTempArray count]; i++)
                            {
                                NSString* statusName = ((CWAButtonVO *)[statusNameTempArray objectAtIndex:i]).iName;
                                NSString* statusCode = ((CWAButtonVO *)[statusNameTempArray objectAtIndex:i]).iCode;
                                
                                if ([statusName isEqualToString:[buttonDic objectForKey:TASK_TASKLIST_KSTATUSNAME]] && [statusCode isEqualToString:[buttonDic objectForKey:TASK_TASKLIST_KSTATUSCODE]])
                                {
                                    break;
                                }
                                else
                                {
                                    if (i == [statusNameTempArray count]-1)
                                    {
                                        [CWATaskListNC63BnsHandler parseButtonDetailWithArray:buttonVOs andServiceCode:servicecode andButtonDic:buttonDic];
                                    }
                                    else
                                    {
                                        continue;
                                    }
                                }
                            }
                        }
                        else
                        {
                            [CWATaskListNC63BnsHandler parseButtonDetailWithArray:buttonVOs andServiceCode:servicecode andButtonDic:buttonDic];
                            
                        }
                        
                    }
                    [buttonVOSDic setValue:buttonVOs forKey:statusKey];
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
        return buttonVOSDic;
    }
    @catch (NSException *exception)
    {
        //出错提示，提示语句是 "数据格式错误"
        NSString * msg = NSLocalizedStringFromTable(@"ok", @"btarget_task", nil);
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil
                                                        message:exception.name
                                                       delegate:nil
                                              cancelButtonTitle:msg
                                              otherButtonTitles:nil, nil];
        [alert show];
    }
    @finally
    {
        
    }
    return nil;
}

+(void)parseButtonDetailWithArray:(CWAButtonVOArray*) aButtonVOs andServiceCode:(NSString*)aServiceCode andButtonDic:(NSDictionary *) aButtonDic
{
    CWAButtonVO *buttonVO = [[CWAButtonVO alloc] init];
    NSString *statusName = [aButtonDic objectForKey:TASK_TASKLIST_KSTATUSNAME];
    NSString *statusCode = [aButtonDic objectForKey:TASK_TASKLIST_KSTATUSCODE];
    buttonVO.iCode = statusCode;
    buttonVO.iName = statusName;
    buttonVO.iServiceCode = aServiceCode;
    [aButtonVOs addButtonVO:buttonVO];
}

- (void)requestWithDate:(NSString *)aDate
           andStartline:(NSString *)startline
               andCount:(NSString *)aCount
           andStatusKey:(NSString *)aStatusKey
         WithSeviceCode:(NSMutableArray *)aSeviceCode
          andStatusCode:(NSString *)aStatusCode
{
    CWABnsDesVO *bnsDesVO;
    NSArray *dataArray;
    if(!aStatusKey)
    {
        NSMutableDictionary *taskListDic = [[NSMutableDictionary alloc] initWithObjectsAndKeys:
                                             @"25",@"count",
                                             @"1" ,@"startline",
                                             @"",@"statuscode",
                                             @"",@"statuskey",
                                             [CWATimeUtil getTodayDateString],@"date"
                                             ,nil];
        [taskListDic addEntriesFromDictionary:[CWACommonInfoVO getDefaultEmptyGroupIDAndUserID]];
        
        NSMutableDictionary *taskButtonListDic = [[NSMutableDictionary alloc] initWithObjectsAndKeys:
                                                   @"",@"status"
                                                   ,nil];
        
        NSMutableDictionary *taskStatusListDic = [[NSMutableDictionary alloc] init];
        [taskStatusListDic addEntriesFromDictionary:[CWACommonInfoVO getDefaultEmptyGroupIDAndUserID]];
        
        bnsDesVO = [[CWABnsDesVO alloc]initWithComponetID:@"A0A007"
                                              actionTypes:[NSMutableArray arrayWithObjects:TASK_TASKLIST_KGETBUTTONLIST,TASK_TASKLIST_KGETNC63TASKLIST,TASK_TASKLIST_KGETTASKSTATUSLIST,nil]];
        
        
        bnsDesVO.iServiceCodes = aSeviceCode;
        
        
        CWABaseVO *aBtnListVO= [[CWABaseVO alloc] initWithDictionary:taskButtonListDic];
        CWABaseVO *aBillVo = [[CWABaseVO alloc] initWithDictionary:taskListDic];
        CWABaseVO *aTaskStatusListVO = [[CWABaseVO alloc] initWithDictionary:taskStatusListDic];
        dataArray = [NSArray arrayWithObjects:aBtnListVO,aBillVo,aTaskStatusListVO,nil];
    }
    else if(!aStatusCode)
    {
        bnsDesVO = [[CWABnsDesVO alloc]initWithComponetID:@"A0A007"
                                              actionTypes:[NSMutableArray arrayWithObjects:TASK_TASKLIST_KGETBUTTONLIST,TASK_TASKLIST_KGETNC63TASKLIST,nil]];
        
        bnsDesVO.iServiceCodes = aSeviceCode;
        NSMutableDictionary *aBtnListDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                            aStatusKey,@"status",
                                            nil];
        
        NSMutableDictionary *aBillDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                         startline,@"startline",aCount,@"count",
                                         aDate,@"date",nil];
        
        [aBillDic setValue:aStatusKey forKey:@"statuskey"];
        [aBillDic setValue:@"" forKey:@"statuscode"];
        [aBillDic addEntriesFromDictionary:[CWACommonInfoVO getDefaultEmptyGroupIDAndUserID]];
        
        CWABaseVO *aBtnListVO= [[CWABaseVO alloc] initWithDictionary:aBtnListDic];
        CWABaseVO *aBillVo = [[CWABaseVO alloc] initWithDictionary:aBillDic];
        
        
        dataArray = [NSArray arrayWithObjects:aBtnListVO,aBillVo, nil];
    }
    else
    {
        bnsDesVO = [[CWABnsDesVO alloc]initWithComponetID:@"A0A007"
                                              actionTypes:[NSMutableArray arrayWithObjects:TASK_TASKLIST_KGETNC63TASKLIST,nil]];
        
        
        NSMutableDictionary *aBillDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                         startline,@"startline",aCount,@"count",
                                         aDate,@"date",nil];
        
        [aBillDic setValue:aStatusKey forKey:@"statuskey"];
        [aBillDic setValue:aStatusCode forKey:@"statuscode"];
        [aBillDic addEntriesFromDictionary:[CWACommonInfoVO getDefaultEmptyGroupIDAndUserID]];
        
        
        CWABaseVO *aBillVo = [[CWABaseVO alloc] initWithDictionary:aBillDic];
        
        
        dataArray = [NSArray arrayWithObjects:aBillVo, nil];
    }
    
    
    
    [[CWAHTTPRequestHandler sharedManager] firePostRequestWithMAOCBodyData:dataArray delegate:self mehtod:(RQ_METHOD)NORMAL   bnsVO:bnsDesVO];
    
}


@end
