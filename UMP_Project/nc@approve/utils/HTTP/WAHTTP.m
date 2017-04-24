/*!
 @header CWAHTTP.h
 @abstract HTTP 请求封装 返回值解密解压
 @author Created by sunset.z on 12-3-24.
 @version 1.00 12-3-24 Creation 
 */

#import "WAHTTP.h"
#import "DESEncryption.h"
#import "ZipUtility.h"
#import "WAFileUtil.h"
/*!
 @header CWAHTTP.h
 @abstract HTTP 请求
 @author Created by sunset.z on 12-3-24.
 @version 1.00 2012/01/20 Creation (此文档的版本信息)
 */
@interface CWAHTTP()
//是否构造了固定的wa header（符合wa server约定的header）
@property BOOL iIsWAHeaderBuilt;
//是否压缩
@property BOOL iIsCompressed;
//是否加密
@property BOOL iIsEncrypt;
//是否contaiver
@property BOOL iContaiver;

@property (copy) NSString *iTranslateversion;

@end

/*!
 @class
 @abstract CWAHTTP：HTTP请求
 @discussion 
 */
@implementation CWAHTTP

// DES加密key
static NSString *key = @"12345678;";

//同步异步 默认为异步
BOOL iSynchronous;
    //加密类型
NSInteger iTheEncryptType;
    //传输类型
NSInteger iTranslateType;
    //压缩方式
NSInteger iTheCompressType;

//请求路径 
@synthesize iUrl;
//ASIHTTPRequest
@synthesize iHttpRequest;
//异步
@synthesize iASynchronous;
//头信息
@synthesize iHeaders;
//是否封装了wa特殊头信息
@synthesize iIsWAHeaderBuilt;
//下载文件保存path 
@synthesize iDownLoadSavePath;
//下载文件缓存path （外部设值，handler使用）
@synthesize iDownLoadTempPath;
//是否压缩
@synthesize iIsCompressed;
//加密方式 （ENCRYPT_TYPE）
@synthesize iTheEncryptType;
//数据传输格式 （TRANSLATE_TYPE）
@synthesize iTranslateType;
//压缩加密顺序
@synthesize iTransOrder;
//是否流下载
@synthesize isDownloadBytes;
//下载文件名称
@synthesize iDownloadFileName;
//压缩方式
@synthesize iTheCompressType;
//是否contaiver
@synthesize iContaiver;
//是否加密
@synthesize iIsEncrypt;

@synthesize iTranslateversion;
#pragma mark exception打印
/*!
 @method 
 @abstract 异常信息打印
 @discussion 
 @param aException 异常信息 
 @result
 */
-(void)logException:(NSException*)aException
{

   if(aException.name){
       
    }
    if(aException.reason){
    }

}

#pragma mark 封装request
/*!
 @method 
 @abstract 封装特殊wa头信息
 @discussion 
 @param aRequest 
 @result CWAHTTPRequest (owned)
 */
- (id) setHttpRequestHeader: (id)aRequest
{   

    if ( [aRequest isMemberOfClass:[ASIHTTPRequest class]] ) 
    {
        
        // 是否JSON/XML
        if( self.iTranslateType == (TRANSLATE_TYPE)JSON )
        {
            [aRequest addRequestHeader:@"translatetype" value:@"json"];
            [aRequest addRequestHeader:@"translateversion" value:self.iTranslateversion];
        }
        else if( self.iTranslateType == (TRANSLATE_TYPE)XML )
        {
            [aRequest addRequestHeader:@"translateype" value:@"xml"];
            [aRequest addRequestHeader:@"translateversion" value:self.iTranslateversion];
        }
        
        // 是否压缩
        if(iIsCompressed){
            [aRequest addRequestHeader:@"compress" value:@"Y"];
            //GZIP
            if ( self.iTheCompressType == (COMPRESS_TYPE)GZIP ) 
            {
                [aRequest addRequestHeader:@"Compresstype" value:@"1"];
            }
        }else {
            [aRequest addRequestHeader:@"compress" value:@"N"];
        }
        
        // 加密方式 DES
        if( self.iTheEncryptType == (ENCRYPT_TYPE)DES )
        {
            [aRequest addRequestHeader:@"encryption" value:@"Y"];
            [aRequest addRequestHeader:@"encryptiontype" value:@"1"];
        }
        else
        {
            [aRequest addRequestHeader:@"encryption" value:@"N"];
        }
        
        //加密压缩顺序
        if ( self.iTransOrder == (TRANS_ORDER)COMPRESS_ENCRYPT ) 
        {
            [aRequest addRequestHeader:@"comencorder" value:@"1"];
        }
        else if(self.iTransOrder==(TRANS_ORDER)ENCRYPT_COMPRESS)
        {
            [aRequest addRequestHeader:@"comencorder" value:@"2"];
        }
        [aRequest addRequestHeader:@"contaiver" value:@"N"];
    }
    
    #ifdef DEBUG
    if ( [[aRequest requestHeaders] description] ) 
    {
       
    }
    #endif
    
    return aRequest;
    
}

