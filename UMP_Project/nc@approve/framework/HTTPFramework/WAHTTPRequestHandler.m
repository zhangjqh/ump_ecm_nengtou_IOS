/*!
 @header CWAHTTPRequestHandler.h
 @abstract HTTP Handler
 @author Created by sunset.z
 @version Copyright (c) 2012 __wa__. All rights reserved.1.00 on 12-3-29
 */

#import "WAHTTPRequestHandler.h"
#import "WAJSONParserUtils.h"
#import "WAHTTP.h"
#import "ZipUtility.h"
#import "DESEncryption.h"
#import <UMIOSControls/Reachability.h>
#import "WABnsDesVO.h"
#import "WAResponseMsg.h"
#import "WACommonInfoVO.h"
#import "WALocalStorageHandler.h"
#import <UMIOSControls/UMService.h>
@interface CWAHTTPRequestHandler()
/*!
 @property http Request
 @abstract
 */
@property (retain) CWAHTTP *mainHttp;
/*!
 @property session_id
 @abstract
 */
@property (copy)   NSString *iSession_id;
/*!
 @property http Request
 @abstract 业务描述vo
 */
@property (retain,nonatomic) NSMutableArray *iBnsDESVOs;
/*!
 @property NSString返回值
 @abstract
 */
@property (copy) NSString* iRespStringValue;
/*!
 @property 用于初始化header的头信息
 @abstract
 */
@property (copy) NSDictionary *iInitInfoDic;
/*!
 @property url是否需要拼接 servlet
 @abstract
 */
@property BOOL iServletAppend;
/*!
 @property session过期delegate
 @abstract
 */
@property (assign) id<MWAHTTPNotify>iSessionTimeOutDelegate;
/*!
 @property 请求开始时间
 @abstract
 */
@property (retain) NSDate *begainTime;
/*!
 @property 请求时间
 @abstract
 */
@property NSTimeInterval requestTimeInterval;
/*!
 @property 缓存的上一次请求信息
 @abstract
 */
@property (copy)NSDictionary *iPreviousRQInfo;
/*!
 @property 是否session过期
 @abstract
 */
@property (assign)BOOL iSessionOutRelogin;
/*!
 @property 非WA请求
 @abstract
 */
@property (nonatomic,assign) BOOL isNormalRequset;
@end

/*!
 @class
 @abstract HTTP Handler：request的组装和调用以及相应的事件分配
 @discussion 代理ASIProgressDelegate,ASIHTTPRequestDelegate
 */
@implementation CWAHTTPRequestHandler

// DES 加密的key
static NSString *desKey=@"12345678;";
// 私有返回值变量
NSData *iResponsedata;

//单例实例
static CWAHTTPRequestHandler *sharedInstance = nil;

//是否以json形式传输数据，默认为是
const BOOL isJSON = YES;
// 代理
@synthesize delegate;
// 持有的请求本身
@synthesize mainHttp;
// 是否取消当前请求
@synthesize iCancelLastRequest;
// NSData类型返回值
@synthesize iResponsedata;
// session id
@synthesize iSession_id;
// 业务描述vo
@synthesize iBnsDESVOs;
// NSString类型返回值
@synthesize iRespStringValue;
// 用于初始化header信息的容器
@synthesize iInitInfoDic;
// 请求url
@synthesize iHttpUrl;
//是否需要拼接servlet到url
@synthesize iServletAppend;
@synthesize iSessionTimeOutDelegate;
@synthesize begainTime;
@synthesize requestTimeInterval;
@synthesize iCurrentServerlet;
@synthesize iPreviousRQInfo;
@synthesize iSessionOutRelogin;
@synthesize isNormalRequset;

#pragma mark Singleton Methods 单例初始化
/*!
 @method
 @abstract 从NSUserDefaults获取配置的服务器url
 @discussion
 @result
 */
+(void)initURL
{
    UMSetting * setting = [UMSetting sharedInstance];
    if ( setting.serverUrl )
    {
        sharedInstance.iHttpUrl = setting.serverUrl;
    }
}


-(void)initURLToInstance
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSString *defaultUrl =[userDefaults objectForKey:WA_HTTP_D_URL];
    if ( defaultUrl )
    {
        self.iHttpUrl =defaultUrl;
    }
}

/*!
 @method 根据一个servlet初始化CWAHTTP
 @abstract 由于支持的
 @discussion not owned 调用方需要释放该对象
 @result
 */
-(CWAHTTP* ) initCWAHTTP:(CWAHTTP *)aHttp andServlet:(NSString *)aServlet
{
    // 存在本地文件配置信息
    if ( self.iInitInfoDic && [self.iInitInfoDic count] > 0 )
    {
        //需要拼接servlet
        if ( aServlet || self.iServletAppend )
        {
            NSMutableDictionary *mdic = [[NSMutableDictionary alloc]initWithDictionary:self.iInitInfoDic];
            [mdic setValue:aServlet forKey:@"servlet"];
            [self setIInitInfoDic:(NSDictionary *)mdic];
            [mdic release];
        }
        // 初始化CWAHTTP
        aHttp = [[CWAHTTP alloc] initRequestWithDictionary: self.iInitInfoDic type:(HTTP_TYPE)POST];
    }
    else
    {
        //无url信息
        if ( ! self.iHttpUrl )
        {
            NSError *error = [NSError errorWithDomain:NSLocalizedStringFromTable(@"WA_HTTP_NULL_URL",@"btarget_HTTPCommon", nil)
                                                 code:NULL_URL
                                             userInfo:nil];
            [self notifyFailedRequest:nil error:error];
            
            
        }
        else
        {
            NSString *aUrl=nil;
            if ( aServlet || iServletAppend )
            {
                aUrl = [NSMutableString stringWithFormat:@"%@%@",self.iHttpUrl,aServlet];
            }
            else
            {
                aUrl=self.iHttpUrl;
            }
            //初始化CWAHTTP
            aHttp = [[CWAHTTP alloc] initWaRequestWithStringUrl:aUrl type:(HTTP_TYPE)POST];
        }
        
    }
    
    return aHttp;
}

/*!
 @method
 @abstract 获取http handler 单例
 @discussion
 @result
 */
+(id)sharedManager
{
    
    @synchronized(self)
    {
        if( sharedInstance == nil )
        {
            sharedInstance = [[self alloc] init];
        }
        [self initURL];
        sharedInstance.iServletAppend=YES;
        if (!sharedInstance.iSessionOutRelogin)
        {
            sharedInstance.iSessionOutRelogin=NO;
        }
    }
    
    return sharedInstance;
}

/*!
 @method
 @abstract 获取http handler
 @discussion 加载本地的HTTP请求配置信息
 @result
 */
+(id)sharedManagerWithLocalFile
{
    [self sharedManager];
    
    if ( [sharedInstance iInitInfoDic] || [[sharedInstance iInitInfoDic] count] <= 0 )
    {
        NSString *path = [[NSBundle mainBundle] pathForResource:
                          WA_HTTP_INIT_F ofType:WA_HTTP_INIT_TYPE];
        if ( path )
        {
            if ([@"plist" isEqualToString:WA_HTTP_INIT_TYPE])
            {
                NSDictionary *dic = [[NSDictionary alloc] initWithContentsOfFile:path];
                if (dic && [dic count]>0)
                {
                    sharedInstance.iInitInfoDic=dic;
                    BOOL isAppendServlet = [[dic valueForKey:@"needAppendServlet"]boolValue];
                    sharedInstance.iServletAppend=isAppendServlet;
                }
                [dic release];
            }
            
        }
    }
    return sharedInstance;
}

/*!
 @method
 @abstract 通过一组Dictionary中的信息来配置请求
 @discussion
 @result
 */
+(id)sharedManagerWithConfigDictionary:(NSDictionary *) aDict
{
    [self sharedManager];
    
    if ( [sharedInstance iInitInfoDic] || [[sharedInstance iInitInfoDic] count] <= 0 )
    {
        if (aDict && [aDict count]>0)
        {
            sharedInstance.iInitInfoDic=aDict;
            BOOL isAppendServlet = [[aDict valueForKey:@"needAppendServlet"]boolValue];
            sharedInstance.iServletAppend=isAppendServlet;
        }
    }
    return sharedInstance;
}

# pragma mark 生成一个Http Handler的实例
-(id)initHttpHandlerWithDelegate:(id<MWAHTTPNotify>)aDelegate
{
    if (self = [super init])
    {
        [self initURLToInstance];
        [self setDelegate:aDelegate];
    }
    return self;
}

# pragma mark 判断网络是否可用以及异常封装
/*!
 @method
 @abstract 判断当前网络是否不可用
 @discussion
 @result BOOL
 */
-(BOOL) isNewWorkNotAvailable
{
    
    return ([[Reachability reachabilityForInternetConnection] currentReachabilityStatus] == kNotReachable);
    
}

/*!
 @method
 @abstract 封装网络不可用异常
 @discussion
 @result
 */
-(void) handleNetWorkNotAvailable
{
    // 当前网络不可用
    NSError *error = [NSError errorWithDomain:NSLocalizedStringFromTable(@"WA_HTTP_NET_NA",@"btarget_HTTPCommon", nil)
                                         code:(HTTP_ERROR_CODE)NETWORK_NA
                                     userInfo:nil];

    [self notifyFailedRequest:nil error:error];
    

    [self clearDelegateAndCancelRequest];
    
    return;
}

#pragma mark log exception
/*!
 @method
 @abstract 打印错误日志
 @discussion
 @result
 */
-(void)logException:(NSException*)aException
{

    if( aException.name )
    {

    }
    if( aException.reason )
    {

    }
}

# pragma mark 时间Log
-(NSString *) formatTheDateTime:(NSDate *)aDate
{
    [aDate retain];
    NSString *rtnString =nil;
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"yyyy-MM-dd"];
    
    NSDateFormatter *timeFormat = [[NSDateFormatter alloc] init];
    [timeFormat setDateFormat:@"HH:mm:ss"];
    
    NSString *theDate = [dateFormat stringFromDate:aDate];
    NSString *theTime = [timeFormat stringFromDate:aDate];
    
    rtnString = [NSString stringWithFormat:@"\n"
                 "theDate: |%@| \n"
                 "theTime: |%@| \n", theDate, theTime];
    
    
    [dateFormat release];
    [timeFormat release];
    [aDate release];
    
    return rtnString;
    
}

-(NSTimeInterval) computeRequestTimeInterval
{
    
    if (self.begainTime)
    {
        
        self.requestTimeInterval =(-[self.begainTime timeIntervalSinceNow]) *1000;
        
    }
    return self.requestTimeInterval;
}

#pragma mark 私有方法 POST请求 上传、下载处理
/*!
 @method
 @abstract 下载请求处理
 @discussion 对下载请求进行处理 包括设置同步异步、超时时间、重新请求次数、断电下载、处于任务后台下载、设置下载缓存路径、设置下载文件保存路径、设置代理（请求代理、下载进程监测代理）
 @param aRequest 请求
 @param aDelegate 请求通知（用来接收请求进度通知）
 @param theError 同步请求的异常
 @result
 */
-(void) downloadDataWithRequest:(CWAHTTP*)aRequest
                       delegate:(id<MWAHTTPNotify>)aDelegate
                          error:(NSError*)theError
{
    
    //异步请求可用
    if( [sharedInstance.mainHttp iASynchronous] )
    {
        //设置handler代理
        sharedInstance.delegate = aDelegate;
        //请求超时时间为0
        [[sharedInstance.mainHttp iHttpRequest] setTimeOutSeconds:WA_HTTP_TIME_OUT];
        //重新发送请求三次
        [[sharedInstance.mainHttp iHttpRequest] setNumberOfTimesToRetryOnTimeout:WA_HTTP_TIME_OUT_RETRY];
        //断点下载
        [[sharedInstance.mainHttp iHttpRequest] setAllowResumeForFileDownloads:YES];
        //下载文件保存路径
        [[sharedInstance.mainHttp iHttpRequest]setDownloadDestinationPath:[aRequest iDownLoadSavePath]];
        //下载文件缓存路径
        //        [[sharedInstance.mainHttp httpRequest] setTemporaryFileDownloadPath:[sharedInstance.mainHttp downLoadTempPath]];
        //后台任务时下载
        [[sharedInstance.mainHttp iHttpRequest] setShouldContinueWhenAppEntersBackground:YES];
        //代理ASIHTTPREQUEST
        [[sharedInstance.mainHttp iHttpRequest] setDelegate: self];
        //代理下载进度
        [[sharedInstance.mainHttp iHttpRequest] setDownloadProgressDelegate:self];
#ifdef DEBUG
        NSData *bodyData = [[sharedInstance.mainHttp iHttpRequest] postBody];
        NSString* newStr =[[NSString alloc] initWithData:bodyData
                                                encoding:NSUTF8StringEncoding];
        if( newStr )
        {
        }
        [newStr release];
        
#endif
        //发起请求
        [[sharedInstance.mainHttp iHttpRequest] startAsynchronous];
    }
    else
    {
        // 同步请求处理
        [[sharedInstance.mainHttp iHttpRequest]setDownloadDestinationPath:[aRequest iDownLoadSavePath]];
        [[sharedInstance.mainHttp iHttpRequest] startSynchronous];
        theError = [[sharedInstance.mainHttp iHttpRequest] error];
        if( theError )
        {
        }
        else
        {
            iResponsedata= [[sharedInstance.mainHttp iHttpRequest] responseData];
            
#ifdef DEBUG
            NSString *responseString = [[sharedInstance.mainHttp iHttpRequest] responseString];
            if ( responseString )
            {
            }
            
#endif
        }
        
    }
}


/*!
 @method
 @abstract 上传请求处理（暂未实现）
 @discussion 对上传请求进行处理
 @param aRequest 请求
 @param aDelegate 请求通知（用来接收请求进度通知）
 @param theError 同步请求的异常
 @result
 */
-(void) uploadDataWithRequest:(CWAHTTP*)aRequest
                     delegate:(id<MWAHTTPNotify>)aDelegate
                        error:(NSError*)theError
{
    
}

/*!
 @method
 @abstract 请求处理(除上传、下载外)
 @discussion 对请求进行处理 包括设置同步异步、超时时间、重新请求次、设置代理
 @param aRequest 请求
 @param aDelegate 请求通知（用来接收请求进度通知）
 @result
 */
-(void) fireRequest:(CWAHTTP*)aRequest
           delegate:(id<MWAHTTPNotify>)aDelegate

{
    // sharedInstance.delegate=aDelegate;
    //异步请求
    if( [self.mainHttp iASynchronous] )
    {
        [[self.mainHttp iHttpRequest] setDelegate:self];
        [[self.mainHttp iHttpRequest] setTimeOutSeconds:WA_HTTP_TIME_OUT];
        
        //请求重复三次
        [[self.mainHttp iHttpRequest] setNumberOfTimesToRetryOnTimeout:WA_HTTP_TIME_OUT_RETRY];
        [[self.mainHttp iHttpRequest] startAsynchronous];
#ifdef DEBUG
        //        NSMutableData *bodyData= [[sharedInstance.mainHttp iHttpRequest] postBody];
        //        WALog(@"body信息，post body info :%@",bodyData);
#endif
    }
    else
    {
        NSError *error = nil;
        //同步请求
        [[self.mainHttp iHttpRequest] startSynchronous];
        if( error )
        {
        }
        else
        {
            //response= [[aRequest httpRequest] responseData];
            
        }
    }
}

// 发起获取 app 安装包版本更新校验请求
-(void)fireAppUpdateRequestWithDelegate:(id<MWAHTTPNotify>)aDelegate
                            andConfigVO:(CWAHTTPRequestConfigVO *)aHttpConfigVO
{
    CWAHTTP *reqHTTP = [[CWAHTTP alloc]initRequestWithHttpConfigVO:aHttpConfigVO];
    self.isNormalRequset = YES;
    
    //设置HTTP handler代理
    self.delegate=aDelegate;
    //设置CWAHTTP
    [self setMainHttp:reqHTTP];
    // 设置CWAHTTP代理
    self.mainHttp.iHttpRequest.delegate= self;
    
    //判断网络状况
    if( [self isNewWorkNotAvailable] )
    {
        [self handleNetWorkNotAvailable];
        [reqHTTP release];
        return;
    }
    
    // 请求需要压缩
    reqHTTP.iHttpRequest.shouldCompressRequestBody = YES;
    // 组装请求body
    NSData *bodydata =[self prepareBodyDataWithDictionary:aHttpConfigVO.iReqParamVO.voDictionary];
    [reqHTTP.iHttpRequest appendPostData:bodydata];
    // 发送请求
    [self.mainHttp.iHttpRequest startAsynchronous];
    [reqHTTP release];
}

# pragma mark 加密处理
/*!
 @method
 @abstract 基于指定加密算法 加密NSString
 @discussion
 @param aString 待加密明文
 @param aType 加密类型 参考 枚举（ENCRYPType_TYPE）
 @result NSString 加密结果
 */
