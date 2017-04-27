/*!
 @class
 @abstract 任务中心业务处理类
 */

#import "WATaskListBnsHandler.h"
#import "WABnsDesVO.h"
#import "WAHTTPRequestHandler.h"
#import "TaskDef.h"
#import "WASpinnerView.h"
#import "WACommonInfoVO.h"
#import "WABaseAppDelegate.h"

@implementation CWATaskListBnsHandler

@synthesize iDelegate;

+ (CWATaskListVoArray *)getTaskListWithRequsetDic:(NSDictionary *)aRequsetDic
                                    withMsgVO:(CWAResponseMsg *)aMsgVO
                                 withIsSingle:(BOOL)isSingle
{
  NSArray *servicecodes = nil;
  CWATaskListVoArray *listVos = nil;
  NSDictionary *gettasklistDic = [aRequsetDic objectForKey:TASK_TASKLIST_KGETTASKLIST];
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
      listVos =[CWATaskListBnsHandler parseTaskListVosWithTasklistDics:gettasklistDic andServiceCodes:servicecodes];
    }
    else
   {

     servicecodes = [aRequsetDic objectForKey:TASK_TASKLIST_KSERVICECODES];
     if(!servicecodes)
     {
       servicecodes = [aRequsetDic objectForKey:TASK_TASKLIST_KSERVICECODE];
     }
     listVos =[CWATaskListBnsHandler parseTaskListVosWithTasklistDics:aRequsetDic andServiceCodes:servicecodes];
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
          NSString *name =[CWATaskListBnsHandler getSectiontitle:oldname];
          NSArray *tasks = [group objectForKey:TASK_TASKLIST_KTASK];
          
          NSMutableArray *listVoArray = [[NSMutableArray alloc] init] ;
          for (int j = 0 ; j < [tasks count]; j++) 
          {
            NSDictionary *task = [tasks objectAtIndex:j];
            NSString *data = [task objectForKey:TASK_TASKLIST_KDATE];
            NSString *strId = [task objectForKey:TASK_TASKLIST_KID];
            NSString *title = [task objectForKey:TASK_TASKLIST_KTITLE];
            CWATaskListVO *listVo = [[CWATaskListVO alloc] init];
            listVo.iTitle = title;
            listVo.iTime = data;
            listVo.iID = strId;
            listVo.iServiceCode = serviceCode;
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
          NSString *name = [group objectForKey:TASK_TASKLIST_KNAME];
          NSArray *tasks = [group objectForKey:TASK_TASKLIST_KTASK];
          if ([ContentDic valueForKey:name]) 
          {
            for (int j = 0 ; j < [tasks count]; j++) 
            {
              NSDictionary *task = [tasks objectAtIndex:j];
              NSString *data = [task objectForKey:TASK_TASKLIST_KDATE];
              NSString *strId = [task objectForKey:TASK_TASKLIST_KID];
              NSString *title = [task objectForKey:TASK_TASKLIST_KTITLE];
              CWATaskListVO *listVo = [[CWATaskListVO alloc] init];
              listVo.iTitle = title;
              listVo.iTime = data;
              listVo.iID = strId;
              listVo.iServiceCode = serviceCode;
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
              CWATaskListVO *listVo = [[CWATaskListVO alloc] init];
              listVo.iTitle = title;
              listVo.iTime = data;
              listVo.iID = strId;
              listVo.iServiceCode = serviceCode;
              NSString *resourcePath = [[NSBundle mainBundle] resourcePath];
              NSString *iconPath = [NSString stringWithFormat:@"%@/%@",resourcePath,@"tasklist_undo.png"];
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
        if ([sectionName isEqualToString:@"今天"]) 
        {
          NSString *today = NSLocalizedStringFromTable(@"today", @"btarget_task", nil);
          [sectionTitleArray addObject:today];
          break;
        }
      }
      
      for (NSString* sectionName in listVos.iSectionTitleArray)
      {
        if ([sectionName isEqualToString:@"昨天"]) 
        {
        NSString *yesterday  = NSLocalizedStringFromTable(@"yesterday", @"btarget_task", nil);
          [sectionTitleArray addObject:yesterday];
          break;
        }
      }
      
      for (NSString* sectionName in listVos.iSectionTitleArray)
      {
        if ([sectionName isEqualToString:@"本周"]) 
        {
         NSString *thisweek  = NSLocalizedStringFromTable(@"thisweek", @"btarget_task", nil);
          [sectionTitleArray addObject:thisweek];
          break;
        }
      }
      
      for (NSString* sectionName in listVos.iSectionTitleArray)
      {
        if ([sectionName isEqualToString:@"上周"]) 
        {
        NSString *lastweek  = NSLocalizedStringFromTable(@"lastweek", @"btarget_task", nil);
          [sectionTitleArray addObject:lastweek];
          break;
        }
      }
      
      for (NSString* sectionName in listVos.iSectionTitleArray)
      {
        if ([sectionName isEqualToString:@"更早"]) 
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
          else if (comRes == NSOrderedSame) {
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

+ (void)showMessage:(NSString *)aMessage
{
  UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:nil 
                                                      message:aMessage
                                                     delegate:nil 
                                            cancelButtonTitle:NSLocalizedStringFromTable(@"ok", @"btarget_task",nil)
                                            otherButtonTitles:nil];
  [alertView show];
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
  CWAButtonVOArray *buttonVOs = [[CWAButtonVOArray alloc] init] ;
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
                  [CWATaskListBnsHandler parseButtonDetailWithArray:buttonVOs andServiceCode:servicecode andButtonDic:buttonDic];
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
            [CWATaskListBnsHandler parseButtonDetailWithArray:buttonVOs andServiceCode:servicecode andButtonDic:buttonDic];
            
          }

        }
        
        
        [buttonVOSDic setValue:buttonVOs forKey:statusKey];
      }

    }
    else 
    {
      NSString *error = [aRequsetDic objectForKey:WA_HTTP_R_DESC];
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
                  [CWATaskListBnsHandler parseButtonDetailWithArray:buttonVOs andServiceCode:servicecode andButtonDic:buttonDic];
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
            [CWATaskListBnsHandler parseButtonDetailWithArray:buttonVOs andServiceCode:servicecode andButtonDic:buttonDic];
            
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


////通过tasklistDic数组，和对应的servicecode数组构建任务VO
//+ (CWATaskListVoArray *)contructCWATaskListVosWithTasklistDics:(NSArray *)aTasklistDics 
//                                          withServiceCodes:(NSArray *)aServiceCodes
//{
//  CWATaskListVoArray *listVos = nil;
//  if(aTasklistDics && [aTasklistDics count] > 0)
//    {
//    listVos = [[[CWATaskListVoArray alloc] init] autorelease];
//    NSMutableArray *iSectionTitleArray = [[[NSMutableArray alloc] init] autorelease];
//    NSMutableArray *iContentArray = [[[NSMutableArray alloc] init] autorelease];
//    listVos.iSectionTitleArray = iSectionTitleArray;
//    //listVos.iContentArray = iContentArray;
//    NSDictionary *tasklistDic;
//    for (int i = 0; i < [aTasklistDics count]; i++) 
//      {
//      tasklistDic = [aTasklistDics objectAtIndex:i];
//      NSString *servicecode = [aServiceCodes objectAtIndex:i];
//      if([tasklistDic count] > 0)
//        {
//        NSArray *groupsArray = [tasklistDic objectForKey:TASK_TASKLIST_KGROUP];
//        for(int i = 0 ; i < [groupsArray count] ; i ++)
//          {
//          NSDictionary *group = [groupsArray objectAtIndex:i];
//          NSString *name = [group objectForKey:TASK_TASKLIST_KNAME];
//          NSArray *tasks = [group objectForKey:TASK_TASKLIST_KTASK];
//          
//          NSMutableArray *listVos = [[[NSMutableArray alloc] init] autorelease];
//          for (int j = 0 ; j < [tasks count]; j++) 
//          {
//            NSDictionary *task = [tasks objectAtIndex:j];
//            NSString *data = [task objectForKey:TASK_TASKLIST_KDATE];
//            NSString *strId = [task objectForKey:TASK_TASKLIST_KID];
//            NSString *title = [task objectForKey:TASK_TASKLIST_KTITLE];
//            CWATaskListVO *listVo = [[CWATaskListVO alloc] init];
//            listVo.iTitle = title;
//            listVo.iTime = data;
//            listVo.iID = strId;
//            listVo.iServiceCode = servicecode;
//            NSString *resourcePath = [[NSBundle mainBundle] resourcePath];
//            NSString *iconPath = [NSString stringWithFormat:@"%@/%@",resourcePath,@"tasklist_undo.png"];
//            listVo.iIconPath = iconPath;
//            [listVos addObject:listVo]; 
//            [listVo release];
//          }
//          [iSectionTitleArray addObject:name];
//          [iContentArray addObject:listVos];
//          }
//        }
//      }
//    
//    }
//  
//  WAFUNCEND;
//  return listVos;
//}

- (void)requestDataAndButtonsWithDate:(NSString *)aDate
                             andCount:(NSString *)aCount
                          andTaskType:(TWATaskType)aTaskType
{
  NSMutableDictionary *taskListDic = [[NSMutableDictionary alloc] initWithObjectsAndKeys:
                                       WA_UNHANDLED_QUERY_COUNT,@"count",
                                       @"1" ,@"startline",
                                       @"",@"statuscode",
                                       [CWATimeUtil getTodayDateString],@"date"
                                       ,nil];
  [taskListDic addEntriesFromDictionary:[CWACommonInfoVO getDefaultEmptyGroupIDAndUserID]];
  NSMutableDictionary *taskButtonListDic;
  if(aTaskType == EIsHandled)
  {
    [taskListDic setValue:TASK_TASKLIST_KISHANDLED forKey:@"statuskey"];
    taskButtonListDic = [[NSMutableDictionary alloc] initWithObjectsAndKeys:
                                            TASK_TASKLIST_KISHANDLED,@"status"
                                             ,nil];
  }
  else 
  {
    [taskListDic setValue:TASK_TASKLIST_KSUBMIT forKey:@"statuskey"];
    taskButtonListDic = [[NSMutableDictionary alloc] initWithObjectsAndKeys:
                                             TASK_TASKLIST_KSUBMIT,@"status"
                                             ,nil];
  }
  
  CWABaseVO *ataskListVo = [[CWABaseVO alloc] initWithDictionary:taskListDic];
  CWABaseVO *ataskButtonListVo = [[CWABaseVO alloc] initWithDictionary:taskButtonListDic];
  NSMutableArray *actiontypes =  [[NSMutableArray alloc] initWithObjects:@"getTaskList",@"getTaskButtonList",nil];
  CWABnsDesVO *bnsDesVO = [[CWABnsDesVO alloc] initWithComponetID:@"A0A007" 
                                                    actionTypes:actiontypes];
  NSArray *dataArray = [NSArray arrayWithObjects:ataskListVo,ataskButtonListVo, nil];
  [[CWAHTTPRequestHandler sharedManager] firePostRequestWithMAOCBodyData:dataArray 
                                                                delegate:self 
                                                                  mehtod:(RQ_METHOD)NORMAL   
                                                                   bnsVO:bnsDesVO];
  
}

- (void)requestWithStatus:(NSString *)aStatus
             andStartline:(NSString *)startline 
                 andCount:(NSString *)aCount
                  andDate:(NSString *)aDate
              andTaskType:(TWATaskType)aTaskType
{
  CWABnsDesVO *bnsDesVO = [[CWABnsDesVO alloc]initWithComponetID:@"A0A007" 
                                                     actionTypes:[NSMutableArray arrayWithObjects:TASK_TASKLIST_KGETTASKLIST,nil]];
  
  NSMutableDictionary *aBillDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                   startline,@"startline",aCount,@"count",
                                   aDate,@"date",nil];
  [aBillDic addEntriesFromDictionary:[CWACommonInfoVO getDefaultEmptyGroupIDAndUserID]];
  
  [aBillDic addEntriesFromDictionary:[CWATaskListBnsHandler getStatusDicWithStrStatus:aStatus withTaskType:aTaskType ]];
  
  CWABaseVO *aBillVo = [[CWABaseVO alloc] initWithDictionary:aBillDic];
  
  
  NSArray *dataArray = [NSArray arrayWithObjects:aBillVo, nil];
  
  
  
  [[CWAHTTPRequestHandler sharedManager] firePostRequestWithMAOCBodyData:dataArray 
                                                                delegate:self 
                                                                  mehtod:(RQ_METHOD)NORMAL   
                                                                   bnsVO:bnsDesVO];

}

- (void)requestWithDate:(NSString *)aDate 
           andStartline:(NSString *)startline
               andCount:(NSString *)aCount
              andStatus:(TWATaskStatusType)aStatus
            andTaskType:(TWATaskType)aTaskType
{
  CWABnsDesVO *bnsDesVO = [[CWABnsDesVO alloc]initWithComponetID:@"A0A007" 
                                                     actionTypes:[NSMutableArray arrayWithObjects:TASK_TASKLIST_KGETTASKLIST,nil]];

  NSMutableDictionary *aBillDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                   @"",@"groupid",
                                   @"",@"usrid",startline,@"startline",aCount,@"count",
                                   aDate,@"date",nil];
  
  [aBillDic addEntriesFromDictionary:[CWATaskListBnsHandler getStatusDicWithStatus:aStatus withTaskType:aTaskType ]];
  
  CWABaseVO *aBillVo = [[CWABaseVO alloc] initWithDictionary:aBillDic];
                                          
  
  NSArray *dataArray = [NSArray arrayWithObjects:aBillVo, nil];
  

  
  [[CWAHTTPRequestHandler sharedManager] firePostRequestWithMAOCBodyData:dataArray delegate:self mehtod:(RQ_METHOD)NORMAL   bnsVO:bnsDesVO];
}

