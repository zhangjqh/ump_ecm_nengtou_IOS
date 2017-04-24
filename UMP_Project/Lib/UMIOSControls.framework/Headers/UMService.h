//
//  UMService.h
//  AnimationDemo
//
//  Created by dingheng on 13-8-9.
//  Copyright (c) 2013年 dingheng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "XEventArgs.h"
#import "UMIOSCommon.h"
#import "UMCommon.h"
#import "UMExpend.h"
#import "UMEventArgs.h"

#import <SystemConfiguration/CaptiveNetwork.h>



#define LOGIN_SUCCESS @"0000"// 登陆成功代码
#define USER_DISABLE @"1001"//用户已停用代码
#define USER_UNENABLE @"1002"//用户未启用代码
#define USER_LOCKED @"1003"//用户被锁定代码
#define USER_NONEEXIST @"1004"//用户不存在
#define PWD_WRONG @"1100"//密码错误代码
#define NO_PERMISSION @"2001"//用户没有权限代码
#define NO_LICENCE_SATURATION @"3001"//授权数已用完代码
#define NO_LICENCE_DBTAMPERED @"3002"//授权表数据被篡改代码
#define TOKEN_GENERATE_FAILED @"4001"//生成令牌失败代码
#define USERVERIFY_UNCATCH_EXCEPTION  @"9100"//用户检验未捕获异常代码
#define PWDVERIFY_UNCATCH_EXCEPTION  @"9110";//密码校验未捕获异常代码
#define LICENCEVERIFY_UNCATCH_EXCEPTION  @"9200"//licence校验未捕获异常代码
#define DEVICE_INFO_EXCEPTION @"9300"//设备信息错误代码
#define DATASOURCE_UNLEGAL @"9900"//数据源不合法或不存在代码
#define MONEY_CODE @"PM001" //app没有授权




/*------BLOCKS------*/
/**
 *
 *  成功标识
 *
 */
typedef void (^UMServiceFinish)(BOOL success);
/**
 *
 *  成功标识
 *
 */
typedef void (^UMLoad)(NSData * test);

/**
 *
 *  扩展接口
 *
 */

#define UMEXTENSION_FINISH @"UMEXTENSION_FINISH"  //扩展服务 finish
#define UMEXTENSION_PROGRESS @"UMEXTENSION_PROGRESS" //扩展服务 progress
#define UMEXTENSION_FAIL @"UMEXTENSION_FAIL"      //扩展服务 fail

typedef void (^UMExtensionFinish)(NSDictionary * json);
typedef void (^UMExtensionProgress)(float progressValue,NSInteger percentage,NSData* data);
typedef void (^UMExtensionFail)(NSError * error);

#pragma mark
#pragma mark U8ReportService.h

/*
 * --------------------------------------  u8列表数据加载 U8ReportService --------------------------------------
 */

@interface U8ReportService : NSObject

/**
 *  U8报表加载下一页
 */
+(void)nextPage:(XEventArgs *)args;

@end


#pragma mark
#pragma mark UMList.h

/*
 * --------------------------------------  列表加载下一页 公共服务 UMList --------------------------------------
 */
@interface UMList : NSObject

/**
 *  列表加载刷新
 */
+(void)getFirstPage:(XEventArgs *)args;
/**
 *  列表加载下一页
 */
+(void)getNextPage:(XEventArgs *)args;

@end


#pragma mark
#pragma mark UMSetting.h

/*
 * --------------------------------------  本地配置文件  UMSetting --------------------------------------
 */
@interface UMSetting : NSObject

@property(nonatomic,strong) NSString * httpType;//http类型
@property(nonatomic,strong) NSString * username;//用户名
@property(nonatomic,strong) NSString * password;//密码
@property(nonatomic,strong) NSString * serverUrl;//服务地址
@property(nonatomic,strong) NSString * appId;//应用id
@property(nonatomic,strong) NSString * token;//唯一token值
@property(nonatomic,strong) NSString * userid;//当前Userid
@property(nonatomic,strong) NSString * groupid;//当前groupid
@property(nonatomic,strong) NSString * host;//host
@property(nonatomic,strong) NSString * type;//nc or u8
@property(nonatomic,strong) NSString * u8viewid;//u8
@property(nonatomic,strong) NSString * sessionid;//sessionid 
@property(nonatomic,strong) NSString * licenceKey;//授权模块ID
@property(nonatomic,strong) NSString * tabid;//tabid
@property(nonatomic,strong) NSString * pushtoken;//pushtoken
@property(nonatomic,strong) NSString * funcid;//funcid
@property(nonatomic,strong) NSString * deivceid;//deivceid
@property(nonatomic,strong) NSString * wfaddress;//wfaddress
@property(nonatomic,strong) NSString * applicationid;//applicationid
@property(nonatomic,strong) NSString * versionname;//versionname
@property(nonatomic,strong) NSString * versioncode;//versioncode
@property(nonatomic,strong) NSString * package;//package
@property(nonatomic,strong) NSMutableDictionary * userinfo;//appvalue
@property(nonatomic,strong) NSMutableDictionary * deviceinfo;
@property(nonatomic,strong) NSMutableDictionary * appcontext;
@property(nonatomic,strong) NSString * latestUrl;//下载地址
@property (nonatomic,strong) NSString *pushdeviceid;//UpushUUid

+(UMSetting *)sharedInstance;
@end


@protocol UMServiceDelegate <NSObject>

-(void)login:(NSData *)data;
-(void)fail:(NSError *)error;

