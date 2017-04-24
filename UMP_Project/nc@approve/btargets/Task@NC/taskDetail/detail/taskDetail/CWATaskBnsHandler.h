/*!
 @header CWATaskHandler.h
 @abstract 实现任务的网络请求
 @author dequan
 @copyright ufida
 @version 1.00 2012/05/26 Creation 
 */

#import <Foundation/Foundation.h>
#import "WATaskAcListRequestVO.h"
#import "WAHTTPRequestHandler.h"
#import "WALinkManRequestVO.h"
#import "WATaskAcRequestVO.h"
#import "WATaskBillRequestVO.h"
#import "WACommonInfoVO.h"
#import "WATaskHistoryRequestVO.h"
#import "WATaskAttachmentRequestVO.h"


@protocol MWATaskBnsHandlerDelegate;

@interface CWATaskBnsHandler : NSObject<MWAHTTPNotify>
/*!
 @property
 @abstract 代理
 */
@property (nonatomic, assign) id <MWATaskBnsHandlerDelegate> iDelegate;


/*!
 @method
 @abstract 发送任务审批消息
 @discussion 发送任务审批消息
 @param aRequestVO要传递的vo对象
 @param aTaskType要审批的任务类型
 @param aServiceCode 服务器编码
 @result 返回void
 */
- (void)sendTaskApprovalMsg:(CWATaskAcRequestVO *)aRequestVO 
               withTaskType:(NSString *)aTaskType
            withServiceCode:(NSString *)aServiceCode;

/*!
 @method
 @abstract 发送任务详情信息
 @discussion 发送任务详情信息
 @param aRequestArray要发送的array
 @result 返回void
 */
- (void)sendTaskBillMsg:(NSArray *)aRequestArray withServiceCode:(NSString *)aServiceCode;

/*!
 @method
 @abstract 发送查询审批历史
 @discussion 发送查询审批历史
 @param aRequestVO要传递的vo对象
 @param aServiceCode 服务器编码
 @result 返回void
 */
- (void)sendGetApprovedDetail:(CWATaskHistoryRequestVO *)aRequestVO 
              withServiceCode:(NSString *)aServiceCode;

@end

/*!
 @protocol
 @abstract 这个CWATaskHandler类的一个protocol
 @discussion 实现数据返回
 */
@protocol MWATaskBnsHandlerDelegate <NSObject>
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
- (void)requestFail;

/*!
 @method
 @abstract  多actiontype请求返回数据
 @discussion 多actiontype请求返回数据
 @result void
 */
- (void)requestOfOneComponentMultiActionsResponesVOs:(NSArray*)vosArray;

/*!
 @method
 @abstract  返回数据失败
 @discussion 返回数据失败
 @param theError错误的内容
 @result void
 */
- (void)failedRequestWithError:(NSError*)theError;

@end