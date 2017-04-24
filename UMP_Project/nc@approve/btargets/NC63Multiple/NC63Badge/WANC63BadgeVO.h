//
//  WANC63BadgeVO.h
//  NC63Multiple
//
//  Created by evan on 14-1-15.
//  Copyright (c) 2014年 yonyou. All rights reserved.
//

#import <Foundation/Foundation.h>
static NSString * const WA_NC63_BADGE_Schedule_KEY = @"iScheduleBadge";
static NSString * const WA_NC63_BADGE_Task_KEY = @"iTaskBadge";
static NSString * const WA_NC63_BADGE_Msg_KEY = @"iMsgBadge";
static NSString * const WA_NC63_BADGE_News_KEY = @"iMsgPreviewBadge";
static NSString * const WA_NC63_BADGE_ScheduleTask_KEY = @"iScheduleTaskBadge";
static NSString * const WA_NC63_BADGE_XTWork_KEY = @"iEcmWorkBadge";

@interface CWANC63BadgeVO : NSObject
{
  NSString *iScheduleBadge;
  NSString *iTaskBadge;
  NSString *iMsgBadge;
  NSString *iMsgPreviewBadge;
  NSString *iScheduleTaskBadge;
  NSString *iEcmWorkBadge;
}

@end