/*!
 @method 
 @abstract 设置http的类型是post还是get
 @discussion 
 @param aRequest 
 @result CWAHTTPRequest (owned)
 */
-(void) setHttpType:(NSInteger)aType
{
    if( (HTTP_TYPE)POST == aType )
    {
        [[self iHttpRequest] setRequestMethod:@"POST"];
        
    }
    else if( (HTTP_TYPE)GET == aType )
    {
        [[self iHttpRequest] setRequestMethod:@"GET"];
    }
}


/*!
 @method 
 @abstract 设置请求header 
 @discussion 添加自定header信息
 @param key 将要添加到header中的key
 @param value 将要添加到header中的value
 @result 
 */
- (void) requestSetHeaderkey:(NSString*)aKey 
                       value:(NSString*)aValue
{
    [self.iHttpRequest addRequestHeader:aKey value:aValue];
}

/*!
 @method 
 @abstract 设置请求header 
 @discussion 添加自定header信息
 @param headers 待添加header
 @result 
 */
- (void)requestBuildRequestHeaders:(NSMutableDictionary*)theHeaders
{
    [theHeaders enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) 
    {
      [[self.iHttpRequest requestHeaders] setValue:obj forKey:key];
    }
    ];
}

/*!
 @method 
 @abstract append post请求body信息
 @discussion 
 @param data 待添body data
 @result 
 */
- (void)requestAppendPostData:(NSMutableData *)aData
{
    [self.iHttpRequest appendPostData:aData];
}

/*!
 @method 
 @abstract 将voDictionary
 @discussion 添加自定header信息
 @param headers 待添加header
 @result 
 */
-(void) httpHeaderByDictionary: (NSDictionary *)aDictionary     
                           loadIntoRequest: (ASIHTTPRequest *)aRequest
{
    if( [aDictionary count] > 0 )
    {
        [aDictionary enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) 
        {
            [aRequest addRequestHeader:key value:obj];
        }
        ];    
    }
}

#pragma mark  初始化方法

/*!
 @method 
 @abstract 基于url string 初始化一个CWAHTTPRequest
 @discussion 
 @param aUrl 路径
 @param aType 请求类型 POST/GET
 @result CWAHTTPRequest （owned）
 */
+ (CWAHTTP*) requestWithStringUrl:(NSString*)aUrl type:(NSInteger)aType
{   
    return[[CWAHTTP alloc] initRequestWithStringUrl:aUrl type:aType];
}

/*!
 @method 
 @abstract 解析aDictionary的属性 初始化本类部分属性
 @discussion 
 @param aDictionary 属性字典
 @result 
 */
-(void) setBatchPropertiesWithDictionary:(NSDictionary*)aDictionary
{   
    
    
    if ( [aDictionary valueForKey:@"servlet"] ) 
    {
        NSString *fullUrl = [NSMutableString stringWithFormat:@"%@%@",[aDictionary valueForKey:@"server_url"],[aDictionary valueForKey:@"servlet"]];
        
        [self setIUrl:fullUrl];
    }
    
    [self setIIsEncrypt:[[aDictionary valueForKey:@"isEncrypt"]boolValue]];
    [self setIIsCompressed:[[aDictionary valueForKey:@"isCompression"]boolValue]];
    iTheCompressType = [[aDictionary valueForKey:@"compression_type"]intValue];
    iTheEncryptType=[[aDictionary valueForKey:@"encrypt_type"]intValue];
    [self setITransOrder:[[aDictionary valueForKey:@"trans_order"]intValue]];
    iTranslateType=[[aDictionary valueForKey:@"trans_type"]intValue];
    [self setIDownLoadSavePath:(NSString *)[aDictionary valueForKey:@"downLoadSavePath"]];
    [self setIDownLoadTempPath:(NSString *)[aDictionary valueForKey:@"downLoadTempPath"]];
    [self setIContaiver:[[aDictionary valueForKey:@"contaiver"]boolValue]];
    [self setITranslateversion:(NSString *)[aDictionary valueForKey:@"translateversion"]];
    iASynchronous=YES;

    
}