-(NSString*)encryptString:(NSString*)aString type:(NSInteger)aType
{
    
    NSString *string;
    if ( (ENCRYPT_TYPE)DES == aType )
    {
        string=[DESEncryption TripleDES:aString encryptOrDecrypt:(CCAlgorithm)kCCEncrypt key:desKey];
    }
    else
    {
        string=aString;
    }
    if (string)
    {

    }
    
    
    return string;
}

#pragma mark 压缩处理
/*!
 @method
 @abstract 基于Gzip压缩NSData
 @discussion
 @param aData 待压缩数据
 @result NSData 压缩结果
 */
-(NSData*)compressData:(NSData*)aData
{

    return [ZipUtility gzipData:aData];
}


# pragma mark 私有方法 处理封装POST请求的BODY信息
/*!
 @method
 @abstract 封装post请求的body
 @discussion 将NSString 依照当前的配置：是否压缩、是否加密等等处理成请求的body
 @param aString
 @result NSData
 */
-(NSData*)prepareBodyDataWithString:(NSString*)aString
{
    
    NSData *rtnData=nil;
    NSData *data=nil;
    NSInteger encrypt = [self.mainHttp iTheEncryptType];
    if ( encrypt>=0 )
    {
        //加密
        NSString *metaString=[self encryptString:aString type:[self.mainHttp iTheEncryptType]];
        data = [metaString dataUsingEncoding:NSUTF8StringEncoding];
#ifdef DEBUG
        NSInteger type = [self.mainHttp iTheEncryptType];
        if(type>0)
        {
            
        }
        if(aString)
        {
            
        }
        if(metaString)
        {
            //            WALog(@"密文字串 Cryptograph is------>:%@",metaString);
        }
#endif
    }
    else
    {
        //不加密直接转utf-8 NSData
        data= [aString dataUsingEncoding:NSUTF8StringEncoding];
    }
    
    //执行压缩
    if ([self.mainHttp compressed])
    {
        if ( data )
        {
            rtnData = [self compressData:data];
        }
    }
    else
    {
        rtnData= data;
    }
    
    return rtnData;
}

/*!
 @method
 @abstract 封装post请求的body
 @discussion 将NSDictionary 依照当前的配置：是否压缩、是否加密等等处理成请求的body
 @param aDictionary
 @result NSData
 */
-(NSData*)prepareBodyDataWithDictionary:(NSDictionary*)aDictionary
{
    NSString *string = [CWAJSONParserUtils jsonStyleStringFromValues:aDictionary];
    //NSLog(@"send json is %@",string);
    return [self prepareBodyDataWithString:string];
}



# pragma mark http请求方法
/*!
 @method
 @abstract 请求分配
 @discussion 发起的请求 需要再封装的aRequest中设置同步/异步
 @param aRequest 请求
 @param aDelegate 请求通知（用来接收请求进度通知）
 @param aMehtod 请求方式（普通请求，上传，下载 详情对应Def.h中的 HTTP_METHOD 枚举）
 @result
 */
-(void) httpRequest:(CWAHTTP*)aRequest
           delegate:(id<MWAHTTPNotify>)aDelegate
             method:(NSInteger)aMethod
{
    if(aRequest)
    {
        [self setMainHttp:aRequest];
        //普通请求
        if(aMethod==(RQ_METHOD)NORMAL)
        {
            [self fireRequest:aRequest delegate:aDelegate];
            //下载请求
        }
        else if((RQ_METHOD)DOWNLOAD==aMethod)
        {
            [self downloadDataWithRequest:aRequest delegate:aDelegate error:nil];
        }
        //上传请求 （暂未实现）
        //        else {
        //
        //
        //        }
    }
}

/*!
 @method
 @abstract 请求发起预处理
 @discussion 包括：设置代理 判断网络 设置CWAHTTP 请求body预处理（压缩&加密） 分配普通post请求(post/上传/流下载)和 post附件下载请求(因为此处需要特殊处理，所以在此处分流)
 @param aRequest 请求
 @param aData post请求body数据，NSDictionary或NSString
 @param aDelegate 请求通知（用来接收请求进度通知）
 @param aMehtod 请求方式（普通请求，上传，下载 详情对应Def.h中的 HTTP_METHOD 枚举）
 @result
 */
-(void) httpRequest:(CWAHTTP *)aRequest
       WithBodyData:(id)aData
           delegate:(id<MWAHTTPNotify>)aDelegate
             method:(NSInteger)aMethod
{
    
    //设置代理
    self.delegate=aDelegate;
    
    //判断网络状况
    if( [self isNewWorkNotAvailable] )
    {
        [self handleNetWorkNotAvailable];
        return;
    }
    
    //设置CWAHTTP
    [self setMainHttp:aRequest];
    if ((RQ_METHOD)BYTE_DOWNLOAD == aMethod )
    {
        [aRequest setIsDownloadBytes:YES];
        [aRequest setEncryptType:(ENCRYPT_TYPE)OTHER];
        //预登陆头信息处理
    }
    else if ((RQ_METHOD)PRE_CONNECTION ==aMethod)
    {
        NSMutableDictionary *preConnectDictionary = [[NSMutableDictionary alloc]init];
        [preConnectDictionary setValue:@"" forKey:WA_HTTP_PRELOGIN_EPID];
        //[preConnectDictionary setValue:APP_APPId forKey:WA_HTTP_PRELOGIN_APPID];
        //[preConnectDictionary setValue:APP_APPHV forKey:WA_HTTP_PRELOGIN_APPHV];
        //[preConnectDictionary setValue:APP_APPLV forKey:WA_HTTP_PRELOGIN_APPLV];
        //[aRequest requestBuildRequestHeaders:preConnectDictionary];
        [preConnectDictionary release];
    }
    // 通知当前请求的body明文
    [self notifyrequestPostBodyData:aData];
    
    //请求body预处理封装
    if ( aData )
    {
        NSData *bodyData;
        if( [aData isKindOfClass:[NSDictionary class]] )
        {
            
            bodyData=[self prepareBodyDataWithDictionary:aData];
            
        }
        else if([aData isKindOfClass:[NSString class]])
        {
            
            bodyData=[self prepareBodyDataWithString:aData];
            
        }
        else
        {
            [NSException raise:@"Invalid aData value" format:@"aData of %@ is invalid", [aData description]];
        }
        
        //填充请求body到请求中
        if( bodyData )
        {
            [[self.mainHttp iHttpRequest]appendPostData:bodyData];
            
            if( (RQ_METHOD)NORMAL == aMethod )
            {
                [self fireRequest:aRequest delegate:aDelegate];
            }
            else if( (RQ_METHOD)BYTE_DOWNLOAD == aMethod )
            {
                
                [self fireRequest:aRequest delegate:aDelegate];
                
            }
        }
        else
        {
            return;
        }
    }
    else
    {
        if ((RQ_METHOD)PRE_CONNECTION == aMethod)
        {
            [self fireRequest:aRequest delegate:aDelegate];
        }
    }
}

# pragma mark https请求
/*!
 @method
 @abstract https请求分配
 @discussion 发起的请求 需要再封装的aRequest中设置同步/异步
 @param aRequest 请求
 @param aDelegate 请求通知（用来接收请求进度通知）
 @param aMehtod 请求方式（普通请求，上传，下载 详情对应Def.h中的 HTTP_METHOD 枚举）
 @result
 */
-(void) httpsRequest:(CWAHTTP*)aRequest
            delegate:(id<MWAHTTPNotify>)aDelegate
              method:(NSInteger)aMethod
{
    if( aRequest )
    {
        [self setMainHttp:aRequest];
        
        [[aRequest iHttpRequest] setValidatesSecureCertificate:NO];
        //普通请求
        if( aMethod==(RQ_METHOD)NORMAL )
        {
            [self fireRequest:aRequest delegate:aDelegate];
            //下载请求
        }
        else if( (RQ_METHOD)DOWNLOAD==aMethod )
        {
            [self downloadDataWithRequest:aRequest delegate:aDelegate error:nil];
        }
        //上传请求 （暂未实现）
        //        else {
        //
        //
        //        }
    }
}

/*!
 @method
 @abstract https请求分配
 @discussion 发起的请求 需要再封装的aRequest中设置同步/异步
 @param aRequest 请求
 @param aData post请求body数据，NSDictionary,NSString等
 @param aDelegate 请求通知（用来接收请求进度通知）
 @param aMehtod 请求方式（普通请求，上传，下载 详情对应Def.h中的 HTTP_METHOD 枚举）
 @result
 */
-(void) httpsRequest:(CWAHTTP *)aRequest
        WithBodyData:(id)aData
            delegate:(id<MWAHTTPNotify>)aDelegate
              method:(NSInteger)aMethod
{
    [[aRequest iHttpRequest] setValidatesSecureCertificate:NO];
    [self setMainHttp:aRequest];
    if ( aData )
    {
        if( [aData isMemberOfClass:[NSDictionary class]] )
        {
            NSData  *bodyData=[self prepareBodyDataWithDictionary:aData];
            [[self.mainHttp iHttpRequest]appendPostData:bodyData];
            
        }
        else if( [aData isMemberOfClass:[NSString class]] )
        {
            NSData  *bodyData=[self prepareBodyDataWithString:aData];
            [[self.mainHttp iHttpRequest]appendPostData:bodyData];
        }
        
        if( (RQ_METHOD)NORMAL == aMethod )
        {
            [self fireRequest:aRequest delegate:aDelegate];
        }
    }
}

# pragma mark HTTP ERROR CODE 处理 以及ASIHTTPRequest error解析
/*!
 @method
 @abstract 错误处理 所有网络异常的处理封装
 @discussion
 @param errorCode ASIHTTPRequest error code错误信息
 @param aHttpErrorCode http errro code 错误信息
 @result
 */
-(NSError*) handleNetWorkError: (NSError* )errorCode
{
    NSError *error = nil;
    
    switch ( errorCode.code )
    {
        case 1:
            // 请求超时
            error=[NSError errorWithDomain:NSLocalizedStringFromTable(@"WA_HTTP_RQ_TIMEOUT",@"btarget_HTTPCommon", nil)
                                      code:(HTTP_ERROR_CODE)RQ_TIMEOUT
                                  userInfo:nil];
            break;
        case 2:
            // 连接移动服务器失败
            error=[NSError errorWithDomain:NSLocalizedStringFromTable(@"WA_HTTP_CONNERROR",@"btarget_HTTPCommon", nil)
                                      code:(HTTP_ERROR_CODE)CONN_ERROR
                                  userInfo:nil];
            break;
        case 5:
            // 无法创建请求
            error=[NSError errorWithDomain:NSLocalizedStringFromTable(@"WA_HTTP_CONNFAIL",@"btarget_HTTPCommon", nil)
                                      code:(HTTP_ERROR_CODE)CONN_FAIL
                                  userInfo:nil];
            break;
        case 6:
            // 非法域名
            error=[NSError errorWithDomain:NSLocalizedStringFromTable(@"WA_HTTP_ILLEGALURL",@"btarget_HTTPCommon", nil)
                                      code:(HTTP_ERROR_CODE)ILLEGAL_URL
                                  userInfo:nil];
            break;
        default:
            break;
    }
    
    return error;
}

# pragma mark 基于请求业务vo和业务描述vo拼装请求body
/*!
 @method
 @abstract 单component请求body信息的拼装
 @discussion 基于请求传输vo和业务描述vo 拼装请求body
 @param aBaseVO 请求传输vo 其中voDictionary属性中包含请求parameters
 @param aBnsDescVO 业务描述vo 描述请求业务组件和actiontype
 @result
 */
-(CWABaseVO*) constructRequestBodyByBaseVO:(CWABaseVO*)aBaseVO
                              andBnsDescVO:(CWABnsDesVO*)aBnsDescVO
{
    
    
    //非登陆需要获取 session id
    NSMutableDictionary *sessionid = [[NSMutableDictionary alloc]init ];
    UMSetting* setting = [UMSetting sharedInstance];
    [sessionid setValue:setting.sessionid forKey:WA_HTTP_ID_kEY];
    
    
    NSMutableDictionary *mdict =[[NSMutableDictionary alloc]init];
    NSMutableDictionary *subMdict = [[NSMutableDictionary alloc]init];
    NSMutableArray *arrComponent = [[NSMutableArray alloc]init];
    NSMutableArray *marr = [[NSMutableArray alloc]init];
    NSMutableDictionary *voDict = [aBaseVO voDictionary];
    
    //parameter封装
    [voDict enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop)
     {
         NSMutableDictionary *tempDict = [[NSMutableDictionary alloc]init];
         [tempDict setObject:key forKey:WA_HTTP_STRID_KEY];
         [tempDict setObject:obj forKey:WA_HTTP_VALUE_KEY];
         [marr addObject:tempDict];
         [tempDict release];
     } ];
    NSArray *servicecodes = aBnsDescVO.iServiceCodes;
    NSMutableDictionary *paramDict = [[NSMutableDictionary alloc] init];
    [paramDict setValue:marr forKey:WA_HTTP_PARAMS_KEY];
    
    if (servicecodes && [servicecodes count]>0)
    {
        [paramDict setValue:[servicecodes objectAtIndex:0] forKey:WA_HTTP_R_SC];
    }
    [marr release];
    NSMutableDictionary *reqpDict = [[NSMutableDictionary alloc] init];
    [reqpDict setValue:paramDict forKey:WA_HTTP_REQPARAMS_KEY];
    [paramDict release];
    
    [reqpDict setValue:[[aBnsDescVO iActionTypes] objectAtIndex:0]forKey:WA_HTTP_ACTIONTYPE_KEY];
    NSMutableDictionary *actionsDict = [[NSMutableDictionary alloc] init];
    [actionsDict setValue:reqpDict forKey:WA_HTTP_ACTION_KEY];
    [reqpDict release];
    NSMutableDictionary *componentDict = [[NSMutableDictionary alloc]init];
    [componentDict setValue:actionsDict forKey:WA_HTTP_ACTIONS_KEY];
    [componentDict setValue:[aBnsDescVO iComponentID] forKey:WA_HTTP_COMPONENTID_KEY];
    [actionsDict release];
    [arrComponent addObject:componentDict];
    [componentDict release];
    [subMdict setValue:arrComponent forKey:WA_HTTP_WACOMPONENT_KEY];
    [subMdict setObject:setting.groupid forKey:@"groupid"];
    [subMdict setObject:setting.userid forKey:@"usrid"];
    [subMdict setObject:setting.username forKey:@"username"];
    [subMdict setObject:setting.password forKey:@"password"];
    [subMdict setObject:setting.appId forKey:@"appid"];
    [subMdict setObject:setting.appId forKey:@"appid"];
    [subMdict setValue:sessionid forKey:WA_HTTP_SESSION_KEY];
    [sessionid release];
    [arrComponent release];
    [mdict setObject:subMdict forKey:WA_HTTP_WACOMPONENTS_KEY];
    [subMdict release];
    
    CWABaseVO *rtnVO = [CWABaseVO baseVOWithDictionary:(NSDictionary *)mdict];
    
    [mdict release];
    return rtnVO;
}

/*!
 @method
 @abstract 单component多actiontypes请求body信息的拼装
 @discussion 基于请求传输vo和业务描述vo 拼装请求body
 @param baseVOs 一组请求传输vo 其中每个vo对应一个actiontype的请求数据
 每个vo中的voDictionary属性中包含请求parameters
 @param aBnsDescVO 业务描述vo 描述请求业务组件和actiontype
 @result
 */
