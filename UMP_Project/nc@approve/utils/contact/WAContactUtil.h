/*!
 @header WAContactUtil.h
 @abstract 联系方式工具
 @author fanhn
 @copyright ufida
 @version 1.00 2012/05/14 Creation 
 */

#import <Foundation/Foundation.h>
#import <AddressBook/AddressBook.h>
#import <MessageUI/MessageUI.h>
#import <AddressBookUI/AddressBookUI.h>
#import "WAContactVO.h"
#import "WAContactDetailVO.h"
#import "WAUFTool.h"

/*!
 @class
 @abstract 联系方式工具，打电话、发短信、发邮件
 */
@interface WAContactUtil : NSObject<MFMessageComposeViewControllerDelegate,MFMailComposeViewControllerDelegate,ABNewPersonViewControllerDelegate>
/*!
 @enum
 @abstract 联系方式标识
 @constant ETelephone 打电话
 @constant ESms 发短信
 @constant EEmail 发邮件
 @constant EWebsite 访问网页
 */
typedef enum
{
    ETelephone = 0,
    ESms = 1,
    EEmail = 2,
    EWebsite = 3
}TWAflag;
/*!
 @method
 @abstract 根据标识获取联系方式
 @discussion 
 @param numberOrAddress 电话号码或者邮件地址 flag 0:打电话 1:发短信 2:发邮件 3:网站
 @result bool true为成功，false为失败
 */
+(BOOL)contact:(NSString *)aUrl flag:(NSInteger)aFlag;

/*!
 @method
 @abstract 发送短信方法
 @discussion 
 @param phoneNumber 电话号码
 @param content 短信内容
 @result 
 */
-(void)sendSMS:(NSString *) phoneNumber content:(NSString *)content target:(id)sender;
/*!
 @method
 @abstract 发送邮件方法
 @discussion 
 @param mailArray 邮件地址数组
 @param ccArray 抄送邮件地址数组
 @param bccArray 密送邮件地址数组
 @param subject 邮件主题
 @param body 邮件内容
 @result 
 */
-(void)sendEmail:(NSArray *)mailArray ccRecipients:(NSArray *)ccArray bccRecipients:(NSArray *)bccArray subject:(NSString *)subject messageBody:(NSString *)body target:(id)sender;
/*!
 @method
 @abstract 保存名片至本地通讯录
 @discussion 根据WAContactVO数据保存
 @param contactDetailArray WAContactDetailVO数组
 @param name 姓名
 @param image 头像
 @param job 职位
 @param corpAndDept 公司+部门
 @result 
 */
-(void)addToAddressBook:(NSArray *)contactDetailArray name:(NSString *)name image:(UIImage *)image job:(NSString *)job corpAndDept:(NSString *)corpAndDept target:(id)sender;
/*!
 @method
 @abstract 保存名片至本地通讯录
 @discussion 基本数据保存
 @param name 姓名
 @param telNumber 电话号码
 @param email 邮件
 @param address 地址
 @result 
 */
+(void)addContactForName:(NSString *)name telephone:(NSString *)telNumber email:(NSString *)email address:(NSString *)address;
/*!
 @method
 @abstract 获取本地通讯录信息(暂未实现)
 @discussion
 @result NSMutableArray 
 */
+(NSMutableArray *)getFromContact;
@end