/*!
 @method 
 @abstract 批量为属性赋值
 @discussion 
 @result 
 */
-(void) setBatchProperties
{
    
    
    self.IIsCompressed=NO;
    iASynchronous=YES;
    iTranslateType=(TRANSLATE_TYPE)JSON;
    iTheEncryptType= (ENCRYPT_TYPE)DES;
    self.IContaiver=NO;
    self.ITransOrder = (TRANS_ORDER)OTHER_ORDER;
    self.iTranslateversion= @"1.1";
    

}

/*!
 @method 
 @abstract 初始化ASIHTTPRequest  并将其设置在iHttpRequest中
 @discussion aDictionary含有固定的WA的头信息
 @param aDictionary 头信息
 @param aType POST/GET请求
 @result 
*/
-(void)initASIHttpRequestWithType:(NSInteger)aType
{
    
    
    ASIHTTPRequest *request = [ASIHTTPRequest requestWithURL:[NSURL URLWithString:self.iUrl]];
    [self setHttpRequestHeader:request];
    
#ifdef DEBUG 
    if([self iHttpRequest] && [[self iHttpRequest] requestHeaders]){
        //NSMutableDictionary *header = [[self iHttpRequest] requestHeaders];
    }
#endif
    [self setIHttpRequest:request];
    [self setIIsWAHeaderBuilt:YES];
    [self setHttpType:aType];
    
    

}

/*!
 @method 
 @abstract 初始化CWAHTTP 
 @discussion aDictionary含有固定的WA的头信息
 @param aDictionary 头信息
 @param aType POST/GET请求
 @result CWAHTTPRequest (owned)
 */
-(CWAHTTP*) initRequestWithDictionary:(NSDictionary*)aDictionary 
                                 type:(NSInteger)aType
{
    
    
    if ( self = [super init] ) 
    {
        [self setBatchPropertiesWithDictionary:aDictionary];
        [self initASIHttpRequestWithType:aType];
    }
    
    
    
    return self;
   
}
/*!
 @method 
 @abstract 基于url string 初始化一个CWAHTTPRequest
 @discussion 含有固定的WA的头信息
 @param aUrl 
 @result CWAHTTPRequest (owned)
 */
-(CWAHTTP*) initWaRequestWithStringUrl:(NSString *)aUrl 
                                  type:(NSInteger)aType
{
    
    if( self = [super init] )
    {
        if( ! aUrl )
        {
            [self setIUrl:self.iUrl];
        }else
        {
            [self setIUrl:aUrl];
        }
        [self setBatchProperties];
        [self initASIHttpRequestWithType:aType];
    }
    
    
    return self;
}

/*!
 @method 
 @abstract 基于url string 初始化一个CWAHTTPRequest
 @discussion 
 @param aUrl 
 @result CWAHTTPRequest (not owned)
 */
- (CWAHTTP*) initRequestWithStringUrl:(NSString *)aUrl 
                                 type:(NSInteger)aType
{
    
    
    if( self = [super init] )
    {  
       ASIHTTPRequest *request = [ASIHTTPRequest requestWithURL:[NSURL URLWithString:aUrl]];
       [self setIHttpRequest:request];
       [self setIIsWAHeaderBuilt:NO];
       [self setHttpType:aType];
        
#ifdef DEBUG
        if( [self iHttpRequest] && [[self iHttpRequest] requestHeaders] )
        {
            NSMutableDictionary *header = [[self iHttpRequest] requestHeaders];
        }
#endif
    }
    
    
    
    return self;
}

