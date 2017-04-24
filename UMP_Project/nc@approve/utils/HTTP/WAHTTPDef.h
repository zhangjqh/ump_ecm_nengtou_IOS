/*!
 @header WAHTTPDef.h 
 @abstract HTTP 枚举&常量&macro类
 @author Created by sunset.z 
 @version Copyright (c) 2012 __wa__. All rights reserved. 1.00 12-3-29 */

# pragma mark - http configuration 配置信息
  // 请求超时时间 10秒
#define WA_HTTP_TIME_OUT 20.0f
  // 请求超时重试次数
#define WA_HTTP_TIME_OUT_RETRY 0

static NSString* const WA_HTTP_EMPTY =@"";
# pragma mark - http 请求组装用key 
static NSString* const WA_HTTP_ID_kEY =@"id";
static NSString* const WA_HTTP_STRID_KEY = @"@id";
static NSString* const WA_HTTP_VALUE_KEY =@"value";
static NSString* const WA_HTTP_PARAMS_KEY = @"Params";
static NSString* const WA_HTTP_REQPARAMS_KEY = @"reqparams";
static NSString* const WA_HTTP_ACTIONTYPE_KEY = @"actiontype";
static NSString* const WA_HTTP_ACTION_KEY = @"action";
static NSString* const WA_HTTP_ACTIONS_KEY = @"actions";
static NSString* const WA_HTTP_COMPONENTID_KEY = @"componentid";
static NSString* const WA_HTTP_WACOMPONENT_KEY = @"wacomponent";
static NSString* const WA_HTTP_WACOMPONENTS_KEY = @"wacomponents";
static NSString* const WA_HTTP_SESSION_KEY = @"session";

# pragma mark - http返回给各组件的值组装key

static NSString* const WA_HTTP_RTN_ACTIONTYPE_KEY = @"actionType";
static NSString* const WA_HTTP_RTN_SERVICECODE_KEY = @"servicecode";
static NSString* const WA_HTTP_RTN_COMPONENTID_KEY = @"componentid";
static NSString* const WA_HTTP_RTN_SERVICECODES_KEY = @"servicecodes";
static NSString* const WA_HTTP_RTN_USERNAME_KEY = @"username";

static NSString* const WA_HTTP_RTN_GROUPID_KEY = @"groupid";
static NSString* const WA_HTTP_RTN_USRID_KEY = @"usrid";
# pragma mark - servlet
static NSString* const WA_HTTP_WASERVLET_KEY = @"/servlet/oaservlet";
static NSString* const WA_HTTP_WALOGINSERVLET_COMPONENT_KEY = @"/servlet/waloginservlet";
static NSString* const WA_HTTP_WALOGOUTSERVLET_COMPONENT_KEY = @"/servlet/walogoutservlet";
static NSString* const WA_HTTP_WAPRELOGINSERVLET_COMPONENT_KEY = @"/servlet/wapreloginservlet";
static NSString* const WA_HTTP_WAACCOUNTSERVLET_COMPONENT_KEY = @"/servlet/waaccountservlet";
static NSString* const WA_HTTP_WAUNNEEDEDLOGINSERVLET_COMPONENT_KEY = @"/servlet/waunneededloginservlet";


# pragma mark - http 解析用key path

static NSString* const WA_HTTP_COMPONENT =@"wacomponents.wacomponent";
static NSString* const WA_HTTP_COMPONENTID = @"componentid";
static NSString* const WA_HTTP_KP_AC = @"actions.action";
static NSString* const WA_HTTP_SKP_FLGD = @"resresult.flag";
static NSString* const WA_HTTP_SKP_DESD = @"resresult.desc";
static NSString* const WA_HTTP_KP_RSC = @"resresult.servicecodesres.servicecoderes";
static NSString* const WA_HTTP_R_SC = @"servicecode";
static NSString* const WA_HTTP_R_AT = @"actiontype";
static NSString* const WA_HTTP_RD_ST = @"resdata.struct";
static NSString* const WA_HTTP_PRODID = @"productid";
static NSString* const WA_HTTP_KP_ACT = @"wacomponents.wacomponent.actions.action";
static NSString* const WA_HTTP_R_RESULT = @"resresult";
static NSString* const WA_HTTP_KP_RST = @"wacomponents.wacomponent.actions.action.resresult";
static NSString* const WA_HTTP_R_GROUPID_KEY = @"groupid";
static NSString* const WA_HTTP_R_USRID_KEY = @"usrid";
static NSString* const WA_HTTP_R_ATTSIZE_KEY = @"attsize";
static NSString* const WA_HTTP_KP_SC = @"wacomponents.wacomponent.actions.action.resresult.servicecodesres.servicecoderes";

