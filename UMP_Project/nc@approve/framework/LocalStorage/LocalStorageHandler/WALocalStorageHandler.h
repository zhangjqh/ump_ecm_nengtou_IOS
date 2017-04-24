
#import <Foundation/Foundation.h>
#import "WAFileUtil.h"
#import "WALoginRequestVO.h"
#import "WABnsDesVO.h"
#import "WALoginVO.h"

static NSString* const WA_LOCALSTORAGE_KBNSVO = @"bndvo";
static NSString* const WA_LOCALSTORAGE_KBASEVO = @"basevo";

/*!
 *	@header	WALoginFileUtil.h
 *	@abstract	登陆文件工具类
 *	@discussion	实现的功能有：
                    （1）根据用户名和网络配置地址获取用户的目录。
 *	@author	huych
 *	@copyright	ufida
 *	@version	1.0 2012-07-04 09:24:36 Creation
 */
@interface CWALocalStorageHandler : NSObject

/*!
 *	@method
 *	@abstract	根据用户名和网络配置地址获取用户的目录
 *	@discussion	参数有一个为nil或空时，返回nil，生成的目录会见url进md5加密，以消除文件目录的非法字符
 *	@param 	aUserName 	用户名
 *	@param 	aUrl 	url
 *	@param 	aMD5URL 	生成的MD5URL，提供给调用者使用
 *	@result	如果用户目录存在，返回用户在该网络配置下的目录，不存在并且aIsCreateIfNO为真时，创建目录以后返回，
 否则返回空，文件目录创建不成功也返回nil.
 */
+(NSString *)createDirWithUserName:(NSString *)aUserName
                           withUrl:(NSString *)aUrl
                        WithMD5URL:(NSString **)aMD5URL;


/*!
 *	@method
 *	@abstract	获取userinfo.plist的目录
 *	@discussion	不存在就创建
 *	@result	返回userinfo.plist的绝对路径
 */
+ (NSString *)getPathOfUserInfoPlist;

/*!
 *	@method
 *	@abstract	获取当前登陆用户的用户目录
 *	@discussion	
 *	@result	返回当前登陆用户的用户目录
 */
+ (NSString *)getDirOfLastLoginUser __attribute__((deprecated));

/*!
 *	@method
 *	@abstract	根据应用target获取当前登陆用户的用户目录,并创建文件夹
 *	@discussion	区分应用
 *	@param 	aBtarget 	应用
 *	@result	返回当前登陆用户的用户应用目录
 */
+ (NSString *)createDirOfLastLoginUserWithBtarget:(NSString *)aBtarget;


/*!
 *	@method
 *	@abstract	保存用户标志信息，比如用户id,组织id等
 *	@discussion	NSArray里面元素只支持数组或字段，所有的原子元素只能是string
 *	@param 	aLoginToken 	用户标志信息数组
 */
+ (void)saveLoginToken:(NSArray *)aLoginToken;

/*!
 *	@method
 *	@abstract	从plist中获取用户信息
 *	@discussion	
 *	@result	返回用户标识信息，如用户id,组织id等，不存在返回nil
 */
+ (NSArray *)getLoginTokenFromPlist;


/*
 @method
 @abstract 组装登录请求数据
 @discussion
 @param aLoginVO 登录数据
 @result 登陆请求数据，不需要释放，owned
 */
+ (CWALoginRequestVO *)constructLoginRequestVo;

/*!
 *	@method
 *	@abstract	通过用户名，密码，登陆userid,groupid等组装登陆数据
 *	@discussion	添加设备信息
 *	@param 	aUserName 	用户名称
 *	@param 	aPassword 	用户密码
 *	@param 	aLoginToken 	loginToken
 *	@result	组装的登陆信息
 */
+ (CWALoginRequestVO *)constructLoginRequestVoWithUserName:(NSString *)aUserName
                                              WithPassword:(NSString *)aPassword
                                            WithLoginToken:(NSArray *)aLoginToken
                                          WithIsForceLogin:(BOOL)aIsForceLogin;

