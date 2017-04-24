//
//  WANC63BadgeController.m
//  NC63Multiple
//
//  Created by evan on 14-1-13.
//  Copyright (c) 2014年 yonyou. All rights reserved.
//

#import "WANC63BadgeController.h"

@implementation CWANC63BadgeController

- (id)init
{
  self = [super init];
  if (self)
  {
    iBadgeBnsHandler = [[CWANC63BadgeBnsHandler alloc] init];
  }
  return self;
}

- (void)requestNC63BadgeWithTypeList:(NSArray *)aTypeList
                     withServiceCode:(NSString *)aServiceCode
                           withBlock:(TWANC63BadgeListBlock)aBlock
{
  //各种业务请求VO
  CWABaseVO *scheduleRequestVO = [[CWABaseVO alloc] init];
  scheduleRequestVO.voDictionary = [NSMutableDictionary dictionaryWithDictionary:[CWACommonInfoVO getDefaultEmptyGroupIDAndUserID]];
  CWABaseVO *taskRequestVO = [[CWABaseVO alloc] init];
  taskRequestVO.voDictionary = [NSMutableDictionary dictionaryWithDictionary:[CWACommonInfoVO getDefaultEmptyGroupIDAndUserID]];
  CWABaseVO *msgRequestVO = [[CWABaseVO alloc] init];
  msgRequestVO.voDictionary = [NSMutableDictionary dictionaryWithDictionary:[CWACommonInfoVO getDefaultEmptyGroupIDAndUserID]];
  CWABaseVO *newsRequestVO = [[CWABaseVO alloc] init];
  newsRequestVO.voDictionary = [NSMutableDictionary dictionaryWithDictionary:[CWACommonInfoVO getDefaultEmptyGroupIDAndUserID]];
  CWABaseVO *scheduleTaskRequestVO = [[CWABaseVO alloc] init];
  scheduleTaskRequestVO.voDictionary = [NSMutableDictionary dictionaryWithDictionary:[CWACommonInfoVO getDefaultEmptyGroupIDAndUserID]];
  CWABaseVO *xtWorkRequestVO = [[CWABaseVO alloc] init];
  xtWorkRequestVO.voDictionary = [NSMutableDictionary dictionaryWithDictionary:[CWACommonInfoVO getDefaultEmptyGroupIDAndUserID]];
  NSArray *requestVOArray = [NSArray arrayWithObjects:scheduleRequestVO, taskRequestVO, msgRequestVO, newsRequestVO, scheduleTaskRequestVO, xtWorkRequestVO, nil];
  [iBadgeBnsHandler getBadgeWithVOs:requestVOArray
                   withServiceCodes:nil
                          withBlock:^(NSMutableArray *aDetailDataArray, NSError *error)
  {
    if (error)
    {
     
    }
    else
    {
      //返回数据为列表，列表中每一项为一个字典，字典中包含两个key：compentid、badgecount
      if (aBlock)
      {
        aBlock(aDetailDataArray);
      }
    }
   }];
}

@end