-(CWABaseVO *) constructOneComponentMutiActionBody:(NSArray*)baseVOs
                                     withBnsDescVO:(CWABnsDesVO *)aBnsDescVO
{
    
    NSMutableDictionary *mdict =[[NSMutableDictionary alloc]init];
    NSMutableDictionary *subMdict = [[NSMutableDictionary alloc]init];
    NSMutableArray *arrComponent = [[NSMutableArray alloc]init];
    NSMutableArray *actionArray = [[NSMutableArray alloc]init];
    
    NSArray *actiontypes = [aBnsDescVO iActionTypes];
    NSArray *servicecodes = [aBnsDescVO iServiceCodes];
    
    if (baseVOs && [baseVOs count]>0)
    {
        [baseVOs enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            
            NSString *actiontype = [actiontypes objectAtIndex:idx];
            NSString *servicecode = [ servicecodes objectAtIndex:idx];
            NSMutableArray *marr = [[NSMutableArray alloc]init];
            NSDictionary *dic = [(CWABaseVO*)obj voDictionary];
            
            [dic enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
                
                NSMutableDictionary *tempDict = [[NSMutableDictionary alloc]init];
                [tempDict setObject:key forKey:WA_HTTP_STRID_KEY];
                [tempDict setObject:obj forKey:WA_HTTP_VALUE_KEY];
                [marr addObject:tempDict];
                [tempDict release];
            } ];
            
            NSMutableDictionary *paramDict = [[NSMutableDictionary alloc] init];
            [paramDict setValue:marr forKey:WA_HTTP_PARAMS_KEY];
            if (servicecode)
            {
                [paramDict setValue:servicecode forKey:WA_HTTP_R_SC];
            }
            [marr release];
            NSMutableDictionary *reqpDict = [[NSMutableDictionary alloc] init];
            [reqpDict setValue:paramDict forKey:WA_HTTP_REQPARAMS_KEY];
            [reqpDict setValue:actiontype forKey:WA_HTTP_ACTIONTYPE_KEY];
            [paramDict release];
            [actionArray addObject:reqpDict];
            [reqpDict release];
        } ];
    }
    NSMutableDictionary *actionsDict = [[NSMutableDictionary alloc] init];
    [actionsDict setValue:actionArray forKey:WA_HTTP_ACTION_KEY];
    [actionArray release];
    
    //非登陆需要获取 session id
    NSMutableDictionary *sessionid = [[NSMutableDictionary alloc]init ];
    UMSetting* setting = [UMSetting sharedInstance];
    [sessionid setValue:setting.sessionid forKey:WA_HTTP_ID_kEY];
    NSMutableDictionary *componentDict = [[NSMutableDictionary alloc]init];
    [componentDict setValue:actionsDict forKey:WA_HTTP_ACTIONS_KEY];
    [actionsDict release];
    [componentDict setValue:[aBnsDescVO iComponentID] forKey:WA_HTTP_COMPONENTID_KEY];
    
    [arrComponent addObject:componentDict];
    [componentDict release];
    [subMdict setValue:arrComponent forKey:WA_HTTP_WACOMPONENT_KEY];
    [subMdict setObject:setting.groupid forKey:@"groupid"];
    [subMdict setObject:setting.userid forKey:@"usrid"];
    [subMdict setObject:setting.username forKey:@"username"];
    [subMdict setObject:setting.password forKey:@"password"];
    [subMdict setObject:setting.appId forKey:@"appid"];
    [subMdict setValue:sessionid forKey:WA_HTTP_SESSION_KEY];
    [sessionid release];
    [arrComponent release];
    [mdict setObject:subMdict forKey:WA_HTTP_WACOMPONENTS_KEY];
    [subMdict release];
    CWABaseVO *baseVOfull = [CWABaseVO baseVOWithDictionary:(NSDictionary *)mdict];
    
    [mdict release];
    
    return baseVOfull;
}

-(NSMutableDictionary *) reBuiltBnsDesRelations:(id)bnsVOs
                                       withDict:(NSMutableDictionary *)dict
{
    if ([bnsVOs isKindOfClass:[NSArray class]])
    {
        NSArray *bnsVOArr = (NSArray *)bnsVOs;
        [bnsVOArr enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            //      CWABnsDesVO *bnsvo =(CWABnsDesVO *)obj;
            
            if ([obj iComponentID] && ![[obj iComponentID] isEqualToString:@""])
            {
                NSMutableDictionary *actionTypeWithServiceCode = [[NSMutableDictionary alloc]init];
                bool serviceCodeExists = (![obj iServiceCodes])? NO:YES;
                if ([[obj iActionTypes] count]>0)
                {
                    NSArray *actionTypes = [obj iActionTypes];
                    if (serviceCodeExists)
                    {
                        if ([[obj iActionTypes]count]==[[obj iServiceCodes]count])
                        {
                            NSArray *servicecodes = [obj iServiceCodes];
                            [actionTypes enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
                                [actionTypeWithServiceCode setValue:[servicecodes objectAtIndex:idx] forKey:obj];
                            } ];
                        }
                    }
                }
                [dict setValue:actionTypeWithServiceCode forKey:[obj iComponentID]];
                [actionTypeWithServiceCode release];
            }
        }];
    }
    return dict;
}

-(CWABaseVO *) constructMultiComponentBodyData:(NSDictionary *)bodyData
                                      bnsDesVO:(NSArray *)bnsVOs

{
    CWABaseVO *rtnVO = nil;
    //组装请求json
    //  self.iSession_id=@"imie001";
    NSString *sessionid= self.iSession_id;
    NSMutableDictionary *reBuildATSC = [[NSMutableDictionary alloc]init];
    //将多个独立的component的业务描述vo组装成component 对actiontype 对servicecode的重定义
    [self reBuiltBnsDesRelations:bnsVOs withDict:reBuildATSC];
    if ([bodyData count]>=1)
    {
        NSMutableDictionary *componentsDic = [[NSMutableDictionary alloc]init];
        NSMutableDictionary *componentDic = [[NSMutableDictionary alloc] init];
        NSMutableDictionary *sessionDic = [[NSMutableDictionary alloc] init];
        UMSetting* setting = [UMSetting sharedInstance];
        [sessionid setValue:setting.sessionid forKey:WA_HTTP_ID_kEY];
        [componentDic setValue:sessionDic forKey:WA_HTTP_SESSION_KEY];
        [sessionDic release];
        
        __block NSMutableArray *componentArray = [[NSMutableArray alloc]init];
        [bodyData enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
            if (obj && [obj respondsToSelector:@selector(count)] && [obj count]>0)
            {
                NSDictionary *objDict = (NSDictionary *)obj;
                NSMutableDictionary *actionDict = [[NSMutableDictionary alloc]init];
                NSMutableDictionary*actionsDict = [[NSMutableDictionary alloc]init];
                [actionsDict setValue:key forKey:WA_HTTP_COMPONENTID_KEY];
                //取出当前业务描述vo中actiontype和servicecode的对应关系字典
                NSDictionary *actionTypeWithSC = [reBuildATSC objectForKey:key];
                
                __block NSMutableArray *actionTypesArray = [[NSMutableArray alloc] init];
                
                [objDict enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
                    //当前actiontype对应的servicecode
                    NSString *oneServiceCode = nil;
                    if (actionTypeWithSC)
                    {
                        if ([actionTypeWithSC objectForKey:key])
                        {
                            oneServiceCode =[actionTypeWithSC objectForKey:key];
                        }
                    }
                    CWABnsDesVO *baseVO = (CWABnsDesVO *)obj;
                    NSDictionary *paramDict = baseVO.voDictionary;
                    NSMutableDictionary *actionTypeDic = [[NSMutableDictionary alloc]init];
                    [actionTypeDic setValue:key forKey:WA_HTTP_ACTIONTYPE_KEY];
                    [actionTypeDic setValue:nil forKey:WA_HTTP_REQPARAMS_KEY];
                    
                    if (paramDict && [paramDict count]>0)
                    {
                        __block NSMutableArray *paramArray = [[NSMutableArray alloc] init];
                        
                        [paramDict enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop){
                            NSMutableDictionary *oneActionParam = [[NSMutableDictionary alloc]init];
                            [oneActionParam setValue:key forKey:WA_HTTP_STRID_KEY];
                            [oneActionParam setValue:obj forKey:WA_HTTP_VALUE_KEY];
                            
                            [paramArray addObject:oneActionParam];
                            [oneActionParam release];
                        }];
                        if (paramArray && [paramArray count]>0)
                        {
                            NSMutableDictionary *reqparamsDict = [[NSMutableDictionary alloc] init];
                            [reqparamsDict setValue:paramArray forKey:WA_HTTP_PARAMS_KEY];
                            //多component加入service code
                            if (oneServiceCode)
                            {
                                [reqparamsDict setValue:oneServiceCode forKey:WA_HTTP_R_SC];
                            }
                            [actionTypeDic setValue:reqparamsDict forKey:WA_HTTP_REQPARAMS_KEY];
                            [reqparamsDict release];
                        }
                        [paramArray release];
                    }
                    
                    [actionTypesArray addObject:actionTypeDic];
                    [actionTypeDic release];
                    
                }];
                [actionDict setValue:actionTypesArray forKey:WA_HTTP_ACTION_KEY];
                
                [actionTypesArray release];
                [actionsDict setValue:actionDict forKey:WA_HTTP_ACTIONS_KEY];
                [actionDict release];
                
                [componentArray addObject:actionsDict];
                [actionsDict release];
            }
        } ];
        [componentDic setValue:componentArray forKey:WA_HTTP_WACOMPONENT_KEY];
        [componentArray release];
        [componentsDic setValue:componentDic forKey:WA_HTTP_WACOMPONENTS_KEY];
        [componentDic release];
        rtnVO = [CWABaseVO baseVOWithDictionary:componentsDic];
        [componentsDic release];
    }
    [reBuildATSC release];
    
    return rtnVO;
}


# pragma mark 缓存当前请求的信息
/*!
 @method
 @abstract 缓存业务描述vo
 @discussion
 @param aBnsDesVO 发请求方传入的业务描述vo
 @result
 */
-(void)saveBnsDesVOs:(id)aBnsDesVO
{
    //缓存当前请求的业务描述信息
    if ( [aBnsDesVO isKindOfClass: [NSArray class]] )
    {
        self.iBnsDESVOs = aBnsDesVO;
    }
    else
    {
        self.iBnsDESVOs = [NSMutableArray arrayWithObject:aBnsDesVO];
    }
}

/*!
 @method
 @abstract 缓存当前的请求
 @discussion 由于目前没有请求队列，若当前请求发起后session过期，则http handler会自动重新执行登陆请求，
 请求成功后会重发本次session过期的请求，所以需要缓存当前的请求
 @param aBnsDesVO 发请求方传入的业务描述vo
 @result
 */
-(void)tempHoldRequestInfoByData:(id)aData
                          method:(NSNumber *)aMehtod
                        delegate:(id<MWAHTTPNotify>)aDelegate
                          bnsVOs:(id)aBnsDesVOs
                   componenttype:(NSNumber *)compType;
{
    NSMutableDictionary *mdict = [[NSMutableDictionary alloc]init];
    [mdict setObject:aData forKey:WA_HTTP_TK_DATA];
    [mdict setObject:aMehtod forKey:WA_HTTP_TK_METHOD];
    [mdict setObject:aDelegate forKey:WA_HTTP_TK_DG];
    [mdict setObject:aBnsDesVOs forKey:WA_HTTP_TK_BNS];
    [mdict setObject:compType forKey:WA_HTTP_TK_comp];
    self.iPreviousRQInfo = mdict;
    [mdict release];
}

# pragma mark handler 开放给各业务的 发起请求服务
/*!
 @method
 @abstract 发起post请求 (单component单actiontype)
 @discussion 自动封装请求，设置代理，触发请求
 @param aServlet 请求对应的servlet
 @param aBaseVO 业务vo数据 (voDictionary 属性中包含了需要用于拼装到请求上的业务数据KV)
 @param aDelegate 请求通知（用来接收请求进度通知）
 @param aMehtod 请求方式（普通请求，上传，下载 详情对应WAHTTPDef.h中的 HTTP_METHOD 枚举）
 @param aBnsDesVO 请求描述vo 用来描述componentid 和 actiontype信息
 @result
 */
-(void) firePostRequestWithBodyData:(CWABaseVO*)aBaseVO
                           delegate:(id<MWAHTTPNotify>)aDelegate
                             mehtod:(NSInteger)aMethod
                              bnsVO:(id)aBnsDesVO
{
    [aBaseVO retain];
    //缓存当前请求
    [self tempHoldRequestInfoByData:aBaseVO method:[NSNumber numberWithInt:aMethod] delegate:aDelegate
                             bnsVOs:aBnsDesVO componenttype:
     [NSNumber numberWithInt:SINGLE_COMP_SINGLE_AT]];
    NSString *aServlet = [[NSString alloc]initWithString:WA_HTTP_WASERVLET_KEY];
    //构造请求body
    NSDictionary *aDict =(NSDictionary *)[(CWABaseVO*)[self constructRequestBodyByBaseVO:aBaseVO andBnsDescVO:aBnsDesVO] voDictionary];
    
    //初始化CWAHTTP
    CWAHTTP *aHttp=nil;
    aHttp=[self initCWAHTTP:aHttp andServlet:aServlet];
    [aServlet release];
    
    if (aHttp)
    {
        //缓存当前请求业务描述BnsDesVO信息
        [self saveBnsDesVOs:aBnsDesVO];
        //发起请求
        [self httpRequest:aHttp WithBodyData:aDict delegate:aDelegate method:aMethod];
    }
    [aHttp release];
    [aBaseVO release];
}

/*!
 @method
 @abstract 发起post请求 (单component多actiontype)
 @discussion 自动封装请求，设置代理，触发请求
 @param aServlet 请求对应的servlet
 @param aBaseVOs 一组传输vo
 每个vo对应一个actiontype
 (vo中的voDictionary 属性中包含了需要用于拼装到请求上的业务数据KV)
 @param aDelegate 请求通知（用来接收请求进度通知）
 @param aMehtod 请求方式（普通请求，上传，下载 详情对应WAHTTPDef.h中的 HTTP_METHOD 枚举）
 @param aBnsDesVO 请求描述vo 用来描述componentid 和 actiontype信息
 @result
 */
-(void)firePostRequestWithMAOCBodyData:(NSArray*)aBaseVOs
                              delegate:(id<MWAHTTPNotify>)aDelegate
                                mehtod:(NSInteger)aMethod
                                 bnsVO:(id)aBnsDesVO
{    [aBaseVOs retain];
    //缓存当前请求信息
    [self tempHoldRequestInfoByData:aBaseVOs method:[NSNumber numberWithInt:aMethod] delegate:aDelegate
                             bnsVOs:aBnsDesVO componenttype:[NSNumber numberWithInt:SINGLE_COMP_MULTI_AT]];
    NSString *aServlet = [[NSString alloc]initWithString:WA_HTTP_WASERVLET_KEY];
    //构造请求body
    NSDictionary *aDict =  [(CWABaseVO*)[self constructOneComponentMutiActionBody:aBaseVOs withBnsDescVO:aBnsDesVO] voDictionary];
    [aBaseVOs release];
    //初始化CWAHTTP
    CWAHTTP *aHttp=nil;
    // 根据当前servlet 初始化 CWAHTTP
    aHttp=[self initCWAHTTP:aHttp andServlet:aServlet];
    [aServlet release];
    if (aHttp)
    {
        //缓存当前请求业务描述BnsDesVO信息
        [self saveBnsDesVOs:aBnsDesVO];
        //发起请求
        [self httpRequest:aHttp WithBodyData:aDict delegate:aDelegate method:aMethod];
    }
    [aHttp release];
}




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
-(void)firePostRequestMutliComponentVOData:(NSDictionary *)voData
                                  delegate:(id<MWAHTTPNotify>)aDelegate
                                    mehtod:(NSInteger)aMethod
                                     bnsVO:(NSArray *)aBnsDesVO
{
    [voData retain];
    //缓存当前请求信息
    [self tempHoldRequestInfoByData:voData method:[NSNumber numberWithInt:aMethod]
                           delegate:aDelegate bnsVOs:aBnsDesVO componenttype:
     [NSNumber numberWithInt:MULTI_COMP]];
    NSString *aServlet = [[NSString alloc]initWithString:WA_HTTP_WASERVLET_KEY];
    //构造请求body
    NSDictionary *aDict =  [(CWABaseVO*)[self constructMultiComponentBodyData:voData bnsDesVO:aBnsDesVO] voDictionary];
    [voData release];
    //初始化CWAHTTP
    CWAHTTP *aHttp=nil;
    // 根据当前servlet 初始化 CWAHTTP
    aHttp=[self initCWAHTTP:aHttp andServlet:aServlet];
    [aServlet release];
    if (aHttp)
    {
        //缓存当前请求业务描述BnsDesVO信息
        [self saveBnsDesVOs:aBnsDesVO];
        //发起请求
        [self httpRequest:aHttp WithBodyData:aDict delegate:aDelegate method:aMethod];
    }
    
    [aHttp release];
}

//session过期重登陆完成后重新发起业务请求
-(void) reFireLastRequest
{
    
    NSDictionary *previousData = self.iPreviousRQInfo;
    NSNumber *methodType = [previousData objectForKey:WA_HTTP_TK_comp];
    id bodyData = [previousData objectForKey:WA_HTTP_TK_DATA];
    NSInteger method = [(NSNumber *)[previousData objectForKey:WA_HTTP_TK_METHOD] intValue];
    id bnsvos = [previousData objectForKey:WA_HTTP_TK_BNS];
    id<MWAHTTPNotify> preDelegate = [previousData objectForKey:WA_HTTP_TK_DG];
    //根据上一次的请求方式重新分发请求
    if ([methodType intValue]==SINGLE_COMP_SINGLE_AT)
    {
        [self firePostRequestWithBodyData:bodyData delegate:preDelegate mehtod:method bnsVO:bnsvos];
    }
    else if ([methodType intValue]==SINGLE_COMP_MULTI_AT)
    {
        [self firePostRequestWithMAOCBodyData:bodyData delegate:preDelegate mehtod:method bnsVO:bnsvos];
    }
    else if ([methodType intValue]==MULTI_COMP)
    {
        [self firePostRequestMutliComponentVOData:bodyData delegate:preDelegate mehtod:method bnsVO:bnsvos];
    }
    self.iPreviousRQInfo=nil;
}

