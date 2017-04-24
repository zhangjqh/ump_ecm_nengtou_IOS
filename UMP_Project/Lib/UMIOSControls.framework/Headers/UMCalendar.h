//
//  UMCalendar.h
//  UMContainer
//
//  Created by dingheng on 14-3-21.
//  Copyright (c) 2014年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "UMService.h"
#import "UMCalendarView.h"
#import "XEventArgs.h"
/*
 
 UMCalendar.getToToday       日历跳转到今天，并加载数据（没有参数）
 getMonthChange   日历翻页时获取，月数据的服务  （参数同callaction）
 getDayChange     日历点击具体日，时获取数据的服务 （参数同callaction）
 getCalendarTitle  获取日历当前的年-月 用于界面title显示（没有参数）
 
 */

@interface UMCalendar : NSObject

+(void)getToToday:(XEventArgs *)args;;

+(void)getMonthChange:(XEventArgs *)args;;

+(void)getDayChange:(XEventArgs *)args;;

+(NSString *)getCalendarTitle:(XEventArgs *)args;

+(void)getClickCalendarDate;

@end