@end



#pragma mark
#pragma mark UMService.h

/*
 * -------------------------------------- 网络服务 UMService --------------------------------------
 */
@interface UMService : NSObject<UMServerProxyDelegate,UMServiceDelegate>
@property(nonatomic,assign) id<UMServiceDelegate> delegate;

+ (UMService *)sharedInstance;


/*
 * @brief post请求
 */
+(void)post:(XEventArgs *)args;


/*
 * @brief get请求
 */
+(void)get:(XEventArgs *)args;

/*
 * @brief 检测版本更新
 *
 */
+(void)checkVersion:(UMEventArgs *)args;



/*
 * @brief https 默认打开
 *
 */
+(void)openHTTPS:(XEventArgs *)args;

/*
 * @brief http 默认关闭
 */
+(void)closeHTTPS:(XEventArgs *)args;  


/*
 * @brief nc登录
 */
+(void)loginNc:(XEventArgs *)args;

/*
 * @brief U8登录
 */
+(void)loginU8:(XEventArgs *)args;

/*
 *  @brief xt登录
 */
+(void)loginXt:(XEventArgs *)args;

/*
 *  @brief	登录
 *
 *	@param 	配置参数
 *
 *
 *  @return 返回值成功标识
 */
+(void)login:(XEventArgs *)args;

/*
 *  @brief	保存cfg
 *
 *	@param 	参数
 *          host //http://10.11.98.93:8080
 UMService.writeConfigure
 *
 */

+(void)writeConfigure:(XEventArgs *)args;

+(NSString *)readConfigure:(XEventArgs *)args;

/*
 *  @brief	获取cfg
 UMService.loadConfigure
 */
+(NSString *)loadConfigure:(XEventArgs *)args;

/*
 *  @brief	调用MUSvr上当前ViewController的一个service方法
 *
 *	@param 	post参数
 *
 *          必须配置 serviceid=服务id
 
 *  @return 返回值设置Ctx的路径
 */
+(void)callService:(XEventArgs *)args;

/*
 *  @brief	调用MUSvr上当前ViewController的一个Action方法
 *
 *	@param 	post参数
 *
 *          serviceid=服务id
 *
 *          deviceinfo={"devid":"设备id"}
 *
 *          appcontext={"appid":"应用ID","user":"用户名","pass":"密码","token":"唯一标识","tabid":"表名","funcid":"??"}
 *
 *          servicecontext={"viewid":"当前viewID","actionname":"方法","params":"POST数据(JSON)"}
 *
 *  @return 返回值设置Ctx的路径
 */
+(void)callAction:(XEventArgs *)args;



/*
 *  @brief	调用callAction方法，action参数值固定为load
 *
 *  @return 返回值设置Ctx的路径
 */
+(void)load:(XEventArgs *)args;



/*
 *  @brief	调用callAction方法，action参数值固定为save
 *
 *  @return 返回值设置Ctx的路径
 */
+(void)save:(XEventArgs *)args;

/*
 *  @brief	加载图片loadImagewithURL
 *
 *  @return ^(NSData * data)()
 */
+(void)loadImage:(NSString *)imageName finish:(UMServerProxyFinished)finish progress:(UMServerProxyProgressBlock)progress;

/*
 *  @brief	上传 文件/图片 loadImagewithURL
 *
 *  pathlist 文件/图片 路径数组
 *
 *  @return ^(NSData * data)()
 */
+(void)upLoader:(NSArray *)pathlist finish:(UMServiceFinish)success;


/*
 *  @brief	上传文件
 *
 *  @param 	fields
 *          mimetypes
 *          range
 *
 */
+(void)upload:(XEventArgs *)args;

/*
 *  @brief	下载文件
 *
 *  @param 	filename
 *          mimetypes
 *          range
 *
 */
+(void)download:(XEventArgs *)args;


/*
 *  @brief	上传图片
 *
 */
+(void)uploadImage:(XEventArgs *)args;


/*
 *  @brief	批量上传图片
 *
 */
+(void)batchUpLoadImage:(XEventArgs *)args;


/*
 *  @brief	裁剪图片
 *
 */
+(void)cropImage:(XEventArgs *)args;

/*
 *  @brief	压缩图片
 *
 *
 */
+(void)compressImage:(XEventArgs *)args;

/*
 *  @brief	附件下载并且打开
 *
 */
+(void)downloadFile:(XEventArgs *)args;


/*
 *  @brief	穿透获取html服务
 *  @param   ("infoid");  请求的ID
             ("binderfiled"); 用于绑定webview的字段名
 *
 */
+(void)transInfoService:(XEventArgs *)args;
/*
 *  @brief	发送本地通知服务
 *  @param   ("sendTime");  发送通知的时间,形似2014-12-26 12:00:00
             ("sendBody");  发送通知的内容
 *
 */
+(void)localNotification:(XEventArgs *)args;


/*! @brief 注册UPush
 *
 * 需要在每次注册时调用
 * @see upushSignin
 * @param token 向apple服务器注册设备和应用后返回的token
 * @param ip 服务器地址
 * @param port 服务器端口
 * 如果ip或port任一为空,则默认服务器地址为 URL
 * @return 成功返回YES，失败返回NO。
 */
+(void)upushSignin:(XEventArgs *)args;
#pragma mark 内部使用函数

+ (NSData *)gzipData:(NSData *)pUncompressedData;

+(NSData *)uncompressZippedData:(NSData *)compressedData;




@end