# pragma mark 登陆相关
/*!
 @method
 @abstract 登陆请求body信息的拼装
 @discussion 基于请求传输vo和业务描述vo 拼装请求body
 @param aBaseVOs 请求传输vo数组 其中每个vo的voDictionary属性中包含请求parameters
 @param aBnsDesVOs 业务描述vo数组 每个vo分别描述请求业务组件和actiontype
 @result
 */
-(NSDictionary *)constructLoginRequestBody:(id)aBaseVOs
                                  andBnsVO:(id)aBnsDesVOs
                                  withDict:(NSMutableDictionary *)mdict
{
    
    NSMutableDictionary *subMdict = [[NSMutableDictionary alloc]init];
    NSMutableArray *arrComponent = [[NSMutableArray alloc]init];
    // 增加 enterpriseid
    NSMutableDictionary *sessiondDic = [[NSMutableDictionary alloc]initWithObjectsAndKeys:@"",WA_HTTP_PRELOGIN_EPID, nil];
    // 循环包装组件信息和parameters
    for ( int i=0; i<[aBaseVOs count]; i++ )
    {
        CWABaseVO *bvo = [aBaseVOs objectAtIndex:i];
        CWABnsDesVO *bizvo = [aBnsDesVOs objectAtIndex:i];
        NSMutableArray *marr = [[NSMutableArray alloc]init];
        NSMutableDictionary *bvoDict = [bvo voDictionary];
        
        
        //parameter部分
        [bvoDict enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
            //device信息
            if ( [key isEqualToString:WA_HTTP_LOGIN_DEVICEINFO] )
            {
                [subMdict setObject:obj forKey:key];
            }
            else if ([key isEqualToString:WA_HTTP_LOGIN_SERVICELOGININFO])
            {
                if (obj)
                {
                    [sessiondDic setObject:obj forKey:WA_HTTP_LOGIN_SERVICELOGININFO];
                }
            }
            else
            {
                NSMutableDictionary *tempDict = [[NSMutableDictionary alloc]init];
                [tempDict setObject:key forKey:WA_HTTP_STRID_KEY];
                [tempDict setObject:obj forKey:WA_HTTP_VALUE_KEY];
                [marr addObject:tempDict];
                [tempDict release];
            }
        } ];
        
        NSMutableDictionary *paramDict = [[NSMutableDictionary alloc] init];
        [paramDict setValue:marr forKey:WA_HTTP_PARAMS_KEY];
        [marr release];
        NSMutableDictionary *reqpDict = [[NSMutableDictionary alloc] init];
        [reqpDict setValue:paramDict forKey:WA_HTTP_REQPARAMS_KEY];
        [paramDict release];
        NSMutableDictionary *actionsDict = [[NSMutableDictionary alloc] init];
        [actionsDict setValue:reqpDict forKey:WA_HTTP_ACTION_KEY];
        [reqpDict setValue:[[bizvo iActionTypes] objectAtIndex:0]forKey:WA_HTTP_ACTIONTYPE_KEY];
        [reqpDict release];
        
        NSMutableDictionary *componentDict = [[NSMutableDictionary alloc]init];
        [componentDict setValue:actionsDict forKey:WA_HTTP_ACTIONS_KEY];
        [componentDict setValue:[bizvo iComponentID] forKey:WA_HTTP_COMPONENTID_KEY];
        [actionsDict release];
        [arrComponent addObject:componentDict];
        [componentDict release];
    }
    [subMdict setObject:sessiondDic forKey:WA_HTTP_SESSION_KEY];
    [sessiondDic release];
    [subMdict setValue:arrComponent forKey:WA_HTTP_WACOMPONENT_KEY];
    [arrComponent release];
    [mdict setObject:subMdict forKey:WA_HTTP_WACOMPONENTS_KEY];
    [subMdict release];

    return mdict;
}

/*!
 @method
 @abstract 发起登陆post请求
 @discussion 自动封装请求，设置代理，触发请求
 @param aServlet 请求对应的servlet
 @param aBaseVO 业务vo数组 httphandler将多组建信息合并到一个传输vo中
 (各vo中voDictionary 属性中包含了需要用于拼装到请求上的业务数据KV)
 @param aDelegate 请求通知（用来接收请求进度通知）
 @param aMehtod 请求方式（普通请求，上传，下载 详情对应WAHTTPDef.h中的 HTTP_METHOD 枚举）
 @param aBnsDesVOs 请求描述vo 用来描述componentid 和 actiontype信息
 @result
 */
-(void)LoginPostRequestByServelet:(NSString*)aServlet
                       WithBaseVO:(CWABaseVO*)aBaseVO
                         delegate:(id<MWAHTTPNotify>)aDelegate
                           mehtod:(NSInteger)aMethod
                           bnsVOs:(id)aBnsDesVOs
{
    
    //已构造好的请求body数据
    NSDictionary *aDict = (NSDictionary*)[aBaseVO voDictionary];
    
    CWAHTTP *aHttp=nil;
    // 根据当前servlet 初始化 CWAHTTP
    aHttp=[self initCWAHTTP:aHttp andServlet:aServlet];
    
    if (aHttp)
    {
        //缓存当前请求业务描述BnsDesVO信息
        [self saveBnsDesVOs:aBnsDesVOs];
        
        //如果登陆前有其他请求，不管请求结果直接取消请求
        [sharedInstance clearDelegateAndCancelRequest];
        //发起请求
        [sharedInstance httpRequest:aHttp WithBodyData:aDict delegate:aDelegate method:aMethod];
    }
    
    [aHttp release];
}


-(NSDictionary *) constructMultiComponetMultiActionTypeLogin:(id)baseVOs
                                                   andBnsVOs:(id)bnsDesVOs
{
    
    NSMutableDictionary *dic = [NSMutableDictionary dictionaryWithObject:[NSNull null] forKey:WA_HTTP_WACOMPONENTS_KEY];
    
    __block NSMutableDictionary *componentsDict = [[NSMutableDictionary alloc]init];
    
    // 增加 enterpriseid
    NSMutableDictionary *sessiondDic = [[NSMutableDictionary alloc]
                                        initWithObjectsAndKeys:@"",WA_HTTP_PRELOGIN_EPID, nil];
    
    
    NSMutableArray *componentArray = [[NSMutableArray alloc] init];
    for (int i=0; i<[baseVOs count]; i++)
    {
        
        CWABnsDesVO *bnsVO = [(NSArray*)bnsDesVOs objectAtIndex:i];
        NSMutableDictionary *componentDict = [[NSMutableDictionary alloc]init];
        [componentDict setValue:bnsVO.iComponentID forKey:WA_HTTP_COMPONENTID_KEY];
        CWABaseVO *basevo = [(NSArray *)baseVOs objectAtIndex:i];
        NSDictionary *paramDictionary = basevo.voDictionary;
        NSMutableDictionary *actionsDict = [[NSMutableDictionary alloc] init];
        
        __block NSMutableArray *actionTypesArray = [[NSMutableArray alloc]init];
        if (bnsVO.iComponentID && [bnsVO.iComponentID isEqualToString:WA_HTTP_LOGIN_COMPONENTID])
        {
            NSMutableDictionary *actionDict = [[NSMutableDictionary alloc] init];
            [actionDict setValue:[bnsVO.iActionTypes objectAtIndex:0]  forKey:WA_HTTP_ACTIONTYPE_KEY];
            NSMutableDictionary *paramsDict =[[NSMutableDictionary alloc]init];
            __block NSMutableArray *paramArray = [[NSMutableArray alloc] init];
            [paramDictionary enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
                if ([key isEqualToString:WA_HTTP_LOGIN_DEVICEINFO])
                {
                    [componentsDict setValue:obj forKey:key];
                }
                else if ([key isEqualToString:WA_HTTP_LOGIN_SERVICELOGININFO])
                {
                    if (obj)
                    {
                        [sessiondDic setObject:obj forKey:WA_HTTP_LOGIN_SERVICELOGININFO];
                    }
                }
                else
                {
                    NSMutableDictionary *paramDict = [[NSMutableDictionary alloc]init];
                    [paramDict setValue:key forKey:WA_HTTP_STRID_KEY];
                    [paramDict setValue:obj forKey:WA_HTTP_VALUE_KEY];
                    [paramArray addObject:paramDict];
                    [paramDict release];
                }
            }];
            
            [paramsDict setValue:paramArray forKey:WA_HTTP_PARAMS_KEY];
            [actionDict setValue:paramsDict forKey:WA_HTTP_REQPARAMS_KEY];
            [paramsDict release];
            [actionTypesArray addObject:actionDict];
            [actionDict release];
            [actionsDict setValue:actionTypesArray forKey:WA_HTTP_ACTION_KEY];
            [actionTypesArray release];
            [componentDict setValue:actionsDict forKey:WA_HTTP_ACTIONS_KEY];
            [actionsDict release];
            [paramArray release];
        }
        else
        {
            //迭代voDictionary中每个actiontype
            [paramDictionary enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
                NSMutableDictionary *actionDict = [[NSMutableDictionary alloc] init];
                
                NSDictionary  *params = (NSDictionary *)obj;
                NSMutableDictionary *paramsDict =[[NSMutableDictionary alloc]init];
                __block NSMutableArray *paramArray = [[NSMutableArray alloc] init];
                
                [actionDict setValue:key forKey:WA_HTTP_ACTIONTYPE_KEY];
                // 迭代每个actiontypes里的params
                [params enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
                    
                    NSMutableDictionary *paramDict = [[NSMutableDictionary alloc]init];
                    [paramDict setValue:key forKey:WA_HTTP_STRID_KEY];
                    [paramDict setValue:obj forKey:WA_HTTP_VALUE_KEY];
                    [paramArray addObject:paramDict];
                    [paramDict release];
                }];
                
                [paramsDict setValue:paramArray forKey:WA_HTTP_PARAMS_KEY];
                [actionDict setValue:paramsDict forKey:WA_HTTP_REQPARAMS_KEY];
                [paramsDict release];
                [actionTypesArray addObject:actionDict];
                [actionDict release];
                [paramArray release];
                
            }];
            [actionsDict setValue:actionTypesArray forKey:WA_HTTP_ACTION_KEY];
            [actionTypesArray release];
            [componentDict setValue:actionsDict forKey:WA_HTTP_ACTIONS_KEY];
            [actionsDict release];
        }
        [componentArray addObject:componentDict];
        [componentDict release];
    }
    [componentsDict setObject:sessiondDic forKey:WA_HTTP_SESSION_KEY];
    [sessiondDic release];
    [componentsDict setValue:componentArray forKey:WA_HTTP_WACOMPONENT_KEY];
    [componentArray release];
    [dic setValue:componentsDict forKey:WA_HTTP_WACOMPONENTS_KEY];
    [componentsDict release];
    
    return dic;
}

/*!
 @method
 @abstract 发起post请求 (登录)
 @discussion 自动封装请求，设置代理，触发请求
 @param aServlet 请求对应的servlet
 @param aBaseVOs  (每个vo代表一个component 每个voDictionary 属性中包含了需要用于拼装到请求上的参数KV)
 @param aDelegate 请求通知（用来接收请求进度通知）
 @param aBnsDesVOs 请求描述vo 用来描述componentid 和 actiontype信息 每个vo代表一个component
 @result
 */
-(void)firePostLoginRequestWithBodyData:(NSArray *)aBaseVOs
                               delegate:(id<MWAHTTPNotify>)aDelegate
                                  bnsVO:(NSArray *)aBnsDesVOs
{
    
    NSString *aServlet = [[NSString alloc]initWithString:WA_HTTP_WALOGINSERVLET_COMPONENT_KEY];
    self.iCurrentServerlet = aServlet;
    if ( [aBnsDesVOs isKindOfClass:[NSArray class]] && [aBaseVOs isKindOfClass:[NSArray class]] )
    {
        if (sharedInstance.iSession_id && ![sharedInstance.iSession_id isEqualToString:@""])
        {
            [sharedInstance setISession_id:nil];
        }
        
        NSMutableArray *arr = (NSMutableArray*)aBnsDesVOs;
        NSMutableArray *arrBvos = (NSMutableArray*)aBaseVOs;
        if ( [arr count] == [arrBvos count])
        {
            if ( [arr count]>=1 )
            {
                /*对flag判断 看是否存在多actiontype*/
                __block BOOL flag = YES;
                NSArray *bnsArray=(NSArray *)aBnsDesVOs;
                [bnsArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
                    if ([[(CWABnsDesVO *)obj iActionTypes] count]>1)
                    {
                        flag = NO;
                        *stop =YES;
                    }
                }];
                /******************/
                if (flag)
                {
                    NSMutableDictionary *voDictionary=[[NSMutableDictionary alloc]init];
                    [self constructLoginRequestBody:aBaseVOs andBnsVO:aBnsDesVOs withDict:voDictionary];
                    CWABaseVO *baseVO = [CWABaseVO  baseVOWithDictionary:voDictionary];
                    [self LoginPostRequestByServelet:aServlet WithBaseVO:baseVO delegate:aDelegate mehtod:(RQ_METHOD)NORMAL bnsVOs:arr];
                    [voDictionary release];
                }
                else
                {
                    NSDictionary *voDictionary =[self constructMultiComponetMultiActionTypeLogin:aBaseVOs andBnsVOs:aBnsDesVOs];
                    CWABaseVO *baseVO = [CWABaseVO  baseVOWithDictionary:voDictionary];
                    [self LoginPostRequestByServelet:aServlet WithBaseVO:baseVO delegate:aDelegate mehtod:(RQ_METHOD)NORMAL bnsVOs:arr];
                }
            }
        }
        else
        {
            //抛错，所传vo与业务描述vo个数不符
        }
    }
    [aServlet release];
}

/*!
 @method
 @abstract 发起注销请求
 @discussion 只发起注销请求清空httphandler session id 原则上不处理返回值不发送事件通知
 @param aServlet 注销请求servlet
 @param aDelegate 注销事件通知代理
 @result
 */
-(void)fireLogOutRequestWithDelegate:(id<MWAHTTPNotify>)aDelegate __attribute__((deprecated))
{
    NSString *aServlet = [[NSString alloc]initWithString:WA_HTTP_WALOGOUTSERVLET_COMPONENT_KEY];
    //清空本地session
    self.iSession_id=nil;
    [aServlet release];
}

//发起注销请求
-(void)firePostLogOutRequestWithBodyData:(NSDictionary *)voData
                                delegate:(id <MWAHTTPNotify>)aDelegate
                                   bnsVO:(NSArray *)aBnsDesVOs
{
    [voData retain];
    
    NSString *aServlet = [[NSString alloc]initWithString:WA_HTTP_WALOGOUTSERVLET_COMPONENT_KEY];
    
    //构造请求body
    NSDictionary *aDict =  [(CWABaseVO*)[self constructMultiComponentBodyData:voData bnsDesVO:aBnsDesVOs] voDictionary];
    [voData release];
    
    //清空本地session
    self.iSession_id=nil;
    
    //初始化CWAHTTP
    CWAHTTP *aHttp=nil;
    // 根据当前servlet 初始化 CWAHTTP
    aHttp=[self initCWAHTTP:aHttp andServlet:aServlet];
    [aServlet release];
    if (aHttp)
    {
        //缓存当前请求业务描述BnsDesVO信息
        [self saveBnsDesVOs:aBnsDesVOs];
        //发起请求
        [self httpRequest:aHttp WithBodyData:aDict delegate:aDelegate method:(RQ_METHOD)NORMAL];
    }
    // 清除 待本地存储的登陆信息登陆缓存
    [[CWACommonInfoVO sharedManager] setILoginInfoForUserName:nil];
    
    [aHttp release];
}

// 发起预登陆连接请求
-(void)firePreConnectWithDelegate:(id<MWAHTTPNotify>)aDelegate
{
    NSString *aServlet =[[NSString alloc]initWithString:WA_HTTP_WAPRELOGINSERVLET_COMPONENT_KEY];
    self.iCurrentServerlet=aServlet;
    CWAHTTP *aHttp=nil;
    // 服务器地址为空
    if ( ! self.iHttpUrl )
    {
        NSError *error = [NSError errorWithDomain:NSLocalizedStringFromTable(@"WA_HTTP_NULL_URL",@"btarget_HTTPCommon", nil)
                                             code:NULL_URL
                                         userInfo:nil];
        [self notifyFailedRequest:nil error:error];
        [aServlet release];
        return;
    }
    
    NSString *aUrl=nil;
    if ( aServlet || iServletAppend )
    {
        aUrl = [NSMutableString stringWithFormat:@"%@%@",self.iHttpUrl,aServlet];
    }
    else
    {
        aUrl=self.iHttpUrl;
    }
    //初始化CWAHTTP
    aHttp = [[CWAHTTP alloc] initWaRequestWithStringUrl:aUrl type:(HTTP_TYPE)POST];
    
    [aServlet release];
    
    [self httpRequest:aHttp WithBodyData:nil delegate:aDelegate method:(RQ_METHOD)PRE_CONNECTION];
    
    [aHttp release];
}

