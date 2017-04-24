/*!
 @header WATaskListBnsHandler.h
 @abstract 任务中心业务处理类
 @author huych 
 @copyright ufida
 @version 1.00 2012/06/23 Creation 
 */

#import <Foundation/Foundation.h>
#import "WATaskListVoArray.h"
#import "WATaskListVO.h"
#import "WATaskListDef.h"
#import "WAHTTPRequestHandler.h"
#import "WATaskListDef.h"
#import "TaskDef.h"
#import "WAButtonVOArray.h"
#import "WATimeUtil.h"

//新增的流程信息
static NSString *const TASK_TASKLIST_HUMACTNAME = @"humactname";

//获取消息列表接口，返回数据状态key
static NSString *const TASK_TASKLIST_KSTATUSKEY = @"statuskey";

//获取消息列表接口，返回数据状态code
static NSString *const TASK_TASKLIST_KSTATUSVALUE  = @"statuscode";

//获取按钮列表接口，actiontype
static NSString *const TASK_TASKLIST_KGETBUTTONLIST  = @"getTaskButtonList";

//任务动作列表的key
static NSString *const WA_TASKDETAIL_ACTIONTYPE = @"actionType";

//获取按消息列表接口，actiontype
static NSString *const TASK_TASKLIST_KGETTASKLIST =  @"getTaskList";

//获取消息列表接口，truct
static NSString *const TASK_TASKLIST_KTASKLIST =  @"taskstructlist";

//获取按钮列表接口，truct
static NSString *const TASK_TASKLIST_KBUTTONLIST =  @"taskbuttonlist";

//获取按钮列表接口，按钮状态truct
static NSString *const TASK_TASKLIST_KBUTTONSTATUSSTRUCT =  @"statusstruct";

//获取按钮列表接口，返回数据状态key
static NSString *const TASK_TASKLIST_KBUTTONSTATUSSKEY =  @"statuskey";

//消息、按钮返回数据的servicecodes
static NSString *const TASK_TASKLIST_KSERVICECODES =  @"servicecodes";

//消息、按钮返回数据的servicecode
static NSString *const TASK_TASKLIST_KSERVICECODE  = @"servicecode";

//消息列表group关键字
static NSString *const TASK_TASKLIST_KGROUP =  @"group";
//消息列表name关键字
static NSString *const TASK_TASKLIST_KNAME  = @"name";

//具体消息的taskstruct关键字
static NSString *const TASK_TASKLIST_KTASK  = @"taskstruct";

//具体消息的statuscode关键字
static NSString *const TASK_TASKLIST_KSTATUSCODE  = @"statuscode";

//具体消息的statusname关键字
static NSString *const TASK_TASKLIST_KSTATUSNAME  = @"statusname";

//具体消息的date关键字
static NSString *const TASK_TASKLIST_KDATE =  @"date";

//具体消息的taskid关键字
static NSString *const TASK_TASKLIST_KID  = @"taskid";

//具体消息的title关键字
static NSString *const TASK_TASKLIST_KTITLE =  @"title";

static NSString *const TASK_TASKLIST_KISHANDLED = @"ishandled" ;//我的待办
static NSString *const TASK_TASKLIST_KSUBMIT =  @"submit" ;//我的提交

@interface CWATaskListBnsHandler : NSObject<MWAHTTPNotify>

/*!
 @property
 @abstract iDelegate 任务业务处理类委托，用于处理网络请求
 */
@property (nonatomic,retain)id <MWATaskHandlerDelegate> iDelegate;

/*!
 @method
 @abstract 将获取的数据转化为界面VO数据
 @discussion  
 @param aRequsetDic 获取到的数据
 @param isSingle 是否单独请求
 */
+ (CWATaskListVoArray *)getTaskListWithRequsetDic:(NSDictionary *)aRequsetDic 
                                    withMsgVO:(CWAResponseMsg *)aMsgVO
                                 withIsSingle:(BOOL)isSingle;

/*!
 *	@method
 *	@abstract	将获取的数据转化为界面按钮组VO数据
 *	@discussion	
 *	@param 	aRequsetDic 	获取到的数据
 *	@param 	aMsgVO 	相应消息
 *	@param 	isSingle 	是否单独请求，还是组合请求（如多actiontype）
 *	@result	以servercecode为key的字典
 */
+ (NSMutableDictionary *)getButtonListWithRequsetDic:(NSDictionary *)aRequsetDic
                                    withMsgVO:(CWAResponseMsg *)aMsgVO
                                 withIsSingle:(BOOL)isSingle;

/*!
 @method
 @abstract 根据任务状态和任务状态标识组织请求数据
 @discussion  
 @param aStatus 任务状态
 @param aTaskType 任务状态标识
 @result  请求数据,不需要释放，owned
 */
+ (NSDictionary *)getStatusDicWithStatus:(TWATaskStatusType)aStatus
                            withTaskType:(TWATaskType)aTaskType;

/*!
 @method
 @abstract 根据任务状态字符和任务状态标识组织请求数据
 @discussion  
 @param aStatus 任务状态字符
 @param aTaskType 任务状态标识
 @result  请求数据,不需要释放，owned
 */
+ (NSDictionary *)getStatusDicWithStrStatus:(NSString *)aStatus
                               withTaskType:(TWATaskType)aTaskType;

/*!
 @method
 @abstract 发起网络请求，获取数据
 @discussion  
 @param aDate 时间
 @param startline 起始条数
 @param aCount 条数
 @param aStatus 状态
 @param aTaskType 任务类型：我的提交或我的待办
 */
- (void)requestWithDate:(NSString *)aDate 
                         andStartline:(NSString *)startline 
                             andCount:(NSString *)aCount
                            andStatus:(TWATaskStatusType)aStatus
                          andTaskType:(TWATaskType)aTaskType;

/*!
 @method
 @abstract 发起网络请求，获取数据
 @discussion  
 @param aDate 时间
 @param startline 起始条数
 @param aCount 条数
 @param aStatus 状态
 @param aTaskType 任务类型：我的提交或我的待办
 */
- (void)requestWithStatus:(NSString *)aStatus
           andStartline:(NSString *)startline 
               andCount:(NSString *)aCount
              andDate:(NSString *)aDate
            andTaskType:(TWATaskType)aTaskType;

/*!
 *	@method
 *	@abstract	获取数据和按钮
 *	@discussion	
 *	@param 	aDate 	日期
 *	@param 	aCount 	取的条数
 *	@param 	aTaskType 	任务类型
 */
- (void)requestDataAndButtonsWithDate:(NSString *)aDate
                             andCount:(NSString *)aCount
                          andTaskType:(TWATaskType)aTaskType;


@end