+ (CWALoginRequestVO *)constructLoginRequestVoWithUserName:(NSString *)aUserName
                                              WithPassword:(NSString *)aPassword
                                             withAccountID:(NSString *)aAccountID
                                            WithLoginToken:(NSArray *)aLoginToken;
/*!
 *	@method
 *	@abstract	通过aLoginVO组装登陆数据 （u8多帐套使用）
 *	@discussion	添加设备信息 拼装请求参数时拼装帐套groupid信息
 *	@param 	aLoginVO 	用户登陆信息
 *	@param 	aLoginToken 	loginToken
 *	@result	组装的登陆信息
 */
+ (CWALoginRequestVO *)constructLoginRequestVoWithLoginVO:(CWALoginVO *) aLoginVO
                                           WithLoginToken:(NSArray *)aLoginToken;

                                                  
/*!
 *	@method
 *	@abstract	组装登陆的bns数据
 *	@discussion	
 *	@result	bns数据　owned,不须释放
 */
+ (CWABnsDesVO *)constructLoginRequestBnsDic;

/*!
 *	@method
 *	@abstract	组装登陆数据字典
 *	@discussion	
 *	@result	组装登陆数据字典
 */
+ (NSDictionary *)constructLoginRequestDic;

/*!
 *	@method
 *	@abstract	获取最后登陆用户设置的url
 *	@discussion	
 *	@param 	userInfoDic 	用户设置dic
 *	@result	返回url
 */
+ (NSString *)getlastLoginUserURLFromUserInfoDic:(NSDictionary *)userInfoDic;

/*!
 *	@method
 *	@abstract	获取最后登陆用户的AccountID 帐套id 即groupid
 *	@discussion	
 *	@param 	userInfoDic 	用户设置dic
 *	@result	返回帐套id
 */
+ (NSString *)getLastLoginAccountGroupIDFromUserInfoDic:(NSDictionary *)userInfoDic;

/*!
 *	@method
 *	@abstract	获取用户信息
 *	@discussion	
 *	@result	owend,不需要释放
 */
+ (NSDictionary *)getUserInfoDic;

/*
 @method
 @abstract 保存连接地址到NSUserDefaults
 @discussion 
 @param aURL URL
 */
+ (void)saveURL:(NSString *)aURL;

/*!
 *	@method
 *	@abstract	获取url
 *	@discussion	
 *	@result 不需要释放，owend
 */
+ (NSString *)getURL;

/*!
 *	@method
 *	@abstract	保存用户信息到userlist,并创建用户目录
 *	@discussion	
 *	@param 	aLoginSaveVO 	登陆用户数据
 */
+ (void)saveUserInfoAndMkDirWithLoginSaveVO:(CWALoginVO *)aLoginSaveVO;

/*!
 *	@method
 *	@abstract	保存完整的登陆信息，包含最后登陆用户信息，和用户列表
 *	@discussion	＝
 *	@param 	loginSaveVO 	登陆用户数据
 */
+ (void)saveLoginSaveVO:(CWALoginVO *)loginSaveVO;

/*
 @method
 @abstract 保存最后一个登陆者的登录数据
 @discussion  只有在自动登录的时候才保存用户名和密码，连接地址不为空的时候，保存连接地址
 @param loginSaveVO 登录数据
 */
+ (void)saveLastLoginUserWithLoginSaveVO:(CWALoginVO *)loginSaveVO;

/*
 @method
 @abstract 修改最后一个登陆者的登录密码
 @discussion
 @param Pwd 修改后的登陆密码
 */
+ (void)ModifyLastLoginPwd:(NSString *)Pwd;

@end


#import <Foundation/Foundation.h>

@interface NSDictionary (WADesDictionary)


- (BOOL)writeDesToFile:(NSString *)path atomically:(BOOL)useAuxiliaryFile;
+ (id)dictinaryWithContentsOfDesFile:(NSString *)path;
@end