//获取当前帐套类型请求
-(void)fireGetAccountsTypeWithDelegate:(id<MWAHTTPNotify>)aDelegate
{
    // servelet
    NSString *aServlet =[[NSString alloc]initWithString:WA_HTTP_WAACCOUNTSERVLET_COMPONENT_KEY];
    self.iCurrentServerlet=aServlet;
    CWAHTTP *aHttp=nil;
    
    if ( ! self.iHttpUrl )
    {
        NSError *error = [NSError errorWithDomain:NSLocalizedStringFromTable(@"WA_HTTP_NULL_URL",@"btarget_HTTPCommon", nil)
                                             code:NULL_URL
                                         userInfo:nil];
        [self notifyFailedRequest:nil error:error];
        [aServlet release];
        return;
    }
    
    NSString *aUrl=nil;
    if ( aServlet || iServletAppend )
    {
        aUrl = [NSMutableString stringWithFormat:@"%@%@",self.iHttpUrl,aServlet];
    }
    else
    {
        aUrl=self.iHttpUrl;
    }
    //初始化CWAHTTP
    aHttp = [[CWAHTTP alloc] initWaRequestWithStringUrl:aUrl type:(HTTP_TYPE)POST];
    
    [aServlet release];
    
    [self httpRequest:aHttp WithBodyData:nil delegate:aDelegate method:(RQ_METHOD)PRE_CONNECTION];
    
    [aHttp release];
}

/*!
 @method
 @abstract 发起获取登陆帐套请求
 @discussion 因为预登陆连接信息通过http header与wa 进行交互信息 所以不需要请求参数
 @param voData 获取帐套请求参数vo
 @param aDelegate 获取帐套请求通知代理
 @param aBnsDesVOs 获取帐套请求业务描述vo
 @result
 */
-(void)fireGetLoginAccountWithBodyData:(CWABaseVO *)aBaseVO
                              delegate:(id <MWAHTTPNotify>)aDelegate
                                 bnsVO:(id)aBnsDesVO
{
    
    [aBaseVO retain];
    
    NSString *aServlet = [[NSString alloc]initWithString:WA_HTTP_WAUNNEEDEDLOGINSERVLET_COMPONENT_KEY];
    self.iCurrentServerlet = aServlet;
    //构造请求body
    NSDictionary *aDict =(NSDictionary *)[(CWABaseVO*)[self constructRequestBodyByBaseVO:aBaseVO
                                                                            andBnsDescVO:aBnsDesVO] voDictionary];
    
    //初始化CWAHTTP
    CWAHTTP *aHttp=nil;
    // 根据当前servlet 初始化 CWAHTTP
    aHttp=[self initCWAHTTP:aHttp andServlet:aServlet];
    
    [aServlet release];
    
    if (aHttp)
    {
        //缓存当前请求业务描述BnsDesVO信息
        [self saveBnsDesVOs:aBnsDesVO];    //发起请求
        [self httpRequest:aHttp WithBodyData:aDict delegate:aDelegate method:(RQ_METHOD)NORMAL];
    }
    
    [aHttp release];
    [aBaseVO release];
}

# pragma mark 获取&设置session_id
/*!
 @method
 @abstract 保存seesion_id
 @discussion 登陆后可获取到session id，将此id保存
 @result
 */
-(void)putSession_id
{
    
    if (! self.iSession_id || [self.iSession_id length]<=0 )
    {
        NSString *rpString =[self iRespStringValue];
        @try
        {
            NSDictionary *session = [CWAJSONParserUtils getValueFromJson:[CWAJSONParserUtils parserWithNSString:rpString] ForKeyPath:@"wacomponents.session"];
            [self setISession_id:[session objectForKey:WA_HTTP_ID_kEY]];
        }
        @catch (NSException *exception)
        {
            [self logException:exception];
            
        }
        @finally
        {
        }
    }
    
}


# pragma mark 取消请求，注销代理
/*!
 @method
 @abstract 取消请求、注销代理
 @discussion 对请求进行处理 包括设置同步异步、超时时间、重新请求次、设置代理
 @result
 */
-(void)clearDelegateAndCancelRequest
{
    
    //  if( [[sharedInstance.mainHttp iHttpRequest] isExecuting] )
    //  {
    [self setDelegate:nil];
    if(self.mainHttp && [self.mainHttp iHttpRequest])
    {
        [[self.mainHttp iHttpRequest] clearDelegatesAndCancel];
    }
    if (self.mainHttp && [self.mainHttp iHttpRequest])
    {
        // 清除持有的请求
        self.mainHttp.iHttpRequest=nil;
    }
    //  }
}

# pragma mark request finished错误信息处理
/*!
 @method
 @abstract 处理从RequestFinished中捕捉的返回值中的常见Http异常结果
 @discussion 目前已处理的为 http 404,500返回值，如果捕捉了以上的错误信息通知代理请求失败并且注销自身的代理取消请求
 @param aRequest response
 @result
 */
-(BOOL)dealingCommonHttpStatus:(ASIHTTPRequest*)aRequest
{
    BOOL status=NO;
    int statuscode=[aRequest responseStatusCode];
    
    if ( 404 == statuscode )
    {
        // 找不到服务
        NSError *error = [NSError errorWithDomain:NSLocalizedStringFromTable(@"WA_HTTP_NOSERVICE",@"btarget_HTTPCommon", nil)
                                             code:(HTTP_ERROR_CODE)HTTP_404
                                         userInfo:nil];
        //通知请求失败
        [self notifyFailedRequest:self.mainHttp];
        [self notifyFailedRequest:self.mainHttp error:error];
        //中止请求注销代理
        [self clearDelegateAndCancelRequest];
        status=YES;
    }
    else if( 500 == statuscode )
    {

        // 系统发生异常
        NSError *error =[NSError errorWithDomain:NSLocalizedStringFromTable(@"WA_HTTP_WRONGPARAM",@"btarget_HTTPCommon", nil)
                                            code:(HTTP_ERROR_CODE)HTTP_500
                                        userInfo:nil];
        //通知请求失败
        [self notifyFailedRequest:self.mainHttp];
        [self notifyFailedRequest:self.mainHttp error:error];
        //中止请求注销代理
        [self clearDelegateAndCancelRequest];
        status=YES;
    }
    
    return status;
}

#pragma mark session过期重登陆
-(void) dealingSessionOutDateReLogin
{
    if ( !self.iSessionOutRelogin )
    {
        NSDictionary *loginInfo = [CWALocalStorageHandler constructLoginRequestDic];
        CWABaseVO *loginRQVO = [loginInfo objectForKey:WA_LOCALSTORAGE_KBASEVO];
        CWABnsDesVO *loginBNSVO = [loginInfo objectForKey:WA_LOCALSTORAGE_KBNSVO];
        self.iSessionOutRelogin = YES;
        
        [self firePostLoginRequestWithBodyData:[NSArray arrayWithObjects:loginRQVO, nil] delegate:nil
                                         bnsVO:[NSArray arrayWithObjects:loginBNSVO, nil]];
    }
}

//session过期 重登陆失败 直接通知退出程序
-(void)directlyNotifySessionOutReloginFail
{
    self.iSessionOutRelogin=NO;
    self.iPreviousRQInfo=nil;
    // 与服务器失去连接 请重新登陆
    NSError *error= [NSError errorWithDomain:NSLocalizedStringFromTable(@"WA_HTTP_SOTRELOGINFAIL",@"btarget_HTTPCommon", nil)
                                        code:(HTTP_ERROR_CODE)SESSION_TOUT
                                    userInfo:nil];
    [self notifySessionTimeOut:nil error:error];
    return;
}
/*!
 @method
 @abstract 处理从RequestFinished中捕捉的不属于 wa server的响应
 @discussion  比如输入了错误请求地址等获取到了非关心的返回值
 如果捕捉了以上的错误信息通知代理请求失败并且注销自身的代理取消请求
 @param aRequest response
 @result
 */
-(BOOL)dealingUnProperResponse:(ASIHTTPRequest*)aRequest
{
    BOOL status=NO;
    NSDictionary *headerDict=[aRequest responseHeaders];
    
    if ( headerDict && [headerDict count]>0 )
    {
        if (![headerDict objectForKey:WA_HTTP_WAHEADER_APPSERVER])
        {
            // 无法获取服务，服务地址出错!
            NSError *error= [NSError errorWithDomain:NSLocalizedStringFromTable(@"WA_HTTP_WRONGURL",@"btarget_HTTPCommon", nil)
                                                code:(HTTP_ERROR_CODE)WRONG_URL
                                            userInfo:nil];
            //通知请求失败
            [self notifyFailedRequest:self.mainHttp error:error];
            //中止请求注销代理
            [self clearDelegateAndCancelRequest];
            status=YES;
        }
        
        if ([headerDict objectForKey:WA_HTTP_WAHEADER_TTNS])
        {
            // 请求异常 请联系管理员
            NSError *error= [NSError errorWithDomain:NSLocalizedStringFromTable(@"WA_HTTP_TTNS",@"btarget_HTTPCommon", nil)
                                                code:(HTTP_ERROR_CODE)TTNS_ERROR
                                            userInfo:nil];
            [self notifyFailedRequest:self.mainHttp error:error];
            [self clearDelegateAndCancelRequest];
            status=YES;
        }
        
        if ( [headerDict objectForKey:WA_HTTP_WAHEADER_SESSIONTIMEOUT] )
        {
            //            NSError *error= [NSError errorWithDomain:WA_HTTP_SESSIONTOUT code:(HTTP_ERROR_CODE)SESSION_TOUT userInfo:nil];
            //清空现有session id
            self.iSession_id=nil;
            if (self.iSessionOutRelogin && !self.iSession_id)
            {
                [self directlyNotifySessionOutReloginFail];
            }
            else
            {
                [self dealingSessionOutDateReLogin];
            }
            
            //通知处理session超时的代理
            //            [self notifySessionTimeOut:self.mainHttp error:error];
            //中止请求注销代理
            //            [self clearDelegateAndCancelRequest];
            status=YES;
        }
    }
    
    return status;
}
// 从请求头信息返回得header中 获取accountsType 来决定是u8多帐套 还是其他
-(void)dealingAccountsTypeByResponesHearder:(NSDictionary *)header
{
#if !defined (APP_TYPE_U8)
    NSInteger accounttype = ((CWACommonInfoVO *)[CWACommonInfoVO sharedManager]).iAccountType;
    // 判断wa是否返回了 帐套类型（即是u8多张套 还是其他等）
    if ([header objectForKey:WA_HTTP_WAHEADER_ACCOUNTTYPE_C])
    {
        accounttype = (NSInteger)[[header objectForKey:WA_HTTP_WAHEADER_ACCOUNTTYPE_C]intValue];
    }
    else if([header objectForKey:WA_HTTP_WAHEADER_ACCOUNTTYPE_L])
    {
        accounttype = (NSInteger)[[header objectForKey:WA_HTTP_WAHEADER_ACCOUNTTYPE_L]intValue];
    }
    
    // 不存在accounttype信息表示当前访问的是未支持Accounttype的旧WA 默认设置为其他类型
    else
    {
        [CWACommonInfoVO setAccountType:(WAAccountType)WA_ACCOUNTTYPE_OTHER];
    }
    
    // 判断当前wa通知的系统类型
    switch (accounttype)
    {
        case 1:// u8
            [CWACommonInfoVO setAccountType:(WAAccountType)WA_ACCOUNTTYPE_U8];
            break;
        case 2:// 非u8
            [CWACommonInfoVO setAccountType:(WAAccountType)WA_ACCOUNTTYPE_OTHER];
        default:
            break;
    }
#endif
}

-(NSDictionary *) dealingPreConnectionResponse:(ASIHTTPRequest*)aRequest
{
    NSMutableDictionary *dict =nil;
    if ([self.iCurrentServerlet isEqualToString:WA_HTTP_WAPRELOGINSERVLET_COMPONENT_KEY])
    {
        NSDictionary *header = [aRequest responseHeaders];
        // 如果本地定义了帐套类型宏 则不再执行如下内容
        [self dealingAccountsTypeByResponesHearder:header];
        
        dict = [NSMutableDictionary dictionaryWithObject:[NSNull null] forKey:WA_HTTP_H_APPHV];
        [dict setValue:[NSNull null] forKey:WA_HTTP_H_APPUV];
        [dict setValue:[NSNull null] forKey:WA_HTTP_H_APPUN];
        [dict setValue:[NSNull null] forKey:WA_HTTP_H_UPDATEURL];
        // 默认version为61因为没有 appversion这个key也表示是nc61
        [dict setValue:nc61_version forKey:WA_HTTP_H_APPVERSION];
        
        [header enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
            
            if ([key isEqualToString:WA_HTTP_H_APPUV_C] || [key isEqualToString:WA_HTTP_H_APPUV])
            {
                [dict setValue:obj forKey:WA_HTTP_H_APPUV];
            }
            else if ([key isEqualToString:WA_HTTP_H_APPHV_C] || [key isEqualToString:WA_HTTP_H_APPHV])
            {
                [dict setValue:obj forKey:WA_HTTP_H_APPHV];
            }else if ([key isEqualToString:WA_HTTP_H_APPUN_C] ||[key isEqualToString:WA_HTTP_H_APPUN])
            {
                [dict setValue:obj forKey:WA_HTTP_H_APPUN];
            }else if ([key isEqualToString:WA_HTTP_H_UPDATEURL_C] ||[key isEqualToString:WA_HTTP_H_UPDATEURL])
            {
                [dict setValue:obj forKey:WA_HTTP_H_UPDATEURL];
            }
            else if ([key isEqualToString:WA_HTTP_H_APPVERSION_C] || [ key isEqualToString:WA_HTTP_H_APPVERSION]  )
            {
                if (obj && ![obj isEqualToString:@""] && ![obj isEqualToString:[[NSNull null] description]]) {
                    [dict setValue:obj forKey:WA_HTTP_H_APPVERSION];
                }
            }
        }];
    }
    
    return (NSDictionary *)dict;
}

// 处理正常请求的返回值
- (void)dealingWithNormalRequestResponse:(ASIHTTPRequest *)aRequest
{
    NSString *responseString = [self.mainHttp getAppUpdateResponseString];
    NSData  *base64Data = [GTMBase64 decodeString:responseString];
    NSString *decryptedStr = [[NSString alloc] initWithData:base64Data encoding:NSUTF8StringEncoding];
    //通知请求完成传递NSString返回值
    if( self.delegate && [self.delegate respondsToSelector:@selector(requestFinishedWithResponseString:)] )
    {

        [self.delegate performSelector:@selector(requestFinishedWithResponseString:) withObject:decryptedStr];
    }
    [decryptedStr release];
    return;
}

#pragma mark 返回值提取成BaseVO,返回值预处理
/*!
 @method
 @abstract 针对单个actiontype 组装CWAResponseMsg 返回值描述信息 （单servicecode已处理 多servicecode未处理）
 @discussion
 @param aValue NSDictionary格式的返回值信息
 @result aBool 标记是否多servicecode
 */
-(CWAResponseMsg*) getRspMsgVOOfAnActionFromRspValue:(id)aValue isMultiSC:(BOOL)aBool
{
    CWAResponseMsg *msgvo =nil;
    if ( [aValue isKindOfClass:[NSDictionary class]] )
    {
        NSArray *dicArray = [aValue valueForKeyPath:WA_HTTP_KP_RST];
        NSDictionary *dic = [[dicArray objectAtIndex:0] objectAtIndex:0];
        NSNumber *flag = [dic valueForKey:WA_HTTP_R_FLAG];
        
        if (![flag isEqual:[NSNull null]] && flag)
        {
            //构造CWAResponseMsg
            msgvo = [CWAResponseMsg initCWAResponseMsgVOWithFlag:flag desc:[dic valueForKey:WA_HTTP_R_DESC]];
            NSArray *serviceCodeResArray = [dic valueForKeyPath:WA_HTTP_KP_SSC];
            NSDictionary *serviceCodeRes = [(NSArray *)serviceCodeResArray objectAtIndex:0];
            if (serviceCodeRes)
            {
                if ( ! aBool )
                {
                    [msgvo setIServiceCode:[serviceCodeRes valueForKey:WA_HTTP_R_SC]];
                    [msgvo setIServiceCodes:[NSArray arrayWithObject:[serviceCodeRes valueForKey:WA_HTTP_R_SC]]];
                }
                else
                {
                    //多servicecode尚未处理
                    NSMutableArray *scArray = [[NSMutableArray alloc] init];
                    // 迭代service code
                    [serviceCodeResArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
                        NSString *servicecode = [((NSDictionary *)obj) objectForKey:WA_HTTP_R_SC];
                        if (servicecode && ![servicecode isEqualToString:@""])
                        {
                            [scArray addObject:servicecode];
                        }
                    }];
                    [msgvo setIServiceCodes:(NSArray *)scArray];
                    [scArray release];
                }
            }
        }
    }
    
    return msgvo;
}

/*!
 @method
 @abstract 单actiontype下单servicecode 抓取struct信息（容错处理尚未完成）
 @discussion
 @param aValue 返回值中某个actiontype中的信息NSDictionary
 @result NSDictionary
 */