// 根据配置信息初始化CWAHTTP
-(CWAHTTP *)initRequestWithHttpConfigVO:(CWAHTTPRequestConfigVO *)aHttpConfigVO
{
  
  
  if( self = [super init] )
  {
    ASIHTTPRequest *request = [ASIHTTPRequest requestWithURL:[NSURL URLWithString:aHttpConfigVO.iUrl]];
    [self setIHttpRequest:request];
    [self setIIsWAHeaderBuilt:NO];
    [self setHttpType:aHttpConfigVO.iHttpReqType];
    self.IIsCompressed=aHttpConfigVO.isCompress;
    iASynchronous=aHttpConfigVO.iASynchronous;
    iTranslateType=aHttpConfigVO.iTranType;
    self.iIsEncrypt= aHttpConfigVO.isEncrypt;
    iTheEncryptType= aHttpConfigVO.iEncryptType;
    self.ITransOrder =aHttpConfigVO.iCompressAndEncryptOrder;
    request.timeOutSeconds = aHttpConfigVO.iTimeOutTime;
    iTheCompressType= aHttpConfigVO.iCompressType;
    if (aHttpConfigVO.isResend)
    {
      [request setNumberOfTimesToRetryOnTimeout:aHttpConfigVO.iReSendTimes];
    }
    
#ifdef DEBUG
    if( [self iHttpRequest] && [[self iHttpRequest] requestHeaders] )
    {
      NSMutableDictionary *header = [[self iHttpRequest] requestHeaders];
    }
#endif
  }
  
  
  
  return self;
}

#pragma mark 异步、压缩传输、https 传输设置开关
/*!
 @method
 @abstract 设置是否压缩body传输
 @discussion 
 @param value 布尔是为压缩 否为非压缩
 @result 
 */
-(void) setCompressValue:(BOOL)aValue
{
    
    
    self.iIsCompressed=aValue;
    if ( aValue ) 
    {
        [[self iHttpRequest] addRequestHeader:@"compress" value:@"Y"];
    }else
    {
        [[self iHttpRequest] addRequestHeader:@"compress" value:@"N"];
    }
    
    
}

/*!
 @method 
 @abstract 设置是否加密传输方式
 @discussion （默认的配置将被覆盖）
 @param aValue 参考（ENCRYPT_TYPE）
 @result 
 */
-(void) setEncryptType:(NSInteger)aType{
    
    
    
    if( aType )
    {
        iTheEncryptType=aType;
        if( (ENCRYPT_TYPE)DES == aType )
        {
            [[self iHttpRequest] addRequestHeader:@"encryptType" value:@"1"];
        }else if ( (ENCRYPT_TYPE)OTHER == aType ) 
        {
             [[self iHttpRequest] addRequestHeader:@"encryption" value:@"N"];
        }
    }
    
    
}

/*!
 @method 
 @abstract 设置传输数据格式
 @discussion （默认的配置将被覆盖）
 @param aValue 参考（TRANSLATE_TYPE）
 @result 
 */
-(void) setTransType:(NSInteger)aType
{
    
    
    if( aType )
    {
        iTranslateType=aType;
        if ( (TRANSLATE_TYPE)JSON == aType ) 
        {
            [[self iHttpRequest] addRequestHeader:@"translatetype" value:@"json"];
        }else if( (TRANSLATE_TYPE)XML == aType )
        {
            [[self iHttpRequest] addRequestHeader:@"translatetype" value:@"xml"];
        }
    }
    
    
}

/*!
 @method 
 @abstract 获取当前HTTP是否为压缩POST BODY传输
 @discussion 
 @result BOOL
 */
-(BOOL) compressed
{
    return self.iIsCompressed;
}



# pragma mark private method 私有方法 
//以json格式装载http body
- (ASIHTTPRequest *) httpBodyInJSONWithBaseVO:(CWABaseVO*)basevo 
                              loadIntoRequest:(ASIHTTPRequest*) request
{
    
    
    NSData * data = [basevo parseVOToJSONData];
    [request appendPostData:data];
    return request;
    
    
}

/* xml格式封装body
-(ASIHTTPRequest *) httpBodyInXMLWithBaseVO:(CWABaseVO*)basevo 
                            loadIntoRequest:(ASIHTTPRequest*)request{
    return request;
}
*/

//解析字典，封装post request body    
-(ASIHTTPRequest *) httpBodyValuesByDicitonary:(NSDictionary *)aDict 
                               loadIntoRequest:(ASIHTTPRequest*)request
{
    
    
    if( [aDict count]>0 )
    {
        [aDict enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) 
        {
            [request setValue:obj forKey:key];
        }
        ];
    }
    
    
    return request;
}

#pragma mark request HEAD

/*!
 @method 
 @abstract 获取请求的header
 @discussion
 @param
 @result NSMutableDictionary 
 */
-(NSMutableDictionary*)requestHead
{
   return [[self iHttpRequest] requestHeaders];

}

#pragma mark 是否加密、是否压缩、解密、解压缩
/*!
 @method 
 @abstract 判断请求结果是否压缩
 @discussion 
 @param 
 @result BOOL 布尔
 */
- (BOOL)isResponseCompressed
{
    return [self.iHttpRequest isResponseCompressed];
}