+ (NSDictionary *)getStatusDicWithStrStatus:(NSString *)aStatus
                            withTaskType:(TWATaskType)aTaskType
{
    NSMutableDictionary *aBillDic = [[NSMutableDictionary alloc] init];
  if(aTaskType == ESubmit)
  {
    [aBillDic setValue:@"submit" forKey:TASK_TASKLIST_KSTATUSKEY]; 
  }
  else
  {
    [aBillDic setValue:@"ishandled" forKey:TASK_TASKLIST_KSTATUSKEY];
  }
  [aBillDic setValue:aStatus forKey:TASK_TASKLIST_KSTATUSVALUE];
  return aBillDic;
}

+ (NSDictionary *)getStatusDicWithStatus:(TWATaskStatusType)aStatus
                            withTaskType:(TWATaskType)aTaskType;
{
  NSMutableDictionary *aBillDic = [[NSMutableDictionary alloc] init];
  if(aTaskType == ESubmit)
  {
    [aBillDic setValue:@"submit" forKey:TASK_TASKLIST_KSTATUSKEY];
    switch (aStatus) {
      case ENoDeal:
      {
        [aBillDic setValue:@"unhandled" forKey:TASK_TASKLIST_KSTATUSVALUE];
        break;
      }
      case EDealing:
      {
        [aBillDic setValue:@"handling" forKey:TASK_TASKLIST_KSTATUSVALUE];
        break;
      }
      case EDealed:
      {
        [aBillDic setValue:@"finished" forKey:TASK_TASKLIST_KSTATUSVALUE];
        break;
      }
        
      default:
        break;
    }
  }
  else
  {
    [aBillDic setValue:@"ishandled" forKey:TASK_TASKLIST_KSTATUSKEY];
    switch (aStatus) 
    {
      case ENoDeal:
      {
        [aBillDic setValue:@"unhandled" forKey:TASK_TASKLIST_KSTATUSVALUE];
        break;
      }
      case EDealed:
      {
        [aBillDic setValue:@"handled" forKey:TASK_TASKLIST_KSTATUSVALUE];
        break;
      }
        
      default:
        break;
    }
  }
  return aBillDic;
}