-(NSArray*) dictionaryFromSingActionSingleServiceCodeByValue:(id)aValue
{
    NSArray *sArray=nil;
    
    if ([aValue isKindOfClass:[NSDictionary class]])
    {
        
        id sDicArray = [aValue valueForKeyPath:WA_HTTP_KP_STRUCT];
        
        //拿不到struct信息 容错处理
        if (!sDicArray )
        {
            //todo 容错
        }
        else
        {
            if ([sDicArray isKindOfClass:[NSArray class]])
            {
                if ([sDicArray objectAtIndex:0]  &&
                    [[sDicArray objectAtIndex:0]  isKindOfClass:[NSArray class]])
                {
                    if ([[sDicArray objectAtIndex:0]  objectAtIndex:0] &&
                        [[[sDicArray objectAtIndex:0]  objectAtIndex:0] isKindOfClass:[NSArray class]]) {
                        if ([[[sDicArray objectAtIndex:0]  objectAtIndex:0]  objectAtIndex:0] &&
                            [[[[sDicArray objectAtIndex:0]  objectAtIndex:0]  objectAtIndex:0] isKindOfClass:[NSArray class]])
                        {
                            sArray = [[[sDicArray objectAtIndex:0] objectAtIndex:0]objectAtIndex:0];
                        }
                    }
                }
                
            }
        }
    }
    
    return sArray;
}

/*!
 @method
 @abstract 单actiontype下单servicecode 抓取struct信息（尚未处理）
 @discussion
 @param aValue 返回值中某个actiontype中的信息NSDictionary
 @param aDictonaryForVO 将解析的多servicecode 的result装填到aDictonaryForVO中
 @result
 */
-(void) dictionaryFromSingleActionMutilServiceCodeByValue:(id)aValue inToDictionaryForVO:(NSMutableDictionary *)aDictonaryForVO
{
    NSArray *componentArray = [(NSDictionary *)aValue valueForKeyPath:WA_HTTP_COMPONENT];
    NSString *empty =@"";
    @try
    {
        if (componentArray && [componentArray count]>0)
        {
            NSDictionary *actionsDict = [componentArray objectAtIndex:0];
            if ([actionsDict count]>0)
            {
                NSArray *actionArray = [actionsDict valueForKeyPath:WA_HTTP_KP_AC];
                if(actionArray && [actionArray count]>0)
                {
                    
                    NSDictionary *oneAction = [actionArray objectAtIndex:0];
                    NSNumber *flag = [oneAction valueForKeyPath:WA_HTTP_SKP_FLGD];
                    NSString *desc = [oneAction valueForKeyPath:WA_HTTP_SKP_DESD];
                    // flag
                    if (flag)
                    {
                        [aDictonaryForVO setValue:flag forKey:WA_HTTP_R_FLAG];
                    }
                    else
                    {
                        [aDictonaryForVO setValue:empty forKey:WA_HTTP_R_FLAG];
                    }
                    // desc
                    if (desc)
                    {
                        [aDictonaryForVO setValue:desc forKey:WA_HTTP_R_DESC];
                    }else
                    {
                        [aDictonaryForVO setValue:empty forKey:WA_HTTP_R_DESC];
                    }
                    // service code and result
                    NSArray *serivceCodesArray = [oneAction valueForKeyPath:WA_HTTP_KP_RSC];
                    
                    [serivceCodesArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
                        id structValue = [((NSDictionary *)obj) valueForKeyPath:WA_HTTP_RD_ST];
                        NSString *servicecode = [((NSDictionary *)obj) objectForKey:WA_HTTP_R_SC];
                        if (servicecode && ![servicecode isEqualToString:@""])
                        {
                            if (structValue)
                            {
                                [aDictonaryForVO setValue:structValue forKey:servicecode];
                            }
                            else
                            {
                                [aDictonaryForVO setValue:[NSNull null] forKey:servicecode];
                            }
                        }
                        else
                        {
                            if (structValue)
                            {
                                [aDictonaryForVO setValue:structValue forKey:empty];
                            }
                        }
                    }];
                    
                }
            }
        }
    }
    @catch (NSException *exception)
    {
        
    }
    @finally {
        
    }
}

/*!
 @method
 @abstract 单component多actiontypes的返回值解析（支持单/多 servicecode）
 @discussion
 @param  aValue 请求返回值的完整kv结构体NSDictionary
 @result NSMutableDictionary 返回一对KV
 其中key为”OneComponentMultiActions“
 其中Value为一个CWABaseVO数组（返回了多少个actontype，
 该数组就对应了多少个CWABaseVO）
 针对每一个CWABaseVO:
 其中voDicitonary属性包含如下key：
 actiontype:其值对应某个actiontype (NSString)
 flag：该actiontype的成功失败标志 (NSString)
 desc：该actiontype请求的成功失败描述 (NSString)
 servicecode: 对应该actiontype下的servicecode (NSArray)
 每个servicecode是一个key：对应其下的struct
 */
-(NSMutableDictionary*) constructSingleComponentMultiActionByValue:(id)aValue
{
    
    NSMutableDictionary *myMdic = [NSMutableDictionary dictionaryWithObject:[NSNull null] forKey:@"OneComponentMultiActions"];
    if ([aValue isKindOfClass:[NSDictionary class]])
    {
        
        NSMutableArray *voArray = [[NSMutableArray alloc] init];
        NSArray *componentArray = [aValue valueForKeyPath:WA_HTTP_COMPONENT];
        
        NSArray *actionArr = [[componentArray objectAtIndex:0] valueForKeyPath:WA_HTTP_KP_AC];
        if ( actionArr )
        {
            [actionArr enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
                if ([obj isKindOfClass:[NSDictionary class]])
                {
                    NSMutableDictionary *oneADict = [[NSMutableDictionary alloc] init];
                    NSString *actionType = [obj objectForKey:WA_HTTP_ACTIONTYPE_KEY];
                    [oneADict setValue:actionType forKey:WA_HTTP_RTN_ACTIONTYPE_KEY];
                    id result = [obj objectForKey:WA_HTTP_R_RESULT];
                    //单service code
                    if ( [result isKindOfClass:[NSDictionary class]] )
                    {
                        
                        //放置flag
                        [oneADict setValue:[result objectForKey:WA_HTTP_R_FLAG]forKey:WA_HTTP_R_FLAG];
                        //放置desc
                        [oneADict setValue:[result objectForKey:WA_HTTP_R_DESC]forKey:WA_HTTP_R_DESC];
                        id servicescodeV = [result valueForKeyPath:WA_HTTP_KP_SSC];
                        
                        if ([servicescodeV isKindOfClass:[NSDictionary class] ]) {
                            NSString *servicecode = [servicescodeV valueForKey:WA_HTTP_R_SC];
                            NSArray *scArray = [NSArray arrayWithObject:servicecode];
                            [oneADict setValue:scArray forKey:WA_HTTP_RTN_SERVICECODE_KEY];
                            if ([servicescodeV valueForKeyPath:WA_HTTP_RD_ST] )
                            {
                                [oneADict setValue:[NSNull null] forKey:servicecode];
                            }
                            [oneADict setValue:[servicescodeV valueForKeyPath:WA_HTTP_RD_ST] forKey:servicecode];
                            //多service code
                        }
                        else if ([servicescodeV isKindOfClass:[NSArray class]])
                        {
                            NSMutableArray *scsArray = [[NSMutableArray alloc]init];
                            for ( int i=0;  i<[servicescodeV count]; i++ )
                            {
                                id oneSV = [servicescodeV objectAtIndex:i];
                                if ([oneSV isKindOfClass:[NSDictionary class]])
                                {
                                    NSString *servicecode = [oneSV valueForKey:WA_HTTP_R_SC];
                                    [scsArray addObject:servicecode];
                                    if ([oneSV valueForKeyPath:WA_HTTP_RD_ST] )
                                    {
                                        [oneADict setValue:[NSNull null] forKey:servicecode];
                                    }
                                    [oneADict setValue:[oneSV valueForKeyPath:WA_HTTP_RD_ST] forKey:servicecode];
                                }
                            }
                            [oneADict setValue:scsArray forKey:WA_HTTP_RTN_SERVICECODE_KEY];
                            [scsArray release];
                        }
                    }
                    
                    CWABaseVO *bvo = [[CWABaseVO alloc] initWithDictionary:(NSDictionary *)oneADict];
                    [oneADict release];
                    [voArray addObject:bvo];
                    [bvo release];
                    
                }
            }];
        }
        [myMdic setValue:voArray forKey:@"OneComponentMultiActions"];
        [voArray release];
    }
    return myMdic;
}


/*!
 @method
 @abstract 处理单component返回值的解析和组装vo （单actiontype单servicecode已处理多 多     actiontype单servicecode 和 单actiontype多servicecode 和 多actiontype 多 servicecode未处理）
 @discussion
 @param aResponseString 完整的NSString返回值
 @result NSMutableDictionary
 */
-(NSMutableDictionary*) responseVOFromSingleComponent:(NSString*)aResponseString
{
    

    NSMutableDictionary *mdic = nil;
    CWABaseVO *bvo = nil;
    CWABnsDesVO *aBnsDesVO = (CWABnsDesVO*)[self.iBnsDESVOs objectAtIndex:0];
    BOOL singleAction = YES;
    BOOL singleServiceCode=YES;
    NSError *singleActionError = nil;
    NSMutableDictionary *dicForVO = [[NSMutableDictionary alloc]init];
    NSMutableArray *actionType = [aBnsDesVO iActionTypes];
    NSDictionary *dic = nil;
    
    @try
    {
        // response string 转 NSDictionary
        dic = [CWAJSONParserUtils parserWithNSString:aResponseString];
    }
    @catch (NSException *exception)
    {
       
        [dicForVO release];
        [self logException:exception];
    }
    
    if ( dic )
    {
        // actiontype是否为多个
        if ( actionType && [actionType count]>0 )
        {
            //多action
            if ( [actionType count]>1 )
            {
                singleAction=NO;
                //多actiontype暂未处理
            }
        }
        else
        {
            // todo 无法解析 notify failed 没有actiontype
            [dicForVO release];
            return mdic;
        }
    }
    else
    {
        // todo json NSString返回值无法转换NSDictionary 容错处理 notify failed
        [dicForVO release];
        return mdic;
    }
    //单component 单actionType解析开始
    if ( singleAction )
    {
        // 获取servicecodes
        id servicecodesArray=[dic valueForKeyPath:WA_HTTP_KP_SC];
        id servicecodes = [[(NSArray *)servicecodesArray objectAtIndex:0]objectAtIndex:0];
        
        // 判断是否未单servicecode
        if( [servicecodes isKindOfClass:[NSArray class]] && [servicecodes count]>1)
        {
            singleServiceCode=NO;
        }
    }
    else
    {
        //多个actiontype得处理组装
    }
    
    NSObject *subDic=nil;
    if ( singleAction )
    {
        if (singleServiceCode)
        {
           
            CWAResponseMsg *aMsgVO = [self getRspMsgVOOfAnActionFromRspValue:dic isMultiSC:NO];
            
            if (aMsgVO)
            {
                NSInteger num = [[aMsgVO iFlag] integerValue];
                //
                if (num<0)
                {
                    //通知fail 请求失败 请重新尝试或联系管理员
                    NSString *errorDesc = aMsgVO.iDesc? aMsgVO.iDesc :NSLocalizedStringFromTable(@"WA_HTTP_OCOAFLAG",@"btarget_HTTPCommon", nil);
                    singleActionError = [NSError errorWithDomain:errorDesc
                                                            code:(HTTP_ERROR_CODE)http_FLAGFAIL
                                                        userInfo:nil];
                }
            }
            else
            {
                //通知fail 请求失败 请重新尝试或联系管理员
                singleActionError = [NSError errorWithDomain:NSLocalizedStringFromTable(@"WA_HTTP_OCOAFLAG",@"btarget_HTTPCommon", nil)
                                                        code:(HTTP_ERROR_CODE)http_FLAGFAIL
                                                    userInfo:nil];
                mdic = [NSMutableDictionary dictionaryWithObject:singleActionError forKey:@"error"];
                [dicForVO release];
                return mdic;
            }
            
            subDic =[self dictionaryFromSingActionSingleServiceCodeByValue:dic];
            
            subDic = subDic?subDic:[NSDictionary dictionary];
            
            //返回值vo的包装
            [dicForVO setValue:(HTTP_SERVICECODE_TYPE)SINGLE_SC forKey:WA_HTTP_R_TYPE];
            if ([aMsgVO iServiceCode])
            {
                [dicForVO setValue:subDic forKey:[aMsgVO iServiceCode]];
            }
            
            [dicForVO setValue:aMsgVO.iServiceCodes forKey:WA_HTTP_RTN_SERVICECODE_KEY];
            [dicForVO setValue:[actionType objectAtIndex:0] forKey:WA_HTTP_RTN_ACTIONTYPE_KEY ];
            bvo = [CWABaseVO baseVOWithDictionary:dicForVO];
            mdic = [NSMutableDictionary dictionaryWithObject:aMsgVO forKey:@"CWAResponseMsg"];
            
            [mdic setValue:bvo forKey:@"CWABaseVO"];
            
        }
        else if( ! singleServiceCode )
        {
            
            CWAResponseMsg *aMsgVO = [self getRspMsgVOOfAnActionFromRspValue:dic isMultiSC:YES];
            if (aMsgVO)
            {
                NSInteger num = [[aMsgVO iFlag] integerValue];
                //
                if (num<0)
                {
                    //通知fail 请求失败 请重新尝试或联系管理员
                    singleActionError = [NSError errorWithDomain:NSLocalizedStringFromTable(@"WA_HTTP_OCOAFLAG",@"btarget_HTTPCommon", nil)
                                                            code:(HTTP_ERROR_CODE)http_FLAGFAIL
                                                        userInfo:nil];
                }
            }
            else
            {
                //通知fail
                [dicForVO release];
                return mdic;
            }
            
            [self dictionaryFromSingleActionMutilServiceCodeByValue:dic inToDictionaryForVO:dicForVO];
            //返回值vo的包装
            [dicForVO setValue:[NSString stringWithFormat:@"%d",(HTTP_SERVICECODE_TYPE)MULTI_SCS] forKey:WA_HTTP_R_TYPE];
            [dicForVO setValue:aMsgVO.iServiceCodes forKey:WA_HTTP_RTN_SERVICECODE_KEY];
            [dicForVO setValue:[actionType objectAtIndex:0] forKey:WA_HTTP_RTN_ACTIONTYPE_KEY];
            
            
            bvo = [CWABaseVO baseVOWithDictionary:dicForVO];
            mdic = [NSMutableDictionary dictionaryWithObject:aMsgVO forKey:@"CWAResponseMsg"];
            [mdic setValue:bvo forKey:@"CWABaseVO"];
            
        }
    }
    //多actiontype
    else if( ! singleAction )
    {
        
        // 返回的vo需要自行释放
        mdic= [self constructSingleComponentMultiActionByValue:dic];
    }
    if (singleActionError)
    {
        [mdic setValue:singleActionError forKey:@"error"];
    }
    [dicForVO release];
    return mdic;
}

-(void) responseVOs:(NSMutableArray *)voArray
{
    
    NSDictionary *responseDict = [CWAJSONParserUtils parserWithNSString:self.iRespStringValue];
    
    if ( responseDict )
    {
        NSArray *componentsArray = [responseDict valueForKeyPath:WA_HTTP_COMPONENT];
        if (componentsArray && [componentsArray count]>0 )
        {
            //逐个循环component
            [componentsArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop){
                __block CWABaseVO *baseVO = nil;
                NSMutableDictionary *voDict = [[NSMutableDictionary alloc] init];
                
                NSString *componentID = [obj valueForKey:WA_HTTP_COMPONENTID_KEY];
                if (componentID && ![componentID isEqualToString:@""])
                {
                    [voDict setValue:componentID forKey:WA_HTTP_RTN_COMPONENTID_KEY];
                }
                
                if ([obj isKindOfClass: [NSDictionary class]])
                {
                    
                    NSArray *actionsArray = [(NSDictionary *)obj valueForKeyPath:WA_HTTP_KP_AC];
                    if (actionsArray && [actionsArray count]>0)
                    {
                        //component内逐个循环actiontype
                        [actionsArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
                            if ([obj isKindOfClass:[NSDictionary class]])
                            {
                                NSDictionary *action = (NSDictionary *)obj;
                                NSString *actionType = [action objectForKey:WA_HTTP_ACTIONTYPE_KEY];
                                NSMutableDictionary *actionDict = [[NSMutableDictionary alloc] init];
                                NSMutableArray *serviceCodes = [[NSMutableArray alloc]init];
                                if (actionType && ![actionType isEqualToString:@""])
                                {
                                    [voDict setValue:[NSNull null] forKey:actionType];
                                    
                                    [actionDict setValue:[action valueForKeyPath:WA_HTTP_SKP_FLGD] forKey:WA_HTTP_R_FLAG];
                                    [actionDict setValue:[action valueForKeyPath:WA_HTTP_SKP_DESD] forKey:WA_HTTP_R_DESC];
                                }
                                NSArray *scArray = [action valueForKeyPath:WA_HTTP_KP_RSC];
                                if (scArray && [scArray count]>0)
                                {
                                    // actiontype内的servicecodes
                                    [scArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
                                        if ([obj isKindOfClass:[NSDictionary class]])
                                        {
                                            NSString *serviceCode = [obj objectForKey:WA_HTTP_R_SC];
                                            if (serviceCode && ![serviceCode isEqualToString:@""])
                                            {
                                                [serviceCodes addObject:serviceCode];
                                                
                                                [actionDict setValue:[obj valueForKeyPath:WA_HTTP_RD_ST] forKey:serviceCode];
                                            }
                                        }
                                    }];
                                    [actionDict setValue:serviceCodes forKey:WA_HTTP_RTN_SERVICECODES_KEY];
                                    
                                }
                                [serviceCodes release];
                                [voDict setValue:actionDict forKey:actionType];
                                [actionDict release];
                                
                            }
                        }];
                    }
                }
                baseVO = [CWABaseVO baseVOWithDictionary:(NSDictionary *)voDict];
                [voDict release];
                if(baseVO)
                {
                    [voArray addObject:baseVO];
                }
            }];
        }
    }
}

