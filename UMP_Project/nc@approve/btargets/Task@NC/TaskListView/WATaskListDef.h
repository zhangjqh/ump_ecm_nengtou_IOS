/*!
 @header WATaskListDef.h
 @abstract 消息列表头文件
 @author huych 
 @copyright ufida
 @version 1.00 2012/04/26 Creation 
 */
#ifndef TaskListTest_TaskListDef_h
#define TaskListTest_TaskListDef_h

//导航栏标题 
#define TASKLIST_MAINTITLE  NSLocalizedStringFromTable(@"ishandled", @"btarget_task", nil)

//导航栏副标题 
#define TASKLIST_SUBTITLE  NSLocalizedStringFromTable(@"submmit", @"btarget_task", nil)

//导航栏背景图片
#define NAV_BD_IMAGE  @"nav.png"
#define NAV_BD_IMAGE_IOS7  @"nav.png"

//我的待办未处理按钮tag
#define TODOLIST_UNDEALLBTN_TAG 101

//我的待办已处理按钮tag
#define TODOLIST_DEALLEDBTN_TAG 102

//我的提交未处理按钮tag
#define SUBMIT_UNDEALLBTN_TAG 103

//我的提交正在处理按钮tag
#define SUBMIT_DEALLINGBTN_TAG 104

//我的提交已处理按钮tag
#define SUBMIT_DEALLEDBTN_TAG 105

#import "WABaseVO.h"
#import "WAResponseMsg.h"

/*!
 @protocol
 @abstract 这个CWATaskHandler类的一个protocol
 @discussion 实现数据返回
 */
@protocol MWATaskHandlerDelegate <NSObject>
@optional
/*!
 @method
 @abstract  请求返回数据
 @discussion 请求返回数据
 @param aBaseVO 请求的数据
 @param aMsgVO请求成功的标示
 @result void
 */
- (void)requestReturnWithResponseVO:(CWABaseVO *)aBaseVO andMsgVO:(CWAResponseMsg *)aMsgVO;

/*!
 @method
 @abstract  请求数据失败
 @discussion 请求数据失败
 @result void
 */
- (void)requestFail:(NSError*)theError;

/*!
 @method
 @abstract  多actiontype请求返回数据
 @discussion 多actiontype请求返回数据
 @result void
 */
- (void)requestOfOneComponentMultiActionsResponesVOs:(NSArray*)vosArray;

@end

#endif
