/*!
 @header TaskDef.h
 @abstract 消息列表公用头文件
 @author huych 
 @copyright ufida
 @version 1.00 2012/04/26 Creation 
 */
#ifndef TaskListTest_TaskDef_h
#define TaskListTest_TaskDef_h

/*!
 @enum
 @abstract 任务状态类型
 @constant ENoDeal 未处理
 @constant EDealing 正在处理
 @constant EDealed 已处理
 */
typedef enum 
{
  ENoDeal = 0,         
  EDealing = 1,           
  EDealed= 2
}TWATaskStatusType;

/*!
 @enum
 @abstract 任务类型
 @constant ESubmit 我的提交
 @constant EToDoList 我的待办
 */
typedef enum 
{
  ESubmit = 0,         
  EIsHandled = 1
}TWATaskType;

//列表刷新通知
#define TASKCENTER_TASKLIST_REFRESH_NOFIFY @"tasklistrefresh"
#define WA_COLLABORATIONTASK_BTARGET @"CollaborationTask"
#define WA_TASKCENTER_ERRORCODE @"0000212"
#define WA_TASKCENTER_COMPONENTID @"A0A007"
#define WA_CTTASKLIST_SECHEIGHT 4.0f
#define WA_CTTASKLIST_FIRSTSECHEIGHT 12.0f
#define WA_CTTASKLIST_FOOTHEIGHT 4.0f
#define WA_CTTASKLIST_LASTFOOTHEIGHT 8.0f
#define WA_CTSTRING_EMPTY @""

#pragma mark- 公共图片
//navigation的背景图片
static NSString* const WA_TASK_NAV_BG = @"toolbar_nc.png";

static NSString* const WA_NEW_TASK_NAV_BG = @"nav.png";
//新增按钮
static NSString* const WA_TASK_NAV_NEW_BG = @"nav_ic_new_norm.png";
//返回按钮
static NSString* const WA_TASK_NAV_BACK_BG = @"nav_ic_bk_norm.png";
//更多按钮
static NSString* const WA_TASK_NAV_MORE_BG = @"nav_ic_more_norm.png";

//常用字体
#define WA_TASK_FONT_KAKU_W3_16 [UIFont fontWithName:@"HiraKakuProN-W3" size:16.0]
#define WA_TASK_FONT_KAKU_W3_14 [UIFont fontWithName:@"HiraKakuProN-W3" size:14.0]
#define WA_TASK_FONT_KAKU_W3_12 [UIFont fontWithName:@"HiraKakuProN-W3" size:12.0]

#define WA_TASK_FONT_HT_W3_16 [UIFont fontWithName:@"STHeitiSC-Medium" size:16.0]
#define WA_TASK_FONT_HT_W3_14 [UIFont fontWithName:@"STHeitiSC-Medium" size:14.0]
#define WA_TASK_FONT_HT_W3_12 [UIFont fontWithName:@"STHeitiSC-Medium" size:12.0]
#define WA_TASK_FONT_HT_W3_10 [UIFont fontWithName:@"STHeitiSC-Medium" size:10.0]

//常用颜色
//CELL背景色
#define WA_TASK_COLOR_253 [UIColor colorWithRed:253.0/255.0 green:253.0/255.0 blue:253.0/255.0 alpha:1.0]
//列表背景色，及CELL选中行的颜色
#define WA_TASK_COLOR_240 [UIColor colorWithRed:240.0/255.0 green:240.0/255.0 blue:240.0/255.0 alpha:1.0]
//列表分割线颜色separator
#define WA_TASK_COLOR_223 [UIColor colorWithRed:223.0/255.0 green:223.0/255.0 blue:223.0/255.0 alpha:1.0]
#define WA_TASK_COLOR_31 [UIColor colorWithRed:31.0/255.0 green:31.0/255.0 blue:31.0/255.0 alpha:1.0]
#define WA_TASK_COLOR_104 [UIColor colorWithRed:104.0/255.0 green:104.0/255.0 blue:104.0/255.0 alpha:1.0]
#define WA_TASK_COLOR_143 [UIColor colorWithRed:143.0/255.0 green:143.0/255.0 blue:143.0/255.0 alpha:1.0]
#define WA_TASK_COLOR_104_143_223 [UIColor colorWithRed:229.0f/255.0f green:0.0f/255.0f blue:17.0f/255.0f alpha:1]
#define WA_TASK_COLOR_176 [UIColor colorWithRed:176.0/255.0 green:176.0/255.0 blue:176.0/255.0 alpha:1.0]
#define WA_TASK_COLOR_176_208_255 [UIColor colorWithRed:176.0/255.0 green:208.0/255.0 blue:255.0/255.0 alpha:1.0]
#define WA_TASK_COLOR_101_165_255 [UIColor colorWithRed:101.0/255.0 green:165.0/255.0 blue:255.0/255.0 alpha:1.0]
#endif
