/*******************************************************************************
 * 版权所有 (C)2014用友软件股份有限公司
 *
 * 文件名称： FeedbackRootViewController.h
 * 内容摘要： 视图控制器根类。
 * 当前版本： v1.0
 * 作   者： 董雷
 * 完成日期： 2014年5月8日
 * 说   明： 此类为项目中所有视图控制器的根类
 
 * 修改日期：
 * 版 本 号：
 * 修 改 人：
 * 修改内容：
 ******************************************************************************/

#import <UIKit/UIKit.h>

@interface FeedbackRootViewController : UIViewController

/*******************************************************************************
 * 方法名称：setNavBarTitle:
 * 功能描述：设置导航栏标题
 * 输入参数：
 title:标题名称
 * 输出参数：
 ******************************************************************************/
- (void)setNavBarTitle:(NSString *)title;

/*******************************************************************************
 * 方法名称：setNavBarTitleForTask:
 * 功能描述：设置导航栏标题(用于任务列表页面)
 * 输入参数：
 title:标题名称
 * 输出参数：
 ******************************************************************************/
- (void)setNavBarTitleForTask:(NSString *)title;

/*******************************************************************************
 * 方法名称：setNavBarTitleView
 * 功能描述：设置导航栏标题View,用于任务和单据页面
 * 输入参数：
    leftText:左边按钮的文字
    rightText:右边按钮的文字
    target:事件相应者
    action:响应函数
 * 输出参数：
 ******************************************************************************/
- (void)setNavBarTitleViewWithLeftText:(NSString *)leftText
                             rightText:(NSString *)rightText
                                target:(id)target
                                action:(SEL)action;

/*******************************************************************************
 * 方法名称：initNavBarBackBtnWithtarget:action:
 * 功能描述：初始化返回按钮
 * 输入参数：
 target:事件相应者
 action:响应函数
 * 输出参数：
 ******************************************************************************/
- (void)initNavBarBackBtnWithtarget:(id)target
                             action:(SEL)action;

/*******************************************************************************
 * 方法名称：initNavBarLeftBtnWithNormalImage:highlightedImage:target:action:
 * 功能描述：初始化左侧按钮(只有图片)
 * 输入参数：
 normalImage:常态下的图片
 highlightedImage:选中状态下的图片
 target:事件相应者
 action:响应函数
 * 输出参数：
 ******************************************************************************/
- (void)initNavBarLeftBtnWithNormalImage:(NSString *)normalImage
                        highlightedImage:(NSString *)highlightedImage
                                  target:(id)target
                                  action:(SEL)action;

/*******************************************************************************
 * 方法名称：initNavBarLeftBtnWithTitle:normalImage:highlightedImage:target:action:
 * 功能描述：初始化左侧按钮(带标题的)
 * 输入参数：
 title:标题
 normalImage:常态下的图片
 highlightedImage:选中状态下的图片
 target:事件相应者
 action:响应函数
 * 输出参数：
 ******************************************************************************/
- (void)initNavBarLeftBtnWithTitle:(NSString *)title
                       normalImage:(NSString *)normalImage
                  highlightedImage:(NSString *)highlightedImage
                            target:(id)target
                            action:(SEL)action;

/*******************************************************************************
 * 方法名称：initNavBarLeftNil
 * 功能描述：将导航栏左侧按钮置空
 * 输入参数：
 * 输出参数：
 ******************************************************************************/
- (void)initNavBarLeftNil;

/*******************************************************************************
 * 方法名称：initNavBarRightBtnWithNormalImage:highlightedImage:target:action:
 * 功能描述：初始化右侧按钮
 * 输入参数：
 normalImage:常态下的图片
 highlightedImage:选中状态下的图片
 target:事件相应者
 action:响应函数
 * 输出参数：
 ******************************************************************************/
- (void)initNavBarRightBtnWithNormalImage:(NSString *)normalImage
                         highlightedImage:(NSString *)highlightedImage
                                   target:(id)target
                                   action:(SEL)action;

/*******************************************************************************
 * 方法名称：initNavBarRightBtnWithTitle:normalImage:highlightedImage:target:action:
 * 功能描述：初始化右侧按钮(带标题的)
 * 输入参数：
 title:标题
 normalImage:常态下的图片
 highlightedImage:选中状态下的图片
 target:事件相应者
 action:响应函数
 * 输出参数：
 ******************************************************************************/
- (void)initNavBarRightBtnWithTitle:(NSString *)title
                        normalImage:(NSString *)normalImage
                   highlightedImage:(NSString *)highlightedImage
                             target:(id)target
                             action:(SEL)action;

/*******************************************************************************
 * 方法名称：initNavBarRightNil
 * 功能描述：将导航栏右侧按钮置空
 * 输入参数：
 * 输出参数：
 ******************************************************************************/
- (void)initNavBarRightNil;


/*******************************************************************************
 * 方法名称：MBHudViewShowWithTitle:
 * 功能描述：显示等待视图
 * 输入参数：
 title:提示文字，若为nil则为无文字类型
 * 输出参数：
 ******************************************************************************/
- (void)MBHudViewShowWithTitle:(NSString *)title;
- (void)MBHudViewDisNavShowWithTitle:(NSString *)title ;

/*******************************************************************************
 * 方法名称：hideHUDView
 * 功能描述：隐藏等待视图
 * 输入参数：
 * 输出参数：
 ******************************************************************************/
- (void)hideHUDView;

/*******************************************************************************
 * 方法名称：MBHudShowTextOnly:
 * 功能描述：显示字符串提示，1.5秒后自动隐藏
 * 输入参数：
 string:提示文字
 * 输出参数：
 ******************************************************************************/
- (void)MBHudShowTextOnly:(NSString *)string;

/*******************************************************************************
 * 方法名称：isExistInWeekday
 * 功能描述：判断指定时间是否为一周内的时间
 * 输入参数：
    date:指定时间
 * 输出参数：YES/NO
 ******************************************************************************/
- (BOOL)isExistInWeekday:(NSString *)date;

@end
