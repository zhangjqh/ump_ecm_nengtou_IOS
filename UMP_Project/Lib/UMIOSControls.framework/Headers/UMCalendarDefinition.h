//
//  UMCalendarDefinition.h
//  UMIOSControls
//
//  Created by zhangyuv on 14-3-19.
//  Copyright (c) 2014年 zhangnan. All rights reserved.
//

#ifndef UMIOSControls_UMCalendarDefinition_h
#define UMIOSControls_UMCalendarDefinition_h

typedef NS_ENUM(NSInteger, UMDayType)
{
    UMSunday,
    UMMonday,
    UMTuesday,
    UMWednesday,
    UMThursday,
    UMFriday,
    UMSaturday
};

typedef NS_ENUM(NSInteger, UMEventDayType)
{
    ICON,
    TEXT,
    TEXTICON,
    INVALID = -1,
};

typedef NS_ENUM(NSInteger, UMCaptionAlignType)
{
    UMCaptionAlignTop,
    UMCaptionAlignBottom
};

extern NSString* const kUMEventDayTypeIcon;
extern NSString* const kUMEventDayTypeText;
extern NSString* const kUMEventDayTypeTextIcon;
#endif
