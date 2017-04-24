
/*!
 @header WARequestConfigVO.h  CWAHTTP初始化配置vo
 @abstract 
 @author Created by sunset
 @version Copyright (c) 2012 __wa__. All rights reserved.1.00 13-10-24 Creation
 */
#import "WABaseVO.h"
#import "WAHTTPDef.h"

@interface CWAHTTPRequestConfigVO : CWABaseVO
/*!
 @property
 @abstract 请求url
 */
@property (nonatomic,retain) NSString *iUrl;
/*!
 @property
 @abstract 是否设置超时
 */
@property (nonatomic,assign) BOOL iTimeOut;
/*!
 @property
 @abstract POST/GET请求
 */
@property (nonatomic,assign) int iHttpReqType;
/*!
 @property
 @abstract 是否重发宋
 */
@property (nonatomic,assign) BOOL isResend;
/*!
 @property
 @abstract 重发送次数
 */
@property (nonatomic,assign) int iReSendTimes;
/*!
 @property
 @abstract 超时时间
 */
@property (nonatomic,assign) double iTimeOutTime;
/*!
 @property
 @abstract 是否加密
 */
@property (nonatomic,assign) BOOL isEncrypt;
/*!
 @property
 @abstract 加密方式
 */
@property (nonatomic,assign) int iEncryptType;
/*!
 @property
 @abstract 数据传输协议(JSON/XML等)
 */
@property (nonatomic,assign) int iTranType;
/*!
 @property
 @abstract 数据传输协议的版本
 */
@property (nonatomic,retain) NSString *iTransVersion;
/*!
 @property
 @abstract 是否压缩
 */
@property (nonatomic,assign) BOOL isCompress;
/*!
 @property
 @abstract 压缩方式
 */
@property (nonatomic,assign) int iCompressType;
/*!
 @property
 @abstract 压缩加密次序
 */
@property (nonatomic,assign) int iCompressAndEncryptOrder;
/*!
 @property
 @abstract 是否异步请求
 */
@property (nonatomic,assign) BOOL iASynchronous;
/*!
 @property
 @abstract 请求参数string
 */
@property (nonatomic,assign) NSString *iReqString;
/*!
 @property
 @abstract 请求参数vo
 */
@property (nonatomic,retain) CWABaseVO *iReqParamVO;
@end