static NSString* const WA_HTTP_KP_SSC =@"servicecodesres.servicecoderes";

static NSString* const WA_HTTP_KP_STRUCT = @"wacomponents.wacomponent.actions.action.resresult.servicecodesres.servicecoderes.resdata.struct";

static NSString* const WA_HTTP_R_FLAG = @"flag";
static NSString* const WA_HTTP_R_DESC = @"desc";
static NSString* const WA_HTTP_R_TYPE = @"type";

#pragma mark - 预登陆解析用字段
static NSString* const WA_HTTP_H_APPUN = @"appunuses";
static NSString* const WA_HTTP_H_APPLV = @"applv";
static NSString* const WA_HTTP_H_APPHV = @"apphv";
static NSString* const WA_HTTP_H_APPUV = @"appupdateversion";
static NSString* const WA_HTTP_H_UPDATEURL = @"updateurl";
static NSString* const WA_HTTP_H_APPVERSION = @"appversion";

static NSString* const WA_HTTP_H_APPUV_C = @"Appupdateversion";
static NSString* const WA_HTTP_H_APPHV_C = @"Apphv";
static NSString* const WA_HTTP_H_APPUN_C = @"Appunuses";
static NSString* const WA_HTTP_H_UPDATEURL_C = @"Updateurl";
static NSString* const WA_HTTP_H_APPVERSION_C = @"Appversion";

#pragma mark - 预备登陆返回给登陆组件的dictionary key
static NSString* const WA_HTTP_PRELOGIN_EPID = @"enterpriseid";
static NSString* const WA_HTTP_PRELOGIN_APPID= @"appid";
static NSString* const WA_HTTP_PRELOGIN_APPHV = @"apphv";
static NSString* const WA_HTTP_PRELOGIN_APPLV = @"applv";

# pragma mark -  http 处理的登陆相关的key
static NSString* const WA_HTTP_LOGIN_DEVICEINFO = @"deviceinfo"; 
static NSString* const WA_HTTP_LOGIN_SERVICELOGININFO = @"servicelogininfo";
static NSString* const WA_HTTP_LOGIN_COMPONENTID = @"WA00001";
static NSString* const WA_HTTP_LOGIN_ACTIONTYPE = @"login";

# pragma mark - wa response header info key
static NSString* const WA_HTTP_WAHEADER_APPSERVER = @"Appserver";
static NSString* const WA_HTTP_WAHEADER_TTNS = @"Ttns";
static NSString* const WA_HTTP_WAHEADER_SESSIONTIMEOUT = @"Sessiontimout";
static NSString* const WA_HTTP_WAHEADER_ACCOUNTTYPE_C  = @"Accounttype";
static NSString* const WA_HTTP_WAHEADER_ACCOUNTTYPE_L  = @"accounttype";


# pragma mark - 通过本地文件初始化http handler 需要的一些信息
  //本地文件名称
static NSString* const WA_HTTP_INIT_F = @"HTTPInitInfo";
  //本地文件类型
static NSString* const WA_HTTP_INIT_TYPE =@"plist";
  // url对应的key
static NSString* const WA_HTTP_D_URL = @"ConnectUrl";

# pragma mark - session 过期 缓存当前请求所需要用的key
static NSString* const WA_HTTP_TK_METHOD = @"method";
static NSString* const WA_HTTP_TK_DATA = @"data";
static NSString* const WA_HTTP_TK_DG = @"delegate";
static NSString* const WA_HTTP_TK_BNS = @"bns";
static NSString* const WA_HTTP_TK_comp =@"comptype";

 
  // error domain
static NSString* const WA_HTTP_E_DOMAIN =@"HTTP_ERROR";
  // error info
static NSString* const WA_HTTP_INFOKEY = @"error_info";
// error code 返回值为nil或“”
static NSString* const WA_HTTP_RTN_NOVALUE_ERROR = @"ERROR:20001";
// error code 返回值为解析exception
static NSString* const WA_HTTP_RTN_STRUCTS_ERROR = @"ERROR:20002";
  //NC 61的版本号
static NSString* const nc61_version = @"1";
 //NC 57的版本号
static NSString* const nc57_version = @"0.7";
//NC 63的版本号
static NSString* const nc63_version = @"2";

