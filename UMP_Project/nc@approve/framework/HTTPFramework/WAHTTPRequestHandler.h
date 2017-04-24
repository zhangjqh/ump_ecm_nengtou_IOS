
/*!
 @header CWAHTTPRequestHandler.h
 @abstract HTTP Handler
 @author Created by sunset
 @version Copyright (c) 2012 __wa__. All rights reserved.1.00 on 12-3-29
 */

#import <Foundation/Foundation.h>
#import "WAHTTPNotify.h"
#import "WABaseVO.h"
#import "WAHTTPDef.h"
#import "WAHTTP.h"
#import "WABnsDesVO.h"
#import "WAHTTPRequestConfigVO.h"


/*!
 @class
 @abstract HTTP Handler：request的组装和调用以及相应的事件分配
 @discussion 代理ASIProgressDelegate,ASIHTTPRequestDelegate
 */
@interface CWAHTTPRequestHandler : NSObject<ASIProgressDelegate,ASIHTTPRequestDelegate>
{
    NSData *iResponsedata;
    NSString *iSession_id;
    NSString *iHttpUrl;
    NSString *iCurrentServerlet;
    BOOL iCancelLastRequest;
}
/*!
 @property
 @abstract HTTP HANDLER通知protocol
 @discussion HTTP请求通知器，用于http请求状态的通知（开始、结束、中断、下载&上传进度、错误信息）
 */
@property (assign) id<MWAHTTPNotify> delegate;

/*!
 @property 是否取消当前请求
 @abstract
 */
@property BOOL iCancelLastRequest;
/*!
 @property 返回值
 @abstract
 */
@property (readonly,retain) NSData *iResponsedata;
/*!
 @property session_id
 @abstract
 */
@property (readonly,copy) NSString *iSession_id;
/*!
 @property 请求url（已配置的）
 @abstract
 */
@property (copy) NSString *iHttpUrl;
/*!
 @property 当前请求servlet
 @abstract
 */
@property (copy) NSString *iCurrentServerlet;

# pragma mark 获取单例
/*!
 @method
 @abstract 获取http handler
 @discussion
 @result
 */
+(id) sharedManager;

/*!
 @method
 @abstract 获取http handler
 @discussion 加载本地的HTTP请求配置信息
 @result
 */
+(id) sharedManagerWithLocalFile;

/*!
 @method
 @abstract 获取http handler
 @discussion 通过Dictionary整体加载HTTP请求配置信息
 @result
 */
+(id) sharedManagerWithConfigDictionary:(NSDictionary *) aDict;

# pragma mark 获取Http Handler的实例
/*!
 @method
 @abstract 获取http handler
 @discussion
 @param aDelegate 请求代理
 @result Http Handler的实例
 */
-(id)initHttpHandlerWithDelegate:(id<MWAHTTPNotify>)aDelegate;

# pragma mark 判断网络是否可用
/*!
 @method
 @abstract 判断当前网络是否不可用
 @discussion
 @result BOOL
 */
-(BOOL) isNewWorkNotAvailable;



# pragma mark 发送post请求
/*!
 @method
 @abstract 发起post请求 (单component单actiontype)
 @discussion 自动封装请求，设置代理，触发请求
 @param aBaseVO 业务vo数据 (voDictionary 属性中包含了需要用于拼装到请求上的业务数据KV)
 @param aDelegate 请求通知（用来接收请求进度通知）
 @param aMehtod 请求方式（普通请求，上传，下载 详情对应WAHTTPDef.h中的 HTTP_METHOD 枚举）
 @param aBnsDesVO 请求描述vo 用来描述componentid 和 actiontype信息
 @result
 */
-(void) firePostRequestWithBodyData:(CWABaseVO*)aBaseVO
                           delegate:(id<MWAHTTPNotify>)aDelegate
                             mehtod:(NSInteger)aMethod
                              bnsVO:(id)aBnsDesVO;
/*!
 @method
 @abstract 发起post请求 (单component多actiontype)
 @discussion 自动封装请求，设置代理，触发请求
 @param aBaseVOs 一组请求vo数组
 每个vo对应一个actiontype
 (vo中的voDictionary 属性中包含了需要用于拼装到请求上的业务数据KV)
 @param aDelegate 请求通知（用来接收请求进度通知）
 @param aMehtod 请求方式（普通请求，上传，下载 详情对应WAHTTPDef.h中的 HTTP_METHOD 枚举）
 @param aBnsDesVO 请求描述vo 用来描述componentid 和 actiontype信息
 @result
 */
