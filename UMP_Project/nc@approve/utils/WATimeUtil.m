//
//  
//
//  Created by Berry  yu  on 11-9-22.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "WATimeUtil.h"
#include <sys/socket.h>
#include <sys/sysctl.h>
#include <net/if.h>
#include <net/if_dl.h>
#import <CommonCrypto/CommonDigest.h>
#import <QuartzCore/QuartzCore.h>

@implementation CWATimeUtil

static NSDateFormatter *dateFormatter = nil;

+ (NSString *)dateline
{
  NSDate *date = [NSDate date];
  NSTimeInterval dateline = [date timeIntervalSince1970];
  return [NSString stringWithFormat:@"%.0f",dateline];
}

+ (NSString *)datelineToString:(NSString *)aDateline
{
  
  if (!aDateline) 
  {
    return nil;
  }
  NSScanner *scanner = [NSScanner scannerWithString:aDateline];
  double d;
  [scanner scanDouble:&d];
  NSDate *date = [NSDate dateWithTimeIntervalSince1970:d];
  if(dateFormatter == nil)
  {
    dateFormatter = [[NSDateFormatter alloc] init];
  }
  //	NSDateFormatter *dateFormatter = [[[NSDateFormatter alloc] init] autorelease];
  [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  
  
  NSString *str = [dateFormatter stringFromDate:date];
  return str;
 
}

+ (NSString *)datelineToString:(NSString *)aDateline Format:(NSString *)aFormat
{
  
  if ((!aDateline)||(!aFormat)) 
  {
    return nil;
  }
  NSScanner *scanner = [NSScanner scannerWithString:aDateline];
  double d;
  [scanner scanDouble:&d];
  NSDate *date = [NSDate dateWithTimeIntervalSince1970:d];
  if(dateFormatter == nil)
  {
    dateFormatter = [[NSDateFormatter alloc] init];
  }
  //	NSDateFormatter *dateFormatter = [[[NSDateFormatter alloc] init] autorelease];
  [dateFormatter setDateFormat:aFormat];
  return [dateFormatter stringFromDate:date];
}

+ (NSInteger)getCurSystemGMTTimeInterval
{
  return [[NSTimeZone localTimeZone] secondsFromGMT];
}

+ (NSString *)getGMTTimeDate:(NSDate *)aDate withFormat:(NSString *)aFormatStr
{
  NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
  [formatter setDateFormat:aFormatStr];
  
  NSTimeZone *timeZone = [NSTimeZone localTimeZone];
  [formatter setTimeZone:timeZone];
  
  NSString *dateString = [formatter stringFromDate:aDate];
  
  return dateString;
}

+ (NSString *)getCurSystemGMTTimeOffSet
{
  //取时间偏移量秒数（-43200 ~ +43200）
  NSInteger interval = [CWATimeUtil getCurSystemGMTTimeInterval];
  
  //取时间偏移量标点
  NSString *sign = @"";
  if (interval < 0)
  {
    sign = @"-";
    interval = 0 - interval;
  }
  //取小时数
  NSInteger hour = interval/3600;
  NSString *hourStr = @"00";
  if (hour > 9)
  {
    hourStr = [NSString stringWithFormat:@"%d",hour];
  }
  else if (hour > 0)
  {
    hourStr = [NSString stringWithFormat:@"0%d",hour];
  }
  //取分钟数
  NSInteger minute = interval%3600;
  NSString *minuteStr = @"00";
  if (minute > 9)
  {
    minuteStr = [NSString stringWithFormat:@"%d",minute];
  }
  else if (minute > 0)
  {
    minuteStr = [NSString stringWithFormat:@"0%d",minute];
  }
  //返回值组装
  NSString *offSetStr = [NSString stringWithFormat:@"%@%@:%@",sign,hourStr,minuteStr];
  return offSetStr;
}

+ (NSString *)getTodayDateString
{//initWithDateFormat:(NSString *)format allowNaturalLanguage
  if(dateFormatter == nil)
  {
    dateFormatter = [[NSDateFormatter alloc] init];
  }
  //    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
  [dateFormatter setDateFormat:@"yyyy-MM-dd"];
  NSString* ret = [dateFormatter stringFromDate:[NSDate date]];
  return ret;
}

+ (NSString *)getTodayWeekday
{
  NSInteger week;
  NSString *weekStr=nil;
  
  NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
  NSDate *now = [NSDate date];;

  NSInteger unitFlags = NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit | NSWeekdayCalendarUnit |
  NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit;
  
  NSDateComponents *comps = [calendar components:unitFlags fromDate:now];
  week = [comps weekday];

  NSString *sWeek = [NSString stringWithFormat:@"%d",week];
  weekStr = NSLocalizedStringFromTable(sWeek, @"Util_TimeUtil", nil);

  
  return weekStr;
}

+ (NSString *)getChTodayDateString
{
  if(dateFormatter == nil)
  {
    dateFormatter = [[NSDateFormatter alloc] init];
  }
  [dateFormatter setDateFormat:@"yyyy年MM月dd日"];
  NSString* ret = [dateFormatter stringFromDate:[NSDate date]];
  return ret;
}

+ (NSString *)getTodayDateStringNoline
{
  if(dateFormatter == nil)
  {
    dateFormatter = [[NSDateFormatter alloc] init];
  }
  //    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
  [dateFormatter setDateFormat:@"yyyyMMdd"];
  NSString* ret = [dateFormatter stringFromDate:[NSDate date]];
  return ret;
}

+ (NSString *)intervalSinceNow: (NSString *) aTheDate
{
  
  if (!aTheDate) 
  {
    return nil;
  }
  
  NSDateFormatter *date=[[NSDateFormatter alloc] init];
  [date setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  NSDate *d=[date dateFromString:aTheDate];
  
  NSTimeInterval late=[d timeIntervalSince1970]*1;
  
  
  NSDate* dat = [NSDate dateWithTimeIntervalSinceNow:0];
  NSTimeInterval now=[dat timeIntervalSince1970]*1;
  NSString *timeString=@"";
  
  NSTimeInterval cha=now-late;
  
  if (cha/3600<1) 
  {
    timeString = [NSString stringWithFormat:@"%f", cha/60];
    timeString = [timeString substringToIndex:timeString.length-7];
    //分钟前
    timeString=[NSString stringWithFormat:@"%@%@%@",timeString,NSLocalizedStringFromTable(@"NC61_Time_Minutes", @"Util_TimeUtil", nil),NSLocalizedStringFromTable(@"NC61_Time_Ago", @"Util_TimeUtil", nil)];
    
    
  }
  if (cha/3600>1&&cha/86400<1)
  {
    timeString = [NSString stringWithFormat:@"%f", cha/3600];
    timeString = [timeString substringToIndex:timeString.length-7];
    // 小时前
    timeString=[NSString stringWithFormat:@"%@%@%@", timeString,NSLocalizedStringFromTable(@"NC61_Time_Hours", @"Util_TimeUtil", nil),NSLocalizedStringFromTable(@"NC61_Time_Ago", @"Util_TimeUtil", nil)];
  }
  if (cha/86400>1)
  {
    timeString = [NSString stringWithFormat:@"%f", cha/86400];
    timeString = [timeString substringToIndex:timeString.length-7];
    // 天前
    timeString=[NSString stringWithFormat:@"%@%@%@", timeString,NSLocalizedStringFromTable(@"NC61_Time_Days", @"Util_TimeUtil", nil),NSLocalizedStringFromTable(@"NC61_Time_Ago", @"Util_TimeUtil", nil)];
    
  }
  
  return timeString;
}



+ (NSString *)TimeintervalToString:(NSString *)aTimeStart TimeEnd:(NSString *)aTimeEnd;
{ 
  if ((!aTimeStart)||(!aTimeEnd)) 
  {
    return nil;
  }  
  NSDateFormatter *dateFormatter=[[NSDateFormatter alloc] init]; 
  [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm"];
  NSString *dateContent = nil;
  
  NSDate *date1=[dateFormatter dateFromString:aTimeStart]; 
  NSDate *date2=[dateFormatter dateFromString:aTimeEnd]; 
    
  NSTimeInterval time=[date2 timeIntervalSinceDate:date1];
    
  uint days=((int)time)/(3600*24); 
  uint hours=((int)time)%(3600*24)/3600;
    // ..天..小时
  dateContent=[[NSString alloc] initWithFormat:@"%i%@%i%@",
               days,
               NSLocalizedStringFromTable(@"NC61_Time_Days", @"Util_TimeUtil", nil),
               hours,
               NSLocalizedStringFromTable(@"NC61_Time_Hours", @"Util_TimeUtil", nil)];
    
  return dateContent;
}

@end