# pragma mark 登陆返回值解析
-(void) setLoginCommonInfo:(NSArray* )array
{
    NSMutableArray *loginInfoToSave = [[NSMutableArray alloc] init];
    NSMutableDictionary *attSizeDic = [[NSMutableDictionary alloc] initWithCapacity:1];
    NSString *empty = @"";
    if (array && [array count]>0)
    {
        [array enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            NSString *serviceCode = serviceCode=[obj valueForKey:WA_HTTP_R_SC];
            if ([obj isKindOfClass:[NSDictionary class]]) {
                NSMutableDictionary *temdict = [[NSMutableDictionary alloc] init];
                
                NSDictionary *scResultDict = (NSDictionary *)obj;
                
                [temdict setObject:[scResultDict objectForKey:WA_HTTP_PRODID] forKey:WA_HTTP_PRODID];
                [temdict setObject:[scResultDict objectForKey:WA_HTTP_R_SC] forKey:WA_HTTP_R_SC];
                NSArray *loginRstStruct = [scResultDict valueForKeyPath:WA_HTTP_RD_ST];
                [loginRstStruct enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
                    
                    id loginObj = [obj objectForKey:@"login"];
                    NSDictionary *loginValueDict=nil;
                    if (loginObj)
                    {
                        if ([loginObj isKindOfClass:[NSArray class]])
                        {
                            loginValueDict = [(NSArray*)loginObj objectAtIndex:0];
                        }
                        else if ([loginObj isKindOfClass:[NSDictionary class]])
                        {
                            loginValueDict=loginObj;
                        }
                        [temdict setObject:([loginValueDict objectForKey:WA_HTTP_R_GROUPID_KEY]? [loginValueDict objectForKey:WA_HTTP_R_GROUPID_KEY] :empty)forKey:WA_HTTP_RTN_GROUPID_KEY];
                        [temdict setObject:([loginValueDict objectForKey:WA_HTTP_R_USRID_KEY] ? [loginValueDict objectForKey:WA_HTTP_R_USRID_KEY] :empty) forKey:WA_HTTP_RTN_USRID_KEY];
                        
                        if([loginValueDict valueForKey:WA_HTTP_R_ATTSIZE_KEY])
                        {
                            [attSizeDic setObject:[loginValueDict valueForKey:WA_HTTP_R_ATTSIZE_KEY]  forKey:serviceCode];
                        }
                        
                        *stop=YES;
                    }
                }];
                [loginInfoToSave addObject:temdict];
                [temdict release];
            }
        }];
        //    [CWALo  saveLoginToken:(NSArray *)loginInfoToSave];
        //session过期后 重登陆需要本地化存储登陆相关的context信息
        if (self.iSessionOutRelogin)
        {
            [CWALocalStorageHandler saveLoginToken:loginInfoToSave];
        }
        //登陆需要本地化存储登陆相关的context信息
        NSMutableDictionary *userDict = [[NSMutableDictionary alloc] initWithObjectsAndKeys:loginInfoToSave,WA_HTTP_RTN_USERNAME_KEY, nil];
        [[CWACommonInfoVO sharedManager] setILoginInfoForUserName:userDict];
        [userDict release];
    }
    CWACommonInfoVO *ciVO =[CWACommonInfoVO sharedManager];
    ciVO.iAttSizeDic = attSizeDic;
    [attSizeDic release];
    [loginInfoToSave release];
}

/*!
 @method
 @abstract 登陆单个组件返回值的组装子方法
 @discussion
 @result
 */
-(void)fillingLoginResponseVO:(id)obj andArray:(NSMutableArray*)marr
{
    CWABaseVO *bvo = [[CWABaseVO alloc] init];
    NSString *empty =@"";
    NSMutableDictionary *tDict = [[NSMutableDictionary alloc]init];
    NSArray *actionsArray = [obj valueForKeyPath:WA_HTTP_KP_AC];
    NSString *componentId = [obj objectForKey:WA_HTTP_COMPONENTID_KEY];
    if (actionsArray)
    {
        if ( [actionsArray count]==1)
        {
            NSDictionary *oneAction = [actionsArray objectAtIndex:0];
            NSString *flag =[oneAction valueForKeyPath:WA_HTTP_SKP_FLGD];
            [tDict setValue:flag forKey:WA_HTTP_R_FLAG];
            NSString *des = [oneAction valueForKeyPath:WA_HTTP_SKP_DESD];
            [tDict setValue:des forKey:WA_HTTP_R_DESC];
            
            NSString *actionType = [oneAction objectForKey:WA_HTTP_R_AT];
            [tDict setValue:(actionType ? actionType:empty)  forKey:WA_HTTP_RTN_ACTIONTYPE_KEY];
            
            [tDict setValue:(componentId ? componentId:empty) forKey:WA_HTTP_RTN_COMPONENTID_KEY];
            
            NSArray *serviceCodesArray = [oneAction valueForKeyPath:WA_HTTP_KP_RSC];
            
            if (serviceCodesArray)
            {
                if ([serviceCodesArray count]==1)
                {
                    NSDictionary *serviceCodeDic = [serviceCodesArray objectAtIndex:0];
                    NSString *servicecode = [serviceCodeDic valueForKeyPath:WA_HTTP_R_SC];
                    [tDict setValue:servicecode forKey:WA_HTTP_RTN_SERVICECODE_KEY];
                    id aStruct = [serviceCodeDic valueForKeyPath:WA_HTTP_RD_ST];
                    if (aStruct)
                    {
                        [tDict setValue:aStruct forKey:servicecode];
                    }
                    else
                    {
                        [tDict setValue:[NSNull null] forKey:servicecode];
                    }
                    
                    
                }
                else
                {
                }
            }
            [bvo setVoDictionary:tDict];
            // 多actiontype
        }
        else
        {
            [actionsArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
                NSMutableDictionary *actionDict = [[NSMutableDictionary alloc]init];
                NSDictionary *currActionDict = (NSDictionary *)obj;
                NSMutableArray *serviceCodesArray = [[NSMutableArray alloc]init];
                NSString *actionType = [currActionDict valueForKey:WA_HTTP_R_AT];
                [actionDict setValue:[currActionDict valueForKeyPath:WA_HTTP_SKP_FLGD]forKey:WA_HTTP_R_FLAG];
                [actionDict setValue:[currActionDict valueForKeyPath:WA_HTTP_SKP_DESD]forKey:WA_HTTP_R_DESC];
                NSArray *currSCArray = [obj valueForKeyPath:WA_HTTP_KP_RSC];
                
                [currSCArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
                    NSString *serviceCode = [obj valueForKey:WA_HTTP_R_SC];
                    [serviceCodesArray addObject:serviceCode];
                    id aStruct = [obj valueForKeyPath:WA_HTTP_RD_ST];
                    if (aStruct)
                    {
                        [actionDict setValue:aStruct forKey:serviceCode];
                    }
                    else
                    {
                        [actionDict setValue:[NSNull null] forKey:serviceCode];
                    }
                    
                }];
                [actionDict setValue:serviceCodesArray forKey:WA_HTTP_RTN_SERVICECODE_KEY];
                [serviceCodesArray release];
                [tDict setValue:actionDict forKey:actionType];
                [actionDict release];
            }];
            [tDict setValue:(componentId ? componentId:empty) forKey:WA_HTTP_RTN_COMPONENTID_KEY];
            [bvo setVoDictionary:tDict];
        }
    }
    [marr addObject:bvo];
    [tDict release];
    [bvo release];
}

/*!
 @method
 @abstract 登陆返回值的解析组装
 @discussion 通知代理 请求已经结束 （异步请求有效） 按照返回顺序解析
 @result id 组装成一个vo array来返回 一个vo对应一个component
 */
-(id) constructLoginResponseVOs
{
    
    NSString *responseStr = self.iRespStringValue;
    NSMutableArray *marr = [[[NSMutableArray alloc]init] autorelease];
    //第一位 为login保留
    //  [marr insertObject:[NSNull null] atIndex:0];
    NSMutableArray *bns = self.iBnsDESVOs;
    if ( bns && [bns count]>0 )
    {
        NSDictionary *dic = [CWAJSONParserUtils parserWithNSString:responseStr];
        NSArray *components = [dic valueForKeyPath:WA_HTTP_COMPONENT];
        //登陆多component
        if ([components isKindOfClass:[NSArray class]])
        {
            
            if ( components && [components count]>0 )
            {
                [components enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop)
                 {
                     if ( [obj isKindOfClass:[NSDictionary class]] )
                     {
                         //循环组装
                         [self fillingLoginResponseVO:obj andArray:marr];
                     }
                 }];
            }
        }
        //登陆单component
        else if( [components isKindOfClass:[NSDictionary class]] )
        {
            [self fillingLoginResponseVO:components andArray:marr];
        }
    }
    
    return marr;
}


# pragma mark 缓存从登陆获取的常驻内存context信息
/*!
 @method
 @abstract 从登陆的返回值中提取登陆servicecode
 @discussion
 @param
 @result
 */
-(NSString *)getLoginServiceCode
{
    NSString *scValue=nil;
    id servicecode = [[CWAJSONParserUtils parserWithNSString:sharedInstance.iRespStringValue] valueForKeyPath:WA_HTTP_KP_SC];
    if ([servicecode isKindOfClass:[NSArray class] ])
    {
        NSArray *arraysc = (NSArray*)servicecode;
        for (int i=0; i<[arraysc count]; i++)
        {
            id obj = [arraysc objectAtIndex:i];
            if ([obj isKindOfClass: [NSDictionary class]])
            {
                if ([obj valueForKeyPath:@"resdata.struct.login"])
                {
                    scValue= (NSString*)[(NSDictionary*)obj objectForKey:WA_HTTP_R_SC];
                    break;
                }
            }
        }
        //单独登陆component情况
    }
    else if([servicecode isKindOfClass:[NSDictionary class]])
    {
        scValue = [servicecode objectForKey:WA_HTTP_R_SC];
    }
    return scValue;
}

/*!
 @method
 @abstract 从登陆的返回值中提取通用信息并初始化CWACommonInfoVO
 @discussion
 @param
 @result
 */
-(void)initCommonInfoVO
{
    
    if (!self.iSession_id || [self.iSession_id length] <=0)
    {
        
        __block id loginValue = nil;
        __block id serviceCode = nil;
        //登陆struct
        NSArray *componentsArray = [[CWAJSONParserUtils parserWithNSString:sharedInstance.iRespStringValue] valueForKeyPath:WA_HTTP_COMPONENT];
        if (componentsArray && [componentsArray count]>0)
        {
            
            [componentsArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
                
                NSArray * actionsArray = [obj valueForKeyPath:WA_HTTP_KP_AC];
                if (actionsArray && [actionsArray count]>0)
                {
                    [actionsArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
                        
                        //如果是登陆的action
                        if ([[obj valueForKey:WA_HTTP_R_AT]isEqualToString:WA_HTTP_LOGIN_ACTIONTYPE])
                        {
                            NSArray *serviceCodesArray = [obj valueForKeyPath:WA_HTTP_KP_RSC];
                            // 保存登陆后获取的productid等信息
                            @try
                            {
                                NSNumber *loginFlag = [obj valueForKeyPath:WA_HTTP_SKP_FLGD];
                                if ( [loginFlag intValue]== 0 )
                                {
                                    [self setLoginCommonInfo:serviceCodesArray];
                                }
                            }
                            @catch (NSException *exception)
                            {
                            
                            }
                            
                            if (serviceCodesArray && [serviceCodesArray count]>0)
                            {
                                [serviceCodesArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
                                    NSArray *loginValueArray=[obj valueForKeyPath:WA_HTTP_RD_ST];
                                    loginValue = [[loginValueArray objectAtIndex:0] valueForKey:WA_HTTP_LOGIN_ACTIONTYPE];
                                    if (loginValue)
                                    {
                                        serviceCode=[obj valueForKey:WA_HTTP_R_SC];
                                    }
                                    
                                    *stop=YES;
                                }];
                            }
                            *stop = YES;
                        }
                    }];
                    if (loginValue)
                    {
                        *stop =YES;
                    }
                }
            }];
        }
        
        NSDictionary *loginDic=nil;
        if ( [loginValue isKindOfClass:[NSArray class]] )
        {
            
            //登陆多component
            if ( [[loginValue objectAtIndex:0] isKindOfClass:[NSDictionary class]] )
            {
                loginDic = (NSDictionary*)[loginValue lastObject];
            }
            //登陆单component
            else if ( [[loginValue objectAtIndex:0] isKindOfClass:[NSArray class]] )
            {
                loginDic=(NSDictionary *)[(NSArray*)[(NSArray*)loginValue objectAtIndex:0]objectAtIndex:0];
            }
        }
        else if ([loginValue isKindOfClass:[NSDictionary class]])
        {
            loginDic=loginValue;
        }
        //common info 组装
        if ( loginDic )
        {
            //            NSString *servicecodeV = [self getLoginServiceCode];
            NSString *servicecodeV =serviceCode;
            if (servicecodeV)
            {
                NSMutableDictionary * mdict = [[NSMutableDictionary alloc]init];
                
                [mdict setValue:(NSString*)[loginDic valueForKey:@"usrid"] forKey:@"userID"];
                [mdict setValue:(NSString*)[loginDic valueForKey:@"usrname"] forKey:@"userName"];
                [mdict setValue:(NSString*)[loginDic valueForKey:@"groupid"] forKey:@"groupID"];
                [mdict setValue:(NSString*)[loginDic valueForKey:@"groupcode"] forKey:@"groupCode"];
                [mdict setValue:(NSString*)[loginDic valueForKey:@"attsize"] forKey:@"attSize"];
                NSMutableDictionary *mdict1 = [[ NSMutableDictionary alloc] init];
                [mdict1 setValue:mdict forKey:servicecodeV];
                [mdict release];
                
                CWACommonInfoVO *ciVO =[CWACommonInfoVO sharedManager];
                ciVO.iUserID= [loginDic valueForKey:@"usrid"];
                ciVO.iUserName=[loginDic valueForKey:@"usrname"];
                ciVO.iGroupID = [loginDic valueForKey:@"groupid"];
                ciVO.iGroupCode = [loginDic valueForKey:@"groupcode"];
                
                //        ciVO.iAttSize = [loginDic valueForKey:@"attsize"];
                
                ciVO.iSCWithInfoDictionary = (NSDictionary*)mdict1;
                [mdict1 release];
                
            }
        }
    }
    
}


# pragma mark 通知CWAHTTPNotify
/*!
 @method
 @abstract 通知handler代理 请求失败
 @discussion 通知代理 请求失败 （异步请求有效）
 @param aCWAHttpRequest 请求
 @result
 */
-(void)notifyFailedRequest:(CWAHTTP*)aCWAHttpRequest
{
    if (self.iSessionOutRelogin)
    {
        self.iSessionOutRelogin=NO;
    }
    if( self.delegate && [self.delegate respondsToSelector:@selector(failedRequest)] )
    {
        [self.delegate performSelector:@selector(failedRequest)];
    }
}

/*!
 @method
 @abstract 通知handler代理 请求失败 包含错误信息
 @discussion 通知代理 已失败 （异步请求有效）
 @param aCWAHttpRequest 请求
 @param theError 错误信息
 @result
 */
-(void)notifyFailedRequest:(CWAHTTP*)aCWAHttpRequest error:(NSError*)theError
{
    
    if (self.iSessionOutRelogin)
    {
        self.iSessionOutRelogin=NO;
    }
    
    if( self.delegate && [self.delegate respondsToSelector:@selector(failedRequestWithError:)] )
    {
        [self.delegate performSelector:@selector(failedRequestWithError:)withObject:theError];
    }
}

/*!
 @method
 @abstract 通知handler代理 session国旗 包含错误信息
 @discussion 通知代理 session过期,请求已失败 （异步请求有效）
 @param aCWAHttpRequest 请求
 @param theError 错误信息
 @result
 */
