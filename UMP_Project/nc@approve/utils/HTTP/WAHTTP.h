/*!
 @header CWAHTTP.h
 @abstract HTTP 请求封装 返回值解密解压
 @author Created by sunset.z 
 @version Copyright (c) 2012 __wa__. All rights reserved.1.00 on 12-3-24.
 */

#import <Foundation/Foundation.h>
#import "WABaseVO.h"
#import "WAJSONParserUtils.h"
#import "ASIHTTPRequest.h"
#import "WAHTTPDef.h"
#import "DESEncryption.h"
#import "WAHTTPRequestConfigVO.h"

/*!
 @class
 @abstract CWAHTTP：HTTP请求
 @discussion 
 */
@interface CWAHTTP: NSObject
{
    NSString *iUrl;
    NSMutableDictionary *iHeaders;
    ASIHTTPRequest* iHttpRequest;
    BOOL iASynchronous;
    NSString *iDownLoadSavePath;
    NSString *iDownLoadTempPath;
    NSInteger iTransOrder;
    NSInteger iTheCompressType;
    NSInteger iTheEncryptType;
    NSInteger iTranslateType;
    BOOL isDownloadBytes;
    NSString *iDownloadFileName;

}

/*!
 @property 请求url
 @abstract 
 */
@property (retain) NSString *iUrl;
/*!
 @property 待添加header信息
 @abstract 
 */
@property (retain) NSMutableDictionary *iHeaders;
/*!
 @property ASIHTTPRequest
 @abstract 
 */
@property (nonatomic,retain) ASIHTTPRequest *iHttpRequest;
/*!
 @property 是否异步
 @abstract 
 */
@property (readonly,nonatomic)BOOL iASynchronous;
/*!
 @property 下载文件保存path
 @abstract 
 */
@property (retain,nonatomic) NSString *iDownLoadSavePath;
/*!
 @property 下载文件临时缓存文件path
 @abstract 
 */
@property (retain,nonatomic) NSString *iDownLoadTempPath;

/*!
 @property 加密压缩顺序 (先压缩后加密，先加密后压缩等) 对应enum (TRANS_ORDER)
 @abstract 
 */
@property NSInteger iTransOrder;
/*!
 @property 压缩方式 (gzip等) 对应enum (COMPRESS_TYPE)
 @abstract 
 */
@property (readonly,nonatomic)NSInteger iTheCompressType;
/*!
 @property 加密方式 (DES等) 对应enum (ENCRYPT_TYPE)
 @abstract 
 */
@property (readonly,nonatomic)NSInteger iTheEncryptType;
/*!
 @property 传输方式 （json,xml等）对应enum (TRANSLATE_TYPE)
 @abstract 
 */
@property (readonly,nonatomic)NSInteger iTranslateType;
/*!
 @property 是否byte方式下载
 @abstract 
 */
@property BOOL isDownloadBytes;
/*!
 @property 下载文件名称
 @abstract 
 */
@property (retain,nonatomic) NSString *iDownloadFileName;

#pragma mark 构造CWAHTTPRequest
/*!
 @method 
 @abstract 基于url string 初始化一个CWAHTTPRequest
 @discussion 
 @param aURL 请求路径
 @param aType 请求类型 参照HTTPDef.h 中的HTTP_TYPE枚举
 @result CWAHTTPRequest (owned)
 */
+(CWAHTTP*) requestWithStringUrl:(NSString*)aURL 
                            type:(NSInteger)aType;

/*!
 @method 
 @abstract 基于dictionary初始化CWAHTTP
 @discussion dictionary中包含对请求的配置，诸如是否压缩、压缩方式、是否加密、加密方式等
 @param aDictionary 中包含对请求的配置
 @param aType 请求类型 参照HTTPDef.h 中的HTTP_TYPE枚举
 @result CWAHTTPRequest (not owned 需要释放声称的request)
 */
