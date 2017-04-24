//
//  ReminderAndTipsHeadViewBuilder.h
//  SSTASK120521A
//
//  Created by HUYCH on 13-8-12.
//
//

#import <Foundation/Foundation.h>

@interface ReminderAndTipsHeadViewBuilder : NSObject
+ (UIView *)getHeadViewWithReminder:(NSString *)aReminder
                           WithTips:(NSString *)aTips;
@end
