/*!
 @header CWAActionBnsHanlder.h
 @abstract 动作请求的vo
 @author dequan
 @copyright ufida
 @version 1.00 2012/07/21 Creation 
 */

#import <Foundation/Foundation.h>
#import "WABaseVO.h"
#import "WAResponseMsg.h"
#import "WAHTTPRequestHandler.h"
#import "WASearchConditionRequestVO.h"
#import "WALinkManRequestVO.h"

@protocol MWASearchListHanlderDelegate;

@interface CWAActionBnsHanlder : NSObject<MWAHTTPNotify>
/*!
 @property
 @abstract 代理
 */
@property (nonatomic, assign) id <MWASearchListHanlderDelegate> iDelegate;

/*!
 @method
 @abstract  开始搜索条件的消息发送
 @discussion 
 @param aRequestVO 要请求的vo数据
 @result 
 */
- (void)sendSearchListConditionMsg:(CWASearchConditionRequestVO *)aRequestVO 
                    WithComponetID:(NSString *)aComponetID
                   WithServiceCode:(NSString *)aServiceCode;

/*!
 @method
 @abstract 发送获得人员列表信息
 @discussion 发送获得人员列表信息
 @param aRequestVO要传递的vo对象
 @param aActionType要发送信息的动作类型
 @param aServiceCode 服务器编码
 @result 返回void
 */
- (void)sendGetUserListMsg:(CWALinkManRequestVO *)aRequestVO 
            withActionType:(NSString *)aActionType
           withServiceCode:(NSString *)aServiceCode;

@end


/*!
 @protocol
 @abstract 这个CWATaskHandler类的一个protocol
 @discussion 实现数据返回
 */
@protocol MWASearchListHanlderDelegate <NSObject>
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