/*!
 @class
 @abstractHTTP 枚举&常量&macro类
 */
@interface WAHTTPDef

/*!
 @enum
 @abstract 标准http请求类型
 @constant POST 
 @constant GET 
 @constant PUT 
 */
typedef enum HTTP_TYPE {
    POST=0,
    GET=1,
    PUT=2,
}HTTP_TYPE ;

/*!
 @enum
 @abstract 业务http请求方式
 @constant NORMAL 普通
 @constant DOWNLOAD 下载
 @constant UPLOAD 上传
 @constant BYTE_DOWNLOAD 流下载
 @constant PRE_CONNECTION 预连接
 */
typedef enum RQ_METHOD{
    //普通
    NORMAL=0,
    //下载
    DOWNLOAD=1,
    //上传
    UPLOAD=2, 
    // 流文件下载
    BYTE_DOWNLOAD=3,
    // 预链接
    PRE_CONNECTION=4,
}RQ_METHOD; 

/*!
 @enum
 @abstract 加密算法类型
 @constant DES 
 @constant OTHER 其他加密
 */
typedef enum ENCRYPT_TYPE{
    DES=1,
    OTHER=-1,
}ENCRYPT_TYPE;

/*!
 @enum
 @abstract 传输数据格式类型
 @constant JSON 
 @constant XML 
 */
typedef enum TRANSLATE_TYPE{
    JSON=0,
    XML=1,
}TRANSLATE_TYPE;

/*!
 @enum
 @abstract http加密压缩顺序
 @constant OTHER_ORDER 其他 
 @constant COMPRESS_ENCRYPT 先压缩后加密
 @constant ENCRYPT_COMPRESS 先加密后压缩
 */
typedef enum TRANS_ORDER{
    OTHER_ORDER=-1,
    COMPRESS_ENCRYPT=1,
    ENCRYPT_COMPRESS=2,
}TRANS_ORDER;

/*!
 @enum
 @abstract http压缩方式
 @constant GZIP
 @constant OTHER_ZIP 其他压缩方式
 */
typedef enum COMPRESS_TYPE{
    OTHER_ZIP=-1,
    GZIP=1,
}COMPRESS_TYPE;

/*!
 @enum
 @abstract http error code 自定义的用于封装进NSError中的错误编码
 @constant RQ_TIMEOUT 请求超时
 @constant ILLEGAL_URL 非法地址
 @constant CONN_ERROR 连接错误
 @constant CONN_FAIL 连接失败
 @constant NETWORK_NA 网络不可用
 @constant WRONG_URL 错误的地址
 @constant TTNS_ERROR 请求异常，请联系管理员（数据传输格式异常）
 @constant NULL_URL 地址为空
 @constant SESSION_TOUT session过期
 @constant HTTP_404 http 404找不到服务
 @constant HTTP_500 http 500系统出现异常
 @constant http_FLAGFAIL 请求失败
 */
typedef enum HTTP_ERROR_CODE{
    RQ_TIMEOUT=10001,
    ILLEGAL_URL=10002,
    CONN_ERROR=10003, 
    CONN_FAIL=10004, 
    NETWORK_NA=10005, 
    WRONG_URL=10006, 
    TTNS_ERROR=10007, 
    NULL_URL=10008,
    SESSION_TOUT=10009,
    HTTP_404=10010,
    HTTP_500=10011,
    http_FLAGFAIL =10012
}HTTP_ERROR_CODE;

/*!
 @enum
 @abstract http返回值 service code 类型
 @constant SINGLE_SC 单service code
 @constant MULTI_SCS 多service codes
 @constant SC_TYPE_UNKNOWN service code类型未知
 */
typedef enum HTTP_SERVICECODE_TYPE{
    SINGLE_SC=0,
    MULTI_SCS=1,
    SC_TYPE_UNKNOWN = -1,
}HTTP_SERVICECODE_TYPE;

/*!
 @enum
 @abstract http component和action type类型
 @constant SINGLE_COMP_SINGLE_AT 单component单actiontype 
 @constant SINGLE_COMP_MULTI_AT 单component多actiontype 
 @constant MULTI_COMP 多component
 @constant COMP_AT_UNKNOWN component和actiontype类型未知
 */
typedef enum COMPONENT_TYPE{
  SINGLE_COMP_SINGLE_AT=0,
  SINGLE_COMP_MULTI_AT=1,
  MULTI_COMP=2,
  COMP_AT_UNKNOWN =-1,
}COMPONENT_TYPE;
@end
