/*!
 @header   CWALocalNotifUtil.h
 @abstract 推送localNotification的一些方法
 @author   Created by Lemon on 12-6-14.
 @version  1.00 2012/01/20  yonyou.com All rights reserved.
 */


#import <Foundation/Foundation.h>

@interface CWALocalNotifUtil : NSObject
{
  
}

/*!
 @method
 @abstract   给程序添加角标
 @discussion 返回1时表示添加正常，返回2时表示上出界,添加9999,返回0时表示下出界，添加0
 @param      aInt 角标添加的数字
 @result     (int)返回1时表示添加正常，返回2时表示上出界,添加9999,返回0时表示下出界，添加0
 */
+ (int)showIconBadgeInt:(int)aInt;

/*!
 @method
 @abstract   添加一个localNotification
 @discussion 时区默认为当前时区。
 @param      msgString 添加的localNotification的提示内容。
 @param      hourDouble 添加的localNotification的延时
 @param      aBool 添加的localNotification是否有声音
 @param      aCalendarUnit 添加的localNotification的重复间隔
 @param      aIDString 添加的localNotification的ID。
          ID不设置重复检查，但是因为这个是咯擦localNotification的唯一标示，所以应当避免重复。
 @result     (int)返回1表示添加成功，返回0表示添加失败。
 */
+ (int)pushMsgNotic:(NSString *)msgString 
          delayTime:(double)hourDouble 
           hasSound:(BOOL)aBool
       repFrequence:(NSCalendarUnit)aCalendarUnit 
       withIDString:(NSString *)aIDString ;

/*!
 @method
 @abstract 删除一个localNotification
 @discussion 
 @param    aNotif 被删除localNotification
 @result   (int)返回0表示添加失败，返回1表示添加成功。
 */
+ (int)cacelNotification:(UILocalNotification *)aNotif;

/*!
 @method
 @abstract   寻找一个localNotification
 @discussion 依靠ID寻找一个localNotification,并修改userinfo
 @param      aIDStr 被寻找localNotification的ID
 @result     (UILocalNotification *)返回找到的localNotification，找不到则返回nil,列表中有多个的时候，返回第一个。
 */
+ (UILocalNotification *)findNotification:(NSString *)aIDStr;

/*!
 @method
 @abstract   重置一个localNotification
 @discussion 依靠一个localNotification的指针，重置此localNotification
 @param      aNotif被重置localNotification的指针。
 @result     (int)返回0表示重置失败，原来的localNotification保留，返回1表示重置成功，原来的删除。
 */
+ (int)resetNotification:(UILocalNotification *)aNotif;


/*!
 @method
 @abstract 重设所有的localNotification
 @discussion 
 @result   (int)返回K表示至少重设了K个localNotification,返回0表示没有重设任何。
 */
+ (int)resetAllNotification;

/*!
 @method
 @abstract 取消所有的localNotification
 @discussion 
 @result   (int)返回1表示成功。
 */
+ (int)cacelAllNotification;
@end
