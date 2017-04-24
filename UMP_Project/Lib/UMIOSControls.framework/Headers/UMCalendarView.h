//
//  UMLabel.h
//  UMIOSControls
//
//  Created by zzyy on 13-7-15.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

//#import "UMIOSControls/UMIOSControls.h"
#import "UMLayoutBindView.h"
#import "UMCalendarDefinition.h"


@interface UMCalendarView : UMLayoutBindView

@property (nonatomic,strong) NSString* selectedDate;
@property (nonatomic,assign) UMDayType firstDayOfWeek;
@property (nonatomic,strong) NSString* eventdaymodel;//UMEventDayType eventDayModel;
@property (nonatomic,strong) NSString* eventDayCaption;

@property (nonatomic,strong) NSString *dayChangeActionStr;//暴露给container的daychangeantion

//calendar-css
@property (nonatomic,strong) UIColor* cal_selectedDate_background;          //选中日期的背景色（df：yellow）
@property (nonatomic,strong) NSString* cal_selectedDate_background_image;   //选中日期的背景图
@property (nonatomic,assign) UMCaptionAlignType cal_eventDayCaption_align;
@property (nonatomic,copy) NSString *cal_eventDay_iconPath;
@property (nonatomic,copy) NSString *cal_expiredEventDay_IconPath;


@property (nonatomic,strong) NSString *todayDate;

- (void)toToday;

+ (NSTimeZone*)timeZone;
+ (NSDate*)beginDate;
+ (NSDate*)endDate;
+ (NSString*)mainTitle;
+ (NSDate*)showDate;

- (void)addDayChangedTarget:(id)target action:(SEL)action;
- (void)addMonthChangedTarget:(id)target action:(SEL)action;
- (void)addCurrentMonthDateTarget:(id)target action:(SEL)action;
- (void)addGoToTodayTarget:(id)target action:(SEL)action;

@end