-(CWAHTTP*) initRequestWithDictionary:(NSDictionary *)aDictionary 
                                 type:(NSInteger)aType;

/*!
 @method 
 @abstract 基于url string 初始化一个CWAHTTPRequest
 @discussion 初始化的CWAHTTPRequest中包含了WA固定的head信息
 @param aURL 请求路径
 @param aType 请求类型 参照HTTPDef.h 中的HTTP_TYPE枚举
 @result CWAHTTPRequest (not owned) 需要释放生成的request
 */
-(CWAHTTP*) initWaRequestWithStringUrl:(NSString*)aURL 
                                  type:(NSInteger)aType;

/*!
 @method
 @abstract 根据一组配置信息初始化CWAHTTP
 @discussion 该初始化不再初始化与MA请求有关的头信息
 @param aHttpConfigVO 配置vo
 @result CWAHTTPRequest (not owned) 需要释放生成的request
 */
-(CWAHTTP *)initRequestWithHttpConfigVO:(CWAHTTPRequestConfigVO *)aHttpConfigVO;

/*!
 @method 
 @abstract 基于url string 初始化一个CWAHTTPRequest
 @discussion 
 @param aURL 请求路径
 @param aType 请求类型 参照HTTPDef.h 中的HTTP_TYPE枚举
 @result CWAHTTPRequest (not owned) 需要释放生成的request
 */
- (CWAHTTP*) initRequestWithStringUrl:(NSString*)aURL 
                                 type:(NSInteger)aType; 
                                    
#pragma mark 异步、压缩传输、https 传输设置开关
/*!
 @method 
 @abstract 设置是否压缩body传输
 @discussion 
 @param aValue 布尔是为压缩 否为非压缩
 @result 
 */
-(void) setCompressValue:(BOOL)aValue;
/*!
 @method 
 @abstract 设置是否加密传输方式
 @discussion （默认的配置将被覆盖）
 @param aValue 参考（ENCRYPT_TYPE）
 @result 
 */
-(void) setEncryptType:(NSInteger)aType;
/*!
 @method 
 @abstract 设置传输数据格式
 @discussion （默认的配置将被覆盖）
 @param aValue 参考（TRANSLATE_TYPE）
 @result 
 */
-(void) setTransType:(NSInteger)aType;
/*!
 @method 
 @abstract 获取当前HTTP是否为压缩POST BODY传输
 @discussion 
 @result BOOL
 */
-(BOOL) compressed;

#pragma mark setup request 封装请求
/*!
 @method 
 @abstract 设置请求header 
 @discussion 添加自定header信息
 @param key 将要添加到header中的key
 @param value 将要添加到header中的value
 @result 
 */
- (void) requestSetHeaderkey:(NSString*)aKey 
                       value:(NSString*)aValue;

/*!
 @method 
 @abstract 设置请求header 
 @discussion 添加自定header信息
 @param headers 待添加header
 @result 
 */
- (void)requestBuildRequestHeaders:(NSMutableDictionary *)aHeader;

/*!
 @method 
 @abstract append post请求body信息
 @discussion 
 @param data 待添body data
 @result 
 */
- (void)requestAppendPostData:(NSMutableData *)aData;

#pragma mark get information about this request 获取请求结果信息
/*!
 @method 
 @abstract 获取请求结果，以NSString形式
 @discussion 
 @result NSString  
 */
- (NSString *)getResponseString;
/*!
 @method 
 @abstract 获取请求结果，以NSData形式
 @discussion  
 @result NSData 
 */
- (NSData *)getResponseData;
/*!
 @method
 @abstract 获取app版本更新的请求返回值
 @discussion
 @result NSString 解压后的返回值
 */
- (NSString *) getAppUpdateResponseString;

#pragma mark request HEAD

/*!
 @method 
 @abstract 获取请求的header
 @discussion
 @param
 @result NSMutableDictionary 请求的header
 */
-(NSMutableDictionary *)requestHead;


@end
