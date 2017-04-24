//
//  WANC63BadgeBnsHandler.m
//  NC63Multiple
//
//  Created by evan on 14-1-13.
//  Copyright (c) 2014年 yonyou. All rights reserved.
//

#import "WANC63BadgeBnsHandler.h"


@implementation CWANC63BadgeBnsHandler
static NSString * const WA_ACTIONTYPE = @"actionType";
static const NSInteger WA_BADGE_ERRORCODE = 630371001;
#define WA_PLACESALEORDER_ERRORCODE 20001

//角标Component ID
static NSString * const WA_NC63_Schedule_COMPONENTID = @"WA00032";
static NSString * const WA_NC63_Task_COMPONENTID = @"A0A007";
static NSString * const WA_NC63_Msg_COMPONENTID = @"WA00003";
static NSString * const WA_NC63_News_COMPONENTID = @"WA00031";
static NSString * const WA_NC63_ScheduleTask_COMPONENTID = @"WA00033";
static NSString * const WA_NC63_XTWork_COMPONENTID = @"WA00037";
//请求类型
static NSString * const WA_NC63_Schedule_AT = @"getUnreadScheduleCount";
static NSString * const WA_NC63_Task_AT = @"getUnreadTaskCount";
static NSString * const WA_NC63_Msg_AT = @"getUnreadMsgCount";
static NSString * const WA_NC63_News_AT = @"getUnreadNewsCount";
static NSString * const WA_NC63_ScheduleTask_AT = @"getUnreadScheduleTaskCount";
static NSString * const WA_NC63_XTWork_AT = @"getUnreadXTWorkCount";