#pragma mark MWAHTTPNotify methods
//异步可用 请求结束时，此方法被调用
-(void)requestFinishedWithResponseVO:(CWABaseVO *)aBaseVO andMsgVO:(CWAResponseMsg *)aMsgVO
{
  [[CWASpinnerView sharedCWASpinnerView] hiddenSpinnerView];
  if (iDelegate && [iDelegate respondsToSelector:@selector(requestReturnWithResponseVO:andMsgVO:)]) 
  {
    [iDelegate requestReturnWithResponseVO:aBaseVO andMsgVO:aMsgVO];
  }

}

- (void)failedRequestWithError:(NSError*)theError;
{
  [[CWASpinnerView sharedCWASpinnerView] hiddenSpinnerView];
  if (iDelegate &&[iDelegate respondsToSelector:@selector(requestFail:)]) 
  {
    [iDelegate requestFail:theError];
  }
  
}

- (void)requestOfOneComponentMultiActionsResponesVOs:(NSArray*)vosArray
{
  [[CWASpinnerView sharedCWASpinnerView] hiddenSpinnerView];
  if(iDelegate && [iDelegate respondsToSelector:@selector(requestOfOneComponentMultiActionsResponesVOs:)])
  {
    [iDelegate requestOfOneComponentMultiActionsResponesVOs:vosArray];
  }
 
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

@end 
