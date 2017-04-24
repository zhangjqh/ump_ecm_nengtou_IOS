/*!
 @header CWATaskDetailViewVO.h
 @abstract 为消息详情界面的vo
 @author dequan
 @copyright ufida
 @version 1.00 2012/05/26 Creation 
 */

#import <Foundation/Foundation.h>
#import "WABaseVO.h"

@interface CWATaskDetailViewVO: CWABaseVO
{
  //是否有表体
  BOOL iIsHaveTableBody;
  //是否有附件
  BOOL iIsHaveAttachment;
  //表体行数
  NSInteger iTableBodyRow;
  //账单头信息
  NSMutableArray *iTaskBillHeaderArray;
  //账单body信息
  NSMutableArray *iTaskBillBodyArray;
  //账单附件信息
  NSMutableArray *iTaskBillAttachment;
  //动作列表信息
  NSMutableArray *iTaskActionArray;
  //表的style
  NSInteger iStyle;
  //任务标题
  NSString *iTaskTitle;
  //用来初始化viewvo的数据源
  NSDictionary *iToInitDataDic;
  //任务表体的总行数
  NSString *iTaskBillBodyCount;
  //任务动作列表的hint
  NSString *iTaskAcListHint;
  
  NSString *iTaskID;
  NSString *iServiceCode;
  
  
  
  //html文件支持
  NSString *iHtmlname;
  NSString *iHtmlfile;
  NSString *iResoucedir;
  NSArray *iResourcelist;
}


@property (nonatomic,copy)NSString *iHtmlname;
@property (nonatomic,copy)NSString *iHtmlfile;
@property (nonatomic,copy)NSString *iResoucedir;
@property (nonatomic,retain) NSArray *iResourcelist;
/*!
 @property
 @abstract 任务表体行数
 */
@property (nonatomic, readonly) NSString *iTaskBillBodyCount;
/*!
 @property
 @abstract 任务动作列表信息
 */
@property (nonatomic, readonly) NSString *iTaskAcListHint;
/*!
 @property
 @abstract 任务标题
 */
@property (nonatomic, readonly) NSString *iTaskTitle;

/*!
 *	@property
 *	@abstract	iTaskID	任务id
 */
@property (nonatomic, copy) NSString *iTaskID;

/*!
 *	@property
 *	@abstract	iServiceCode	服务器编码
 */
@property (nonatomic, copy) NSString *iServiceCode;


/*!
 @property
 @abstract 动作列表信息
 */
@property (nonatomic, readonly)  NSMutableArray *iTaskActionArray;
/*!
 @property
 @abstract 表的style
 */
@property (nonatomic, assign) NSInteger iStyle;
/*!
 @property
 @abstract 是否有表体
 */
@property (nonatomic, assign) BOOL iIsHaveTableBody;
/*!
 @property
 @abstract 是否有附件
 */
@property (nonatomic, assign) BOOL iIsHaveAttachment;
/*!
 @property
 @abstract 表体行数
 */
@property (nonatomic, assign) NSInteger iTableBodyRow;
/*!
 @property
 @abstract 账单表头信息
 */
@property (nonatomic, readonly) NSArray *iTaskBillHeaderArray;
/*!
 @property
 @abstract 账单表体信息
 */
@property (nonatomic, readonly) NSArray *iTaskBillBodyArray;
/*!
 @property
 @abstract 账单附件信息
 */
@property (nonatomic, readonly) NSArray *iTaskBillAttachment;


/*!
 @method
 @abstract 初始化方法
 @discussion 初始化返回数据
 @param aDic一个用于初始化对象的字典
 @result 返回一个CWAFeedViewVO的对象
 */
- (id)initWithDic:(NSDictionary *)aDic;

/*!
 @method
 @abstract 初始化成员变量
 @discussion 
 @result 
 */
- (void)initMemberVariables;

@end