- (id)init
{
  self = [super init];
  if (self)
  {

    iScheduleBnsDesVO = [[CWABnsDesVO alloc]initWithComponetID:WA_NC63_Schedule_COMPONENTID
                                                           actionTypes:[NSMutableArray arrayWithObjects:WA_NC63_Schedule_AT, nil]];
    iTaskBnsDesVO = [[CWABnsDesVO alloc]initWithComponetID:WA_NC63_Task_COMPONENTID
                                                   actionTypes:[NSMutableArray arrayWithObjects:WA_NC63_Task_AT, nil]];
    iMsgBnsDesVO = [[CWABnsDesVO alloc]initWithComponetID:WA_NC63_Msg_COMPONENTID
                                                   actionTypes:[NSMutableArray arrayWithObjects:WA_NC63_Msg_AT, nil]];
    iNewsBnsDesVO = [[CWABnsDesVO alloc]initWithComponetID:WA_NC63_News_COMPONENTID
                                                   actionTypes:[NSMutableArray arrayWithObjects:WA_NC63_News_AT, nil]];
    iScheduleTaskBnsDesVO = [[CWABnsDesVO alloc]initWithComponetID:WA_NC63_ScheduleTask_COMPONENTID
                                                   actionTypes:[NSMutableArray arrayWithObjects:WA_NC63_ScheduleTask_AT, nil]];
    iXTWorkBnsDesVO = [[CWABnsDesVO alloc]initWithComponetID:WA_NC63_XTWork_COMPONENTID
                                                   actionTypes:[NSMutableArray arrayWithObjects:WA_NC63_XTWork_AT, nil]];
  }
  return self;
}
- (void)getBadgeWithVOs:(NSArray *)aRequestVO
       withServiceCodes:(NSArray *)aServiceCodes
              withBlock:(TWANC63BadgeRequestBlock)aBlock
{
  iBadgeRequestBlock = aBlock;
  if (aRequestVO && [aRequestVO count]== 6)
  {
    NSDictionary *scheduleDic = [NSDictionary dictionaryWithObjectsAndKeys:[aRequestVO objectAtIndex:0], WA_NC63_Schedule_AT, nil];
    NSDictionary *taskDic = [NSDictionary dictionaryWithObjectsAndKeys:[aRequestVO objectAtIndex:1], WA_NC63_Task_AT, nil];
    NSDictionary *msgDic = [NSDictionary dictionaryWithObjectsAndKeys:[aRequestVO objectAtIndex:2], WA_NC63_Msg_AT, nil];
    NSDictionary *newsDic = [NSDictionary dictionaryWithObjectsAndKeys:[aRequestVO objectAtIndex:3], WA_NC63_News_AT, nil];
    NSDictionary *scheduleTaskDic = [NSDictionary dictionaryWithObjectsAndKeys:[aRequestVO objectAtIndex:4], WA_NC63_ScheduleTask_AT, nil];
    NSDictionary *xtWorkDic = [NSDictionary dictionaryWithObjectsAndKeys:[aRequestVO objectAtIndex:5], WA_NC63_XTWork_AT, nil];
    NSDictionary *requestDataDic = [[NSDictionary alloc] initWithObjectsAndKeys:
                                    xtWorkDic, WA_NC63_XTWork_COMPONENTID,
                                    taskDic, WA_NC63_Task_COMPONENTID, 
                                    scheduleDic, WA_NC63_Schedule_COMPONENTID,
                                     newsDic, WA_NC63_News_COMPONENTID,      
                                           msgDic, WA_NC63_Msg_COMPONENTID, 
                                           scheduleTaskDic, WA_NC63_ScheduleTask_COMPONENTID, 
                                            nil];
    
    NSArray *bnsVOArray = [NSArray arrayWithObjects:iScheduleBnsDesVO, iTaskBnsDesVO, iMsgBnsDesVO, iNewsBnsDesVO, iScheduleTaskBnsDesVO, iXTWorkBnsDesVO, nil];

    //单独初始化网络请求类
    iBadgeHttpRequest = [[CWAHTTPRequestHandler alloc] init];
    iBadgeHttpRequest.delegate =self;
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSString *defaultUrl =[userDefaults objectForKey:WA_HTTP_D_URL];
    if ( defaultUrl )
    {
      
      iBadgeHttpRequest.iHttpUrl =defaultUrl;
    }
    /*!
     @method
     @abstract 发起post请求 (多component)
     @discussion 自动封装请求，设置代理，触发请求
     @param voData 多component请求数据Dictionary
     (voData第一级key为Componentid,value为该component的请求数据（形式为Dictionary）
     每个component对应的请求数据Dictionary的key为以该component中的actiontype,actiontype key对应的value为一个CWABaseVO对象，该对象中的voDictionary属性对应着该actiontype的请求业务数据KV)
     @param aDelegate 请求通知（用来接收请求进度通知）
     @param aMehtod 请求方式（普通请求，上传，下载 详情对应WAHTTPDef.h中的 HTTP_METHOD 枚举）
     @param aBnsDesVO 请求描述vo 用来描述componentid 和 actiontype信息
     @result 
     */
    [iBadgeHttpRequest firePostRequestMutliComponentVOData:requestDataDic
                                                 delegate:self
                                                   mehtod:(RQ_METHOD)NORMAL
                                                    bnsVO:bnsVOArray];
  }
}