-(void) firePostRequestWithMAOCBodyData:(NSArray*)aBaseVOs
                               delegate:(id<MWAHTTPNotify>)aDelegate
                                 mehtod:(NSInteger)aMethod
                                  bnsVO:(id)aBnsDesVO;


/*!
 @method
 @abstract 发起post请求 (多component)
 @discussion 自动封装请求，设置代理，触发请求
 @param voData 多component请求数据Dictionary
 (voData第一级key为Componentid,value为该component的请求数据（形式为Dictionary）
 每个component对应的请求数据Dictionary的key为以该component中的actiontype,actiontype key对应的value为一个CWABaseVO对象，该对象中的voDictionary属性对应着该actiontype的请求业务数据KV)
 @param aDelegate 请求通知（用来接收请求进度通知）
 @param aMehtod 请求方式（普通请求，上传，下载 详情对应WAHTTPDef.h中的 HTTP_METHOD 枚举）
 @param aBnsDesVO 请求描述vo 用来描述componentid 和 actiontype信息
 @result
 */
-(void) firePostRequestMutliComponentVOData:(NSDictionary *)voData
                                   delegate:(id<MWAHTTPNotify>)aDelegate
                                     mehtod:(NSInteger)aMethod
                                      bnsVO:(NSArray *)aBnsDesVO;


/*!
 @method
 @abstract 发起post请求 (登录)
 @discussion 自动封装请求，设置代理，触发请求
 @param aBaseVOs  (每个vo代表一个component 每个voDictionary 属性中包含了需要用于拼装到请求上的参数    KV)
 @param aDelegate 请求通知（用来接收请求进度通知）
 @param aBnsDesVOs 请求描述vo 用来描述componentid 和 actiontype信息 每个vo代表一个component
 @result
 */
-(void) firePostLoginRequestWithBodyData:(NSArray *)aBaseVOs
                                delegate:(id <MWAHTTPNotify>)aDelegate
                                   bnsVO:(NSArray *)aBnsDesVOs;

/*!
 @method
 @abstract 发起注销请求
 @discussion 只发起注销请求清空httphandler session id 原则上不处理返回值不发送事件通知
 @param aDelegate 注销事件通知代理
 @result
 */
-(void) firePostLogOutRequestWithBodyData:(NSDictionary *)voData
                                 delegate:(id <MWAHTTPNotify>)aDelegate
                                    bnsVO:(NSArray *)aBnsDesVOs;

/*!
 @method
 @abstract 发起预登陆连接请求
 @discussion 因为预登陆连接信息通过http header与wa 进行交互信息 所以不需要请求参数
 @param aDelegate 预登陆连接通知代理
 @result
 */
-(void) firePreConnectWithDelegate:(id<MWAHTTPNotify>)aDelegate;

/*!
 @method
 @abstract 发起获取登陆帐套请求
 @discussion 因为预登陆连接信息通过http header与wa 进行交互信息 所以不需要请求参数
 @param voData 获取帐套请求参数vo
 @param aDelegate 获取帐套请求通知代理
 @param aBnsDesVOs 获取帐套请求业务描述vo
 @result
 */
-(void) fireGetLoginAccountWithBodyData:(CWABaseVO *)voData
                               delegate:(id <MWAHTTPNotify>)aDelegate
                                  bnsVO:(id)aBnsDesVOs;

/*!
 @method
 @abstract 发起获取当前帐套类型（u8多帐套还是其他）
 @discussion 如果成功获取到帐套类型，会保存到CWACommonInfoVo中，否则会通知出错
 @param aDelegate 获取当前帐套类型请求通知代理
 @result
 */
-(void)fireGetAccountsTypeWithDelegate:(id<MWAHTTPNotify>)aDelegate;

/*!
 @method
 @abstract 发起获取 app 安装包版本更新校验请求
 @discussion 当前的请求由AppDelegate发送
 @param aDelegate 获取当前请求通知代理
 @param aHttpConfigVO 请求配置vo
 @result
 */
-(void)fireAppUpdateRequestWithDelegate:(id<MWAHTTPNotify>)aDelegate
                            andConfigVO:(CWAHTTPRequestConfigVO *)aHttpConfigVO;
# pragma mark 中断请求
/*!
 @method
 @abstract 终止请求取消代理
 @discussion 终止当前的请求 并注销代理
 @result
 */
-(void) clearDelegateAndCancelRequest;

# pragma mark 注册session过期delegate
/*!
 @method
 @abstract 注册session过期delegate
 @discussion
 @result
 */
-(void) registerSessionTimeOutDelegate:(id<MWAHTTPNotify>)aDelegate;

@end