-(void)notifySessionTimeOut:(CWAHTTP*) aCWAHttpRequest error:(NSError*)theError
{
    
    if ( self.iSessionTimeOutDelegate && [self.iSessionTimeOutDelegate respondsToSelector:@selector(requestSessionTimeOut:)] )
    {
        //session 过期专属代理
        [self.iSessionTimeOutDelegate performSelector:@selector(requestSessionTimeOut:) withObject:theError];
        return;
    }
    //    [self notifyFailedRequest:aCWAHttpRequest];
    //    [self notifyFailedRequest:aCWAHttpRequest error:theError];
    
}

// 通知预登陆请求结果
-(void)notifyPreConnectionInfo:(NSDictionary *)aDictionary
{
    
    if (self.delegate)
    {
        @try
        {
            
            [self.delegate performSelector:@selector(requestFInishedWithPreConnectionResponse:)withObject:aDictionary];
        }
        @catch (NSException *exception)
        {
            @throw exception;
        }
    }
    else
    {
    }
    
}

// 通知获取帐套类型的请求结果
- (void)notifyGetAccountsType:(NSNumber *)anAccountsType
{
    
    if (self.delegate)
    {
        @try
        {
            
            [self.delegate performSelector:@selector(requestFinishedWithGetAccountsType: isCachedInCommonInfo:)
                                withObject:anAccountsType
                                withObject:@"1"];
        }
        @catch (NSException *exception)
        {
            @throw exception;
        }
    }
    else
    {
    }
    
}

/*!
 @method
 @abstract 通知handler代理 请求已经结束
 @discussion 通知代理 请求已经结束 （异步请求有效）
 @param aCWAHttpRequest 请求
 @result
 */
-(void)notifyFinishedRequest:(CWAHTTP*)aCWAHttpRequest
{
    
#ifdef DEBUG
    NSError *error = [[self.mainHttp iHttpRequest]error];
    if ( error )
    {
    }
#endif
    if ( [[self.mainHttp iHttpRequest]error] )
    {
        [self notifyFailedRequest:aCWAHttpRequest error:[[self.mainHttp iHttpRequest]error]];
    }
    else
    {
        //通知请求完成传递NSString返回值
        if( self.delegate && [self.delegate respondsToSelector:@selector(requestFinishedWithResponseString:)] )
        {
            [self.delegate performSelector:@selector(requestFinishedWithResponseString:) withObject:[self iRespStringValue]];
        }
        
        //通知请求完成 传递vo形式返回值
        //单component
        if ( [self.iBnsDESVOs count] == 1 )
        {
            int acttypecounts =[[[self.iBnsDESVOs lastObject] iActionTypes] count];
            //单component单actiontype的返回
            if ( acttypecounts ==1)
            {
                if ( self.delegate && ([self.delegate respondsToSelector:@selector(requestFinishedWithResponseVO:andMsgVO:)] || [self.delegate respondsToSelector:@selector(failedRequestWithError:)] || [self.delegate respondsToSelector:@selector(failedRequest)]) )
                {
                    NSMutableDictionary *mdic = [self responseVOFromSingleComponent:[self iRespStringValue]];
                    CWABaseVO *basevo = [mdic valueForKey:@"CWABaseVO"];
                    CWAResponseMsg *msgvo = [mdic valueForKey:@"CWAResponseMsg"];
                    if ([mdic objectForKey:@"error"]) 
                    {
                        if ([self.delegate respondsToSelector:@selector(failedRequestWithError:)] ) 
                        {
                            [self.delegate performSelector:@selector(failedRequestWithError:) withObject:[mdic objectForKey:@"error"]];
                        }
                        if ([self.delegate respondsToSelector:@selector(failedRequest)]) 
                        {
                            [self.delegate performSelector:@selector(failedRequest)];
                        }
                    }
                    else
                    {
                        if ([self.delegate respondsToSelector:@selector(requestFinishedWithResponseVO:andMsgVO:)]) 
                        {
                            [self.delegate performSelector:@selector(requestFinishedWithResponseVO:andMsgVO:) 
                                                withObject:basevo 
                                                withObject:msgvo]; 
                        }
                    }   
                }
                //单component多actiontypes的返回
            }
            else if (acttypecounts > 1 )
            {                                                                    
                if (self.delegate && [self.delegate respondsToSelector:@selector(requestOfOneComponentMultiActionsResponesVOs:)]) 
                {
                    NSMutableDictionary *mdic = [self responseVOFromSingleComponent:[self iRespStringValue]];
                    
                    if ([mdic objectForKey:@"OneComponentMultiActions"]) 
                    {
                        NSArray* voArray =[mdic objectForKey:@"OneComponentMultiActions"];
                        [self.delegate performSelector:@selector(requestOfOneComponentMultiActionsResponesVOs:) 
                                            withObject:voArray];
                    }
                }
            }
            // 多component 多actiontype的解析
        }else if ([self.iBnsDESVOs count] > 1 ) 
        {
            NSMutableArray *voArray = [[NSMutableArray alloc] init];
            [self responseVOs:voArray];
            if (self.delegate && [self.delegate respondsToSelector:@selector(requestOfMultiComponentsResponesVOs:)]) 
            {
                [self.delegate performSelector:@selector(requestOfMultiComponentsResponesVOs:) withObject:(NSArray*)voArray];
            }
            [voArray release];
        }
        
    }
    
} 

/*!
 @method 
 @abstract 通知handler代理 登陆请求已经结束 
 @discussion 通知代理 请求已经结束 （异步请求有效）特殊处理解析登陆返回值
 @param aCWAHttpRequest 请求
 @result 
 */
-(void)notifyLoginFinishedResponse:(CWAHTTP*)aCWAHttpRequest
{
    
    if ( [[self.mainHttp iHttpRequest]error] )
    {
        //请求结束，如果有错误信息通知请求失败
        [self notifyFailedRequest:aCWAHttpRequest error:[[self.mainHttp iHttpRequest]error]];
    }
    else 
    {   
        //通知请求完成 传递NSString形式返回值
        if( self.delegate && [self.delegate respondsToSelector:@selector( requestFinishedWithResponseString: )] )
        {
            [self.delegate performSelector:@selector(requestFinishedWithResponseString:) withObject:[self iRespStringValue]];
        }
        //通知请求完成 传递vo形式返回值
        if ( self.delegate && [self.delegate respondsToSelector:@selector(requestFinishedWithLoginResponseVOs:)] ) 
        {
            id basevos = [self constructLoginResponseVOs];
            [self.delegate performSelector:@selector(requestFinishedWithLoginResponseVOs:) withObject:basevos];
        }
    }
    
}

/*!
 @method 
 @abstract 通知handler代理 请求已经开始 
 @discussion 通知代理 请求已经开始 （异步请求有效）
 @param aCWAHttpRequest 请求
 @result 
 */
-(void)notifyStartedRequest:(CWAHTTP*)aCWAHttpRequest
{
    // session过期重登陆情况下不通知请求开始
    if( self.delegate && [self.delegate respondsToSelector:@selector(requestStarted)] )
    {
        [self.delegate performSelector:@selector(requestStarted)];
    }
}

-(void)notifyrequestPostBodyData:(NSDictionary *) currentBodyDic
{
    if (self.delegate && [self.delegate respondsToSelector:@selector(requestPostBodyString:)]) {
        [self.delegate performSelector:@selector(requestPostBodyString:) 
                            withObject:[currentBodyDic description]];
    }
}

/*!
 @method 
 @abstract 通知handler代理 请求已经接到返回值的头 
 @discussion 通知代理 请求已经接到返回值的头 （异步请求有效）
 @param aCWAHttpRequest 请求
 @param responseHeaders 返回值的头
 @result 
 */
-(void)notifyRequest:(CWAHTTP*)aCWAHttpRequest 
didReceiveResponseHeaders:(NSDictionary*)responseHeaders
{
    if( self.delegate && [self.delegate respondsToSelector:@selector(request: didReceiveResponseHeaders:)] ) 
    {
        [self.delegate performSelector:@selector(request: didReceiveResponseHeaders:) withObject:aCWAHttpRequest withObject:responseHeaders];
    }
}

# pragma mark 对ASIHTTPRequest的代理
/*!
 @method 
 @abstract 获取通知 请求开始 转发通知给handler的代理 
 @discussion 通知代理 请求已开始 （异步请求有效）
 @param request ASIHTTPRequest请求
 @result 
 */
- (void)requestStarted:(ASIHTTPRequest *)request
{
    self.begainTime =[NSDate date];
    
    [self notifyStartedRequest:self.mainHttp];    
}

/*!
 @method 
 @abstract 获取通知 已获取返回值头信息 转发通知给handler的代理 
 @discussion 通知代理 已获取返回值头信息（异步请求有效）
 @param request ASIHTTPRequest请求
 @param responseHeaders 响应头信息
 @result 
 */
- (void)request:(ASIHTTPRequest *)request 
didReceiveResponseHeaders:(NSDictionary *)responseHeaders
{

    if (self.iSessionOutRelogin) 
    {
        return;
    }
    [self notifyRequest:self.mainHttp didReceiveResponseHeaders:responseHeaders];
}

/*
 - (void)request:(ASIHTTPRequest *)request willRedirectToURL:(NSURL *)newURL{
 }
 */

/*!
 @method 
 @abstract 获取通知 请求已结束 转发通知给handler的代理 
 @discussion 通知代理 请求已结束（异步请求有效）
 @param request ASIHTTPRequest请求
 @param responseHeaders 响应头信息
 @result 
 */
- (void)requestFinished:(ASIHTTPRequest *)aRequest
{
    //处理正常请求返回值
    if (self.isNormalRequset)
    {
        [self dealingWithNormalRequestResponse: aRequest];
        return;
    }
    
    // 处理404,500等标准的http异常信息
    if ( [self dealingCommonHttpStatus:aRequest] ) 
    {
        if (self.iSessionOutRelogin && !self.iSession_id) 
        {
            [self directlyNotifySessionOutReloginFail];
        }
        if ([self.iCurrentServerlet isEqualToString:WA_HTTP_WAPRELOGINSERVLET_COMPONENT_KEY]) 
        {
            self.iCurrentServerlet=nil;
        }
        
        return;
    }
    
    // 处理未从wa server获取的返回值
    if ( [self dealingUnProperResponse:aRequest] ) 
    {
        if ([self.iCurrentServerlet isEqualToString:WA_HTTP_WAPRELOGINSERVLET_COMPONENT_KEY]) 
        {
            self.iCurrentServerlet=nil;
        }
        return;
    }
    
    // 服务器时间打印 (打印服务器给出的WA和NC交互的全程事件 和nc自己的处理时间)
    NSDictionary *headerDict=[aRequest responseHeaders];    
    if ([headerDict objectForKey:@"stime"] || [headerDict objectForKey:@"Stime"]) 
    {
    }
    
    //预连接处理
    if ([self.iCurrentServerlet isEqualToString:@"/servlet/wapreloginservlet"]) 
    {
        NSDictionary *preConDict = [self dealingPreConnectionResponse:aRequest];
        //CommonInfoVo 缓存 appversion
        ((CWACommonInfoVO *)[CWACommonInfoVO sharedManager]).iAppVersion = [preConDict objectForKey:WA_HTTP_H_APPVERSION];
        
        self.iCurrentServerlet =nil;
        [self notifyPreConnectionInfo:preConDict];
        // 清除持有的请求
        sharedInstance.mainHttp.iHttpRequest=nil;
        return;
    }
    else if ([self.iCurrentServerlet isEqualToString:@"/servlet/waaccountservlet"]) 
    {
        NSDictionary *header = [aRequest responseHeaders];
        // 如果本地定义了帐套类型宏 则不再执行如下内容
        [self dealingAccountsTypeByResponesHearder:header];
        
        NSInteger accountType = ((CWACommonInfoVO *)[CWACommonInfoVO sharedManager]).iAccountType;
        self.iCurrentServerlet =nil;
        // 通知获取帐套类型请求结果
        [self notifyGetAccountsType:[NSNumber numberWithInteger:accountType]];
        // 清除持有的请求
        sharedInstance.mainHttp.iHttpRequest=nil;
        return;
    }
    
    //缓存NSString请求返回值的
    [self setIRespStringValue:[self.mainHttp getResponseString]];
    //整理CWACommonInfoVO的内容
    [self initCommonInfoVO];
    
    //如果是登陆的返回值 做session id处理和通知登陆结束
//    if ( (!((CWAHTTPRequestHandler *)[CWAHTTPRequestHandler sharedManager]).iSession_id || [((CWAHTTPRequestHandler *)[CWAHTTPRequestHandler sharedManager]).iSession_id length]<=0 )
//        && ![self.iCurrentServerlet isEqualToString:@"/servlet/waunneededloginservlet"])
//    {
//        [self putSession_id];
//        [self notifyLoginFinishedResponse:self.mainHttp];
//        if ([sharedInstance.mainHttp.iHttpRequest isFinished])
//        {
//            // 清除持有的请求
//            sharedInstance.mainHttp.iHttpRequest=nil;
//        }
//        //如果是session过期重连接 需要再次上一次发起请求
//        if (self.iSessionOutRelogin)
//        {
//            [self reFireLastRequest];
//        }
//        return;
//    }
    
    //重置  session过期重登陆开关
//    if (self.iSessionOutRelogin) 
//    {
//        self.iSessionOutRelogin=NO;
//        self.iPreviousRQInfo=nil;
//    }
    
    //通知请求结束
    [self notifyFinishedRequest:self.mainHttp];
    if ([self.mainHttp.iHttpRequest isFinished])
    {
        // 清除持有的请求
        self.mainHttp.iHttpRequest=nil;
    }
    if (self.iPreviousRQInfo) 
    {
        self.iPreviousRQInfo = nil;
    }
    
}

/*!
 @method 
 @abstract 获取通知 请求已结束 包括错误信息的处理 转发通知给handler的代理 
 @discussion 通知代理 请求失败（异步请求有效）
 @param request ASIHTTPRequest请求
 @result 
 */
- (void)requestFailed:(ASIHTTPRequest *)request
{
    if (self.iSessionOutRelogin && !self.iSession_id)
    {
        //如果是session过期重登陆失败 则直接通知session过期重登陆失败
        [self directlyNotifySessionOutReloginFail];
        return;
    }
    //请求结束重置session过期重登标志
    if (self.iSessionOutRelogin) 
    {
        self.iSessionOutRelogin=NO;
    }
    //取消预链接的servlet缓存
    if ([self.iCurrentServerlet isEqualToString:@"/servlet/wapreloginservlet"]) 
    {
        self.iCurrentServerlet=nil;
    }
    NSError *handlederror=nil;
    NSError* myError = [[request error]copy];
    
    if( myError )
    {
        //处理网络错误异常信息
        handlederror=[self handleNetWorkError:myError];
        if ( !handlederror ) 
        {
            handlederror=myError;
        }
    }
    
    [self notifyFailedRequest:self.mainHttp];
    [self notifyFailedRequest:self.mainHttp error:handlederror];
    [myError release];
    if ([sharedInstance.mainHttp.iHttpRequest isFinished]) 
    {
        // 清除持有的请求
        self.mainHttp.iHttpRequest=nil;
    }
    if (self.iPreviousRQInfo) 
    {
        self.iPreviousRQInfo= nil;
    }
}

/*                                                                                                                                                                                                                                                                                                                                                                                                 
 - (void)requestRedirected:(ASIHTTPRequest *)request
 {
 }
 */

# pragma mark HTTP ASIProgressDelegate 下载进度监测代理
/*!
 @method 
 @abstract 获取通知 捕获下载进度 转发通知给handler的代理 
 @discussion（异步请求有效）
 @param request ASIHTTPRequest请求
 @param bytes 当前下载进度的字节
 @result 
 */
-(void)request:(ASIHTTPRequest *)request didReceiveBytes:(long long)bytes
{
    if ( [self.delegate conformsToProtocol:@protocol(MWAHTTPNotify) ]) 
    {
        [self.delegate requestDidReceiveBytes:bytes];
    }
}

# pragma mark 注册session过期delegate
/*!
 @method 
 @abstract 注册session过期delegate
 @discussion 
 @result 
 */
-(void) registerSessionTimeOutDelegate:(id<MWAHTTPNotify>)aDelegate
{
    self.iSessionTimeOutDelegate=aDelegate;
}

# pragma mark HTTP 返回值解析
/*!
 @method 
 @abstract 将NSString格式返回值解析成json格式
 @discussion 
 @param aString 返回值
 @result 
 */   
-(id) jsonValueFromASIHttpRequestNSString:(NSString*)aString
{
    return[CWAJSONParserUtils parserWithNSString:aString];
} 

/*! 
 @method 
 @abstract 将NSData格式返回值解析成json格式
 @discussion 
 @param aData 返回值
 @result 
 */  
-(id) jsonValueFromASIHttpRequestNSData:(NSData*)aData
{
    return[CWAJSONParserUtils parseWithData:aData];
}

@end
