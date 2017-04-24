//
//  CWALocalNotifUtil.m
//  LNTest
//
//  Created by Lemon on 12-6-14.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "WALocalNotifUtil.h"

@implementation CWALocalNotifUtil

//修改程序角标
+ (int)showIconBadgeInt:(int)aInt
{
  int mark = 1;
  if (aInt > 9999)
  {
    mark = 2;
    aInt = 9999;
  }
  if (aInt < 0) 
  {
    mark = 0;
    aInt = 0;
  }
  [UIApplication sharedApplication].applicationIconBadgeNumber = aInt;
  return mark;
}

//添加一个localNotification
+ (int)pushMsgNotic:(NSString *)msgString 
          delayTime:(double)hourDouble 
           hasSound:(BOOL)aBool
       repFrequence:(NSCalendarUnit)aCalendarUnit 
       withIDString:(NSString *)aIDString 

{
  int mark=0;
  UILocalNotification *notification = [[UILocalNotification alloc] init]; 
  if (notification != nil) 
  { 
    mark = 1;
    //设置推送时间
    int secondInt = 3600 * hourDouble;
    notification.fireDate = 
    [NSDate dateWithTimeIntervalSinceNow:secondInt]; 
    //设置时区
    notification.timeZone = [NSTimeZone defaultTimeZone]; 
    //设置重复间隔
    notification.repeatInterval = aCalendarUnit;
    notification.repeatCalendar = 0;
    //推送声音
    if (aBool) 
    {
      notification.soundName = UILocalNotificationDefaultSoundName;
    }
    else 
    {
      notification.soundName = 0;
    }
    //内容
    notification.alertBody = msgString; 
    //alert action是否显示按钮和按钮内容。
    notification.hasAction = YES;
    notification.alertAction = @"Open"; 
    //设置userinfo 方便在之后需要撤销的时候使用
    NSDictionary *infoDic = 
    [self setInfoDicForNotif:secondInt aIDStr:aIDString];
    //添加userinfo
    notification.userInfo = infoDic;
    //添加推送到uiapplication 
    UIApplication *app = [UIApplication sharedApplication];
    [app scheduleLocalNotification:notification];
  }
  return mark;
  
}

//删除一个LocalNotification
+ (int)cacelNotification:(UILocalNotification *)aNotif 

{    
  int mark = 0;
  if (aNotif != nil) 
  {
    mark = 1;
    [[UIApplication sharedApplication] cancelLocalNotification:aNotif];
  }
  return mark;
}

//寻找一个localNotification
+ (UILocalNotification *)findNotification:(NSString *)aIDStr
{
  NSString *aIDNameStr = @"LNID";
  for (UILocalNotification *aNotif in [[UIApplication sharedApplication] scheduledLocalNotifications]) 
  {   
    
    if ([[aNotif.userInfo objectForKey:aIDNameStr] isEqualToString:aIDStr]) 
    {    
      return aNotif;
    } 
  }
  return nil;
}

//重置一个localNotification
+ (int)resetNotification:(UILocalNotification *)aNotif
{
  int mark = 0;
  UIApplication *app = [UIApplication sharedApplication];
  
  if (aNotif != nil) 
  {
    mark = 1;
    //删除旧的localNotification
    [app cancelLocalNotification:aNotif];
    
    //重置时间
    int secondInt = [[aNotif.userInfo objectForKey:@"Time"]intValue];
    aNotif.fireDate = [NSDate dateWithTimeIntervalSinceNow:secondInt];
    
    //重置userinfo
    NSDictionary *infoDic = 
    [self setInfoDicForNotif:secondInt aIDStr:[aNotif.userInfo objectForKey:@"LNID"]];
    
    aNotif.userInfo = infoDic;
    
    //use in test
    [app scheduleLocalNotification:aNotif];
  }
  return mark;
}

//为一个localNotification设置infoDic，该方法为私有方法，不对外开放。
+ (NSDictionary *)setInfoDicForNotif:(int)secondInt aIDStr:(NSString *)aIDStr
{
  //userinfo中的起始时间
  NSDate *date = [NSDate date];
  NSTimeInterval dateline = [date timeIntervalSince1970];
  NSString *aNowTimeStr = [NSString stringWithFormat:@"%.0f",dateline];
  
  // userinfo中的延迟时间
  NSString *aTimeStr = [[NSString alloc]initWithFormat:@"%d",secondInt];
  
  //设置userinfo
  NSDictionary *infoDic = [NSDictionary dictionaryWithObjectsAndKeys:
                           aIDStr,@"LNID",
                           aTimeStr,@"Time",
                           aNowTimeStr,@"SetTime",nil];
  
  return infoDic;
}


//重置队列里面的所有的notication
+(int)resetAllNotification
{
  int mark = 0;
  
  UIApplication *app = [UIApplication sharedApplication];
  
  for(UILocalNotification *aNotif in [app scheduledLocalNotifications]) 
  {   
    mark += [self resetNotification:aNotif];
  }
  
  return mark;
}

//取消队列里面所有notification
+(int)cacelAllNotification
{
  int mark = 0;
  [[UIApplication sharedApplication] cancelAllLocalNotifications];
  mark = 1;
  return mark;
}

@end