//多component请求返回
- (void)requestOfMultiComponentsResponesVOs:(NSArray *)vosArray
{
  NSMutableDictionary *aDataDic = [[NSMutableDictionary alloc]initWithCapacity:1];
  NSMutableArray *badgeList = [[NSMutableArray alloc] init];
  NSError *error = nil;
  @try
  {
    for (CWABaseVO *basevo in vosArray)
    {
      if (basevo && [basevo isKindOfClass:[CWABaseVO class]])
      {
        NSDictionary *voDic = basevo.voDictionary;
        if (voDic == nil || ![voDic isKindOfClass:[NSDictionary class]])
        {
          continue;
        }
        //获取compontid
        NSString *compontid = [voDic objectForKey:@"componentid"];
        if (compontid == nil)
        {
          continue;
        }
        //当前actionType
        NSString *curentActionType = [self getActionTypeWithComptID:compontid];
        if (curentActionType)
        {
          NSDictionary *valueDic = [voDic objectForKey:curentActionType];
          if (valueDic == nil || ![valueDic isKindOfClass:[NSDictionary class]])
          {
            continue;
          }
          //先判断flag
          NSString *flag = [valueDic objectForKey:@"flag"];
          if(flag)
          {
            if (0 == [flag intValue])
            {
              NSArray *serviceCodeArray = [valueDic objectForKey:@"servicecodes"];
              
              NSString *serviceCodeStr;
              if (serviceCodeArray && [serviceCodeArray isKindOfClass:[NSArray class]] && [serviceCodeArray count]  > 0)
              {
                serviceCodeStr = [serviceCodeArray objectAtIndex:0];
              }
              else
              {
                if ([serviceCodeArray isKindOfClass:[NSString class]]) {
                  serviceCodeStr = (NSString *)serviceCodeArray;
                }
              }
              if (serviceCodeStr == nil) {
                continue;
              }
              NSArray *serCodeInfoArray = [valueDic objectForKey:serviceCodeStr];
              if (serCodeInfoArray && [serCodeInfoArray isKindOfClass:[NSArray class]] && [serCodeInfoArray count] > 0)
              {
                NSDictionary *tpDic = [serCodeInfoArray objectAtIndex:0];
                
                if (tpDic && [tpDic isKindOfClass:[NSDictionary class]])
                {
                  NSDictionary *badgeDic = [tpDic objectForKey:@"badge"];
                  if (badgeDic && [badgeDic isKindOfClass:[NSDictionary class]])
                  {
                    //返回数字做判断
                    NSString *count = [badgeDic objectForKey:@"count"];
                    if (count == nil)
                    {
                      continue;
                    }
                    int countInt = [count intValue];
                    if (countInt <= 0)
                    {
                      continue;
                    }
                    if (countInt > 99)
                    {
                      count = @"99+";
                    }
                    NSDictionary *countAndCptIdDic = [NSDictionary dictionaryWithObjectsAndKeys:compontid, @"compentid", count, @"badgecount", nil];
                    [badgeList addObject:countAndCptIdDic];
                  }
                }
              }
            }
            else
            {
              NSString *desc = [valueDic objectForKey:@"desc"];
             
              continue;
            }
          }
        }
      }
    }
  }
  @catch (NSException *exception)
  {
    error = [[NSError alloc] initWithDomain:exception.name
                                       code:WA_BADGE_ERRORCODE
                                   userInfo:nil];
    
  }
  @finally
  {
    
  }
  // 回传值
  if (iBadgeRequestBlock)
  {
    iBadgeRequestBlock(badgeList,error);
  }
}

//根据compentid返回actionType
- (NSString *)getActionTypeWithComptID:(NSString *)iComptID
{
  /**
   0:协同日程 WA00032 WA_NC63_BADGE_Schedule_KEY
   1:协作任务 A0A007 WA_NC63_BADGE_Task_KEY
   2:消息看板 WA00003 WA_NC63_BADGE_Msg_KEY
   3:信息阅览 WA00031 WA_NC63_BADGE_News_KEY
   4:移动审批 WA00033 WA_NC63_BADGE_ScheduleTask_KEY
   5:协同工作 WA00037 WA_NC63_BADGE_XTWork_KEY
   **/
  if ([iComptID isEqualToString:@"WA00032"])
  {
    return WA_NC63_Schedule_AT;
  }
  else if ([iComptID isEqualToString:@"A0A007"])
  {
    return WA_NC63_Task_AT;
  }
  else if ([iComptID isEqualToString:@"WA00003"])
  {
    return WA_NC63_Msg_AT;
  }
  else if ([iComptID isEqualToString:@"WA00031"])
  {
    return WA_NC63_News_AT;
  }
  else if ([iComptID isEqualToString:@"WA00033"])
  {
    return WA_NC63_ScheduleTask_AT;
  }
  else if ([iComptID isEqualToString:@"WA00037"])
  {
    return WA_NC63_XTWork_AT;
  }
  else
  {
    return nil;
  }
}


//请求失败
- (void)failedRequestWithError:(NSError*)theError
{
  
}
@end
