//
//  WARemindTypeVO.m
//  CollaborationTask
//
//  Created by Lemon on 13-3-14.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import "WATVRemindTypeVO.h"

@implementation CWATVRemindTypeVO
@synthesize iRemindName;
@synthesize iRemindID;
@synthesize iIsCheck;


-(void)fillVoDictionary
{
  
  NSMutableDictionary *requestPara= [[NSMutableDictionary alloc] initWithObjectsAndKeys:
                                     self.iRemindID?self.iRemindID:@"" ,WA_REMINDTYPE_REMINDID_RES,
                                     self.iRemindName?self.iRemindName:@"" ,WA_REMINDTYPE_REMINDNAME_RES,
                                     nil];
  
  NSDictionary * logObj= [CWACommonInfoVO getDefaultEmptyGroupIDAndUserID];
  
  [requestPara addEntriesFromDictionary:logObj];
  self.voDictionary = requestPara;
}

-(void)setSelfWithVO:(CWATVRemindTypeVO *)aVO
{
  self.iRemindID = aVO.iRemindID;
  self.iRemindName = aVO.iRemindName;
  self.iIsCheck = aVO.iIsCheck;
}

@end
