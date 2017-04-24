/*!
 @header CWALinkManController.h
 @abstract 联系人界面action控制类
 @author dequan
 @copyright ufida
 @version 1.00 2012/05/22 Creation 
 */

#import <Foundation/Foundation.h>
#import "WALinkManRequestVO.h"
#import "CWATaskBnsHandler.h"
#import "WAActionBnsHanlder.h"
#import "WAActionBnsSearchHanlder.h"
//历史查询条件
#define WA_HISTORY_SRARCH_CONDITION_KEY @"HistorySearchCondition"  

@protocol MWALinkManControllerDelegate;

/*!
 @class
 @abstract 联系人界面的controller类
 */
@interface CWALinkManController : NSObject<UISearchBarDelegate,MWASearchListHanlderDelegate>
{
  //收索框
  IBOutlet UISearchBar *iSearchBar;
  //代理
  id <MWALinkManControllerDelegate>iDelegate;
  //任务动作网络下载类
  CWAActionBnsHanlder *iTaskActionHanlder;
  //任务动作网络下载类
  CWAActionBnsSearchHanlder *iSearchTaskActionHanlder;
  //当前请求的页数
  NSInteger iRequestPage;
  //任务id
  NSString *iTaskId;
  //获取列表的actiontype
  NSString *iLinkManRequestType;
  //任务动作标示
  NSInteger iFlag;
  
  NSString * iServiceCode;
}

/*!
 @property 
 @abstract  任务动作标示
 */
@property (nonatomic, assign) NSInteger iFlag;
/*!
 @property
 @abstract 请求的页数
 */
@property (nonatomic, assign) NSInteger iRequestPage;

/*!
 @property
 @abstract 代理
 */
@property (nonatomic, retain) id <MWALinkManControllerDelegate>iDelegate;

/*!
 *	@property
 *	@abstract	 iServiceCode	服务器编码
 */
@property (nonatomic, copy) NSString * iServiceCode;;


/*!
 @method
 @abstract 设置界面的ui元素和加载本地数据
 @discussion 设置界面的ui元素和加载本地数据
 @result void
 */
- (void)setElementAndLocal;

/*!
 @method
 @abstract 发送请求任务动作联系人消息
 @discussion 发送请求任务动作联系人消息
 @param aCondition获取人员列表的查询条件
 @result void
 */
- (void)sendTaskActionLinkManMsgWithCondition:(NSString *)aCondition;
- (void)sendTaskActionLinkManMsgWithCondition:(NSString *)aCondition withTag:(NSString*)tag;
/*!
 @method
 @abstract 开始搜索条件请求
 @discussion 
 @result void
 */
- (void)startSearchConditionRequestWithComponetID:(NSString *)aComponetID;

/*!
 @method
 @abstract 设置actiontype的值和taskid的值
 @discussion 返回去上一个视图 
 @param aActionType 获得人员列表的请求aciotntype
 @param aTaskId任务标示
 @result void
 */
- (void)setRequestLinkManActionType:(NSString *)aActionType andTaskID:(NSString *)aTaskId;
- (NSMutableArray*)getHistoryArray;

@end


/*!
 @protocol
 @abstract 这个CWALinkManController类的一个protocol
 @discussion 实现数据请求的成功与失败
 */
@protocol MWALinkManControllerDelegate <NSObject>

/*!
 @method
 @abstract 
 @discussion 请求联系人数据成功放回
 @param aActionLinkArray 请求数据成功放回数据
 @result 
 */
- (void)requestReturnWithResponseVO:(CWABaseVO *)aBaseVO andMsgVO:(CWAResponseMsg *)aMsgVO;

/*!
 @method
 @abstract 请求数据失败
 @discussion 请求数据失败
 @result 
 */

- (void)requestReturnWithResponseVO:(CWABaseVO *)aBaseVO andMsgVO:(CWAResponseMsg *)aMsgVO withTag:(NSString *)tag;
- (void)requestFail;


- (void)showHistoryList;

- (void)hidenHistoryList;
@end