//
//  UMBadgeService.h
//  UMContainer
//
//  Created by dingheng on 14-3-29.
//  Copyright (c) 2014年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XEventArgs.h"

@interface UMBadgeService : NSObject

/*

 //UMBadgeService.ShowBadge（target,text,posotion）
 //参数1 target(必填，用于显于badge的控件ID)
 //参数2 text(必填，badge显示的内容)
 //参数3 position（非必填，指定badge显示的位置。1 = topleft 2=topright 3=bottomleft 4=bottomright 5=center）
 //
 */


+(void)ShowBadge:(XEventArgs *)args;


/*
 
 //UMBadgeService.HideBadge(target)
 //参数1 target(必填，用于显于badge的控件ID)
 
 */

+(void)HideBadge:(XEventArgs *)args;

@end
