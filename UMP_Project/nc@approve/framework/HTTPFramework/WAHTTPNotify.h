/*!
 @header CWAHTTPRequestHandler.h 
 @abstract HTTP Handler
 @author Created by sunset.z 
 @version Copyright (c) 2012 __wa__. All rights reserved.1.00 on 12-3-29 Creation 
 */
#import <Foundation/Foundation.h>
#import "WAResponseMsg.h"
#import "WABaseVO.h"
@class CWAHTTP;
/*!
 @protocol
 @abstract CWAHTTPRequest代理
 @discussion 对请求的代理，包括请求开始，请求结束，请求失败，上传下载进度捕获等事件的通知
 */
@protocol MWAHTTPNotify <NSObject>

@optional
# pragma mark 常用、通用代理
/*!
 @method 
 @abstract 请求开始
 @discussion 异步可用 请求开始时，此方法被调用
 @param aRequest 请求 
 @result 
 */
- (void)requestStarted;
/*!
 @method 
 @abstract 请求结束
 @discussion 异步可用 请求结束时，此方法被调用
 @param aRequest 请求 
 @result 
 */
- (void)requestFinishedWithResponseString:(NSString*)aString;
/*!
 @method 
 @abstract 请求结束
 @discussion 异步可用 请求结束时，此方法被调用
 @param aBaseVO 返回值业务信息在属性voDictionary中 
 @param aMsgVO 返回值描述信息 flag,desc,serviceCode属性
 @result 
 */
- (void)requestFinishedWithResponseVO:(CWABaseVO*)aBaseVO andMsgVO:(CWAResponseMsg*)aMsgVO;

/*!
 @method 多component返回值通知类（目前为止只允许登陆使用）
 @abstract 请求结束 
 @discussion 异步可用 请求结束时，此方法被调用
 @param aBaseVOs 多components请求返回值 数组 每个vo一个component的返回值 按照返回的顺序解析
 @result 
 */
- (void)requestFinishedWithLoginResponseVOs:(NSArray*)voArray;

/*!
 @method 预登陆连接请求返回值的通知
 @abstract 请求完成后 将wa server给的返回结果（都来自于header信息）分发出去
 @discussion 
 @param aDictionary 返回头信息中与预备连接有关的结果
 @result 
 */
- (void)requestFInishedWithPreConnectionResponse:(NSDictionary *)aDictionary;

/*!
 @method 获取当前app访问得帐套类型
 @abstract 如果app本地无法确定app是否u8多帐套，需要在预登陆时与服务器通信获取帐套类型结果（从header中返回），
           本方法为非预登陆阶段，再次向服务器获取帐套类型，如果获取成功http自动将帐套类型放入CWACommonInfoVO中
           并且返回成功 
 @discussion 
 @param anAccoutsType 帐套类型
 @param aBoolValue  http是否已经将帐套类型映射到CWACommonInfoVO中
        1为是，2为否
 @result  
 */
- (void)requestFinishedWithGetAccountsType: (NSNumber *)anAccoutsType
                      isCachedInCommonInfo: (NSString *)aBoolValue;
                                
/*!
 @method 
 @abstract 单component多actiontypes返回值通知
 @discussion 异步可用 请求结束时，此方法被调用
 @param vosArray 每一个vo代表一个actiontype的返回值 
        其中voDicitonary属性包含如下key：
            actiontype:其值对应某个actiontype (NSString)
            flag：该actiontype的成功失败标志 (NSString)
            desc：该actiontype请求的成功失败描述 (NSString)
            servicecode: 对应该actiontype下的servicecode (NSArray)
            每个servicecode是一个key：对应其下的struct
 @result 
 */
- (void)requestOfOneComponentMultiActionsResponesVOs:(NSArray*)vosArray;

/*!
 @method 多component请求返回值结果
 @abstract 请求完成后 将wa server给的返回结果（都来自于header信息）分发出去
 @discussion 
 @param vosArray 一个vo代表一个component的返回结果
 @result 
 */
- (void)requestOfMultiComponentsResponesVOs:(NSArray*)vosArray;


/*!
 @method 
 @abstract 获取返回值头信息
 @discussion 异步可用 返回值头信息抵达时 此方法被调用
 @param aRequest 请求
 @param responseHeaders 返回值头信息
 @result 
 */
- (void)requestDidReceiveResponseHeaders:(NSDictionary *)responseHeaders;
/*!
 @method 
 @abstract 请求失败
 @discussion 异步可用 请求失败时，此方法被调用
 @param aRequest 请求 
 @result 
 */
- (void)failedRequest;
/*!
 @method 
 @abstract 请求失败
 @discussion 异步可用 请求失败时，此方法被调用
 @param theError 错误信息
 @result 
 */
- (void)failedRequestWithError:(NSError*)theError;

/*!
 @method 
 @abstract 完整的发起请求的body信息
 @discussion 异步可用 
 @param aString 信息内容
 @result 
 */
- (void)requestPostBodyString:(NSString *)aString;

#pragma mark session过期代理
/*!
 @method 
 @abstract session 过期通知
 @discussion 异步可用 
 @param theError 错误信息
 @result 
 */
- (void)requestSessionTimeOut:(NSError*)theError;

#pragma mark download progress delegate 下载进度相关代理
/*!
 @method 
 @abstract 下载进度通知
 @discussion 异步可用 
 @param bytes 当前进度字节数
 @result 
 */
- (void)requestDidReceiveBytes:(long long)bytes;



#pragma mark send progress delegate 上传进度相关代理
/*
- (void)request:(CWAHTTP *)aRequest didSendBytes:(long long)bytes;
 */

@end