/*!
 @method 
 @abstract 从NSData 解压缩
 @discussion 
 @param aData 已压缩数据
 @result NSData 解压缩数据
 */
-(NSData*) decompressed:(NSData*)aData
{

    return [ZipUtility uncompressZippedData:aData];   
}

/*!
 @method 
 @abstract 从NSString 解密数据
 @discussion 
 @param aType 加密方式
 @result NSString 已解密明文
 */
-(NSString*)decryptString:(NSString*)aString type:(NSInteger)aType
{  
    
    
    NSString *plaintext;
    if( (ENCRYPT_TYPE)DES == aType )
    {
        
        plaintext= [DESEncryption TripleDES:aString encryptOrDecrypt:(CCAlgorithm)kCCDecrypt key:key];

    if( plaintext )
    {
    }
    }else
    {
        plaintext = aString;
    }
    
    
    return plaintext;
}

#pragma mark get information about this request 获取请求结果信息
/*! 
 @method 
 @abstract 获取请求结果，以NSString形式
 @discussion 
 @param 
 @result NSString
 */
- (NSString*)getResponseString

{   
    
    
    NSString *plainString =nil;
    NSString *responseString=nil;
    
    //解压缩
    if ( self.iIsCompressed )
    {
        NSData *responseData = [self.iHttpRequest responseData];
        NSData *decompressData = [self decompressed:responseData];
        responseString  =[NSString stringWithUTF8String:[decompressData bytes]];
    }
    else
    {
        responseString=[self.iHttpRequest responseString];
    }

    //解密判断
    if ( self.iTheEncryptType >= 0 ) 
    {
        
        @try 
        {
             plainString=[self decryptString:responseString type:(ENCRYPT_TYPE)DES];
        }
        @catch (NSException *exception) 
        {
               
            [self logException:exception];
                
        }
        @finally 
        {
            
        }
    }else
    {
        //UTF8转码
        @try {
            plainString = [NSString stringWithCString:[responseString cStringUsingEncoding:NSISOLatin1StringEncoding] encoding:NSUTF8StringEncoding];
//            plainString = [NSString stringWithUTF8String:[responseString cStringUsingEncoding:NSUTF8StringEncoding]];
        }
        @catch (NSException *exception) 
        {
            [self logException:exception];
        }
        @finally 
        {
            
        }

       
    }
    // 如果是POST流方式下载附件本地存储处理
//    if (plainString && self.isDownloadBytes) {
//        NSDictionary *jsonvalue = [plainString JSONValue];
//        NSArray *aValue = nil;
//      
//        @try {
//            aValue= (NSArray*) [CWAJSONParserUtils getValueFromJson:jsonvalue ForKeyPath:@"wacomponents.wacomponent.actions.action.resresult.servicecodesres.servicecoderes.resdata.struct.messageattachment.attachmentcontent"]; 
//                    }
//        @catch (NSException *exception) {
//            [self logException:exception];
//            NSDictionary *dic = [NSDictionary dictionaryWithObject:@"info" forKey:@"解析返回值失败，无法保存附件"];
//            NSError *error = [NSError errorWithDomain:@"JSON_ERROR" code:1 userInfo:dic];
//            [self.httpRequest setError:error];
//        }
//        @finally {
//           
//           
//        }
//        
//        if (aValue && [aValue count]>0) {
//            NSString *content = [aValue objectAtIndex:0];
//            NSData *adata= [GTMBase64 decodeString:content];
//            [CWAFileUtil createFileAtDocumentsWithName:@"test.doc" content:adata];
//        }
//       
//    }
    
    
   return plainString;
}


/*!
 @method 
 @abstract 获取请求结果，以NSData形式
 @discussion 
 @param 
 @result NSData
 */
- (NSData*)getResponseData
{
    
    NSData *responsedata = [self.iHttpRequest responseData];
    NSData *finalData ;
    if( self.iIsCompressed )
    {
        finalData=[self decompressed:responsedata];
    }
    else
    {
        finalData=responsedata;
    
    }
    if ( self.iTheEncryptType ) 
    {
        //
    }
    
    
    return finalData;
}

// 获取应用更新的请求返回值String 
- (NSString *) getAppUpdateResponseString
{
  
  NSData *responseData = [self.iHttpRequest responseData];
  NSData *decompressData  = [self decompressed:responseData];
  NSString *responseString  =[NSString stringWithUTF8String:[decompressData bytes]];
  
  
  return responseString;
}

@end
