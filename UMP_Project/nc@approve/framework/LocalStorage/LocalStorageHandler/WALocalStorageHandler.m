#import "WADeviceInfoUtil.h"
#import "WALocalStorageHandler.h"
#import "WAStringUtil.h"
#import "WAPushUtil.h"
#import "WATimeUtil.h"
#import "WACommonInfoVO.h"


/*!
 *	@abstract	登陆文件处理类
 *	@discussion	
 */
@implementation CWALocalStorageHandler

static NSString *WA_LOCALSTORAGE_KUSERINFO = @"userinfo";
static NSString *WA_LOCALSTORAGE_FILENAME = @"UserInfo.plist";
static NSString *WA_LOCALSTORAGE_KLASTLOGIN = @"lastlogin";
static NSString *WA_LOCALSTORAGE_KLOGINUSER = @"username";
static NSString *WA_LOCALSTORAGE_KURL = @"url";
static NSString *WA_LOCALSTORAGE_KURLDIR = @"urldir";
static NSString *WA_LOCALSTORAGE_KUSRLIST = @"userlist";
static NSString *WA_LOCALSTORAGE_KLOGINTOKEN = @"loginToken";
static NSString *WA_LOCALSTORAGE_KPASSWORD = @"password";
static NSString *WA_LOCALSTORAGE_ACCOUNTS = @"accounts";
static NSString *WA_LOCALSTORAGE_GROUPID = @"iGroupid";

#pragma mark 获取用户目录
+(NSString *)createDirWithUserName:(NSString *)aUserName
                        withUrl:(NSString *)aUrl
                     WithMD5URL:(NSString **)aMD5URL
{
  NSString *dirOfUserName = nil;
  if(aUserName != nil && aUrl != nil && ![aUserName isEqualToString:@""] 
     && ![aUrl isEqualToString:@""])
  {
    NSString *homePath = [CWAFileUtil getCachesPath];
    NSString *userinfoPath = [CWAFileUtil addSubPath:@"userinfo" toPath:homePath];
    *aMD5URL = [CWAStringUtil md5ToString:aUrl];
    NSString *aUrlPath = [CWAFileUtil addSubPath:*aMD5URL toPath:userinfoPath];
    dirOfUserName = [CWAFileUtil addSubPath:aUserName toPath:aUrlPath];
    
    //不存在并且需要创建目录
    if (![CWAFileUtil fileExistsAtPath:dirOfUserName]) 
    {
      NSFileManager *tempFileManager = [CWAFileUtil getNSFileManager];
      BOOL result = [tempFileManager createDirectoryAtPath:dirOfUserName
                               withIntermediateDirectories:YES 
                                                attributes:nil
                                                     error:nil];
      if(!result)
      {
        dirOfUserName = nil;
      }
    }
  }
  return dirOfUserName;
}

+ (NSString *)getPathOfUserInfoPlist
{
  NSString *homePath = [CWAFileUtil getCachesPath];
  NSString *userinfoPath = [CWAFileUtil addSubPath:WA_LOCALSTORAGE_KUSERINFO toPath:homePath];
  if (![CWAFileUtil fileExistsAtPath:userinfoPath]) 
  {
    NSFileManager *tempFileManager = [CWAFileUtil getNSFileManager];
   [tempFileManager createDirectoryAtPath:userinfoPath
                             withIntermediateDirectories:YES 
                                              attributes:nil
                                                   error:nil];
  }
  NSString *pathOfUserInfoPlist = [CWAFileUtil addSubPath:WA_LOCALSTORAGE_FILENAME
                                                        toPath:userinfoPath];
  return pathOfUserInfoPlist;
}

+ (NSString *)getDirOfLastLoginUser
{
  //获取plist的路径
  NSString *pathOfUserInfoPlist = [CWALocalStorageHandler getPathOfUserInfoPlist];
  
  //转化为字典
  NSDictionary *userInfoDic = [NSDictionary dictinaryWithContentsOfDesFile:pathOfUserInfoPlist];
  
  //获取最后登陆用户信息
  NSDictionary *lastlogin = [userInfoDic objectForKey:WA_LOCALSTORAGE_KLASTLOGIN];
  NSString *username = [lastlogin objectForKey:WA_LOCALSTORAGE_KLOGINUSER];
  NSString *url = [lastlogin objectForKey:WA_LOCALSTORAGE_KURL];
  
  //获取url对应的MD5的目录
  NSDictionary *urldirDic = [userInfoDic objectForKey:WA_LOCALSTORAGE_KURLDIR];
  NSString *urldir = [urldirDic objectForKey:url];

  //创建目录结构:/cache/userinfo/地址md5/用户名
  NSString *homePath = [CWAFileUtil getCachesPath];
  NSString *userinfoPath = [CWAFileUtil addSubPath:WA_LOCALSTORAGE_KUSERINFO toPath:homePath];
  NSString *aUrlPath = [CWAFileUtil addSubPath:urldir toPath:userinfoPath];
 
  NSString *dirOfUserName = [CWAFileUtil addSubPath:username toPath:aUrlPath];
  return dirOfUserName;
}

+ (NSString *)createDirOfLastLoginUserWithBtarget:(NSString *)aBtarget
{
  NSString *dirOfUserBtargetName = nil;
  if(aBtarget)
  {
    //获取plist的路径
    NSString *pathOfUserInfoPlist = [CWALocalStorageHandler getPathOfUserInfoPlist];
  
    //转化为字典
    NSDictionary *userInfoDic = [NSDictionary dictinaryWithContentsOfDesFile:pathOfUserInfoPlist];
  
    //获取最后登陆用户信息
    NSDictionary *lastlogin = [userInfoDic objectForKey:WA_LOCALSTORAGE_KLASTLOGIN];
    NSString *username = [lastlogin objectForKey:WA_LOCALSTORAGE_KLOGINUSER];
    NSString *url = [lastlogin objectForKey:WA_LOCALSTORAGE_KURL];
  
    //获取url对应的MD5的目录
    NSDictionary *urldirDic = [userInfoDic objectForKey:WA_LOCALSTORAGE_KURLDIR];
    NSString *urldir = [urldirDic objectForKey:url];
    
    //创建目录结构:/cache/userinfo/地址md5/用户名
    NSString *homePath = [CWAFileUtil getCachesPath];
    NSString *userinfoPath = [CWAFileUtil addSubPath:WA_LOCALSTORAGE_KUSERINFO toPath:homePath];
    NSString *aUrlPath = [CWAFileUtil addSubPath:urldir toPath:userinfoPath];
    
    NSString * dirOfUserName = [CWAFileUtil addSubPath:username toPath:aUrlPath];
    NSString * dirOfAccountID = nil;
    // 判断是否是u8登陆 如果是u8需要在本地存储用户后面加一级账套文件夹
    CWACommonInfoVO *commonInfoVO = [CWACommonInfoVO sharedManager];
//    if (commonInfoVO.iAccountType ==(WAAccountType)WA_ACCOUNTTYPE_U8)
  // v57的公司处理
    if ([commonInfoVO.iAppVersion isEqualToString:nc57_version])
    {
      NSString *accountID = [CWALocalStorageHandler getLastLoginAccountGroupIDFromUserInfoDic:userInfoDic];
      if (accountID && ![accountID isEqualToString:@""]) 
      {
        dirOfAccountID = [CWAFileUtil addSubPath:accountID toPath:dirOfUserName];
      }
    }
    
    if (dirOfAccountID && ![dirOfAccountID isEqualToString:@""]) 
    {
      dirOfUserBtargetName = [CWAFileUtil addSubPath:aBtarget toPath:dirOfAccountID];
    }
    else 
    {
      dirOfUserBtargetName = [CWAFileUtil addSubPath:aBtarget toPath:dirOfUserName];
    }
    
    [CWAFileUtil createPath:dirOfUserBtargetName];
  }
  return dirOfUserBtargetName;
}

#pragma mark 保存用户标志（如用户id）
+ (void)saveLoginToken:(NSArray *)aLoginToken
{
  if(!aLoginToken)
  {
    
    return;
  }
  //通过plist创建字典
  NSString *pathOfUserInfoPlist = [CWALocalStorageHandler getPathOfUserInfoPlist];
  NSDictionary *userInfoDic = [NSDictionary  dictinaryWithContentsOfDesFile:pathOfUserInfoPlist];
  
  //获取当前登陆人的用户名和url
  NSDictionary *lastloginDic = [userInfoDic objectForKey:WA_LOCALSTORAGE_KLASTLOGIN];
  NSString *username = [lastloginDic objectForKey:WA_LOCALSTORAGE_KLOGINUSER];
  NSString *url = [lastloginDic objectForKey:WA_LOCALSTORAGE_KURL];
  
  //获取当前登陆人信息的具体信息
  NSDictionary *userlistDic = [userInfoDic objectForKey:WA_LOCALSTORAGE_KUSRLIST];
  NSDictionary *urlsDic = [userlistDic objectForKey:url];
  NSDictionary *userNameDic = [urlsDic objectForKey:username];
  
  CWACommonInfoVO *commonInfoVO = [CWACommonInfoVO sharedManager];
    // 如果是u8多帐套 在用户名后增加一层帐套层
//  if (commonInfoVO.iAccountType == (WAAccountType)WA_ACCOUNTTYPE_U8)
  // v57的公司处理
  if ([commonInfoVO.iAppVersion isEqualToString:nc57_version])
  {
    NSString *accountID = [lastloginDic objectForKey:WA_LOCALSTORAGE_GROUPID];
    NSDictionary *infoDictByAccountID = [userNameDic objectForKey:accountID];
    [infoDictByAccountID setValue:aLoginToken forKey:WA_LOCALSTORAGE_KLOGINTOKEN];
  }
  else 
  {
      //设置loginToken
    [userNameDic setValue:aLoginToken forKey:WA_LOCALSTORAGE_KLOGINTOKEN];
  }
  
  
  //保存到plist中
  [userInfoDic writeDesToFile:pathOfUserInfoPlist atomically:YES];
  
}


+ (NSArray *)getLoginTokenFromPlist
{
  NSArray *loginToken = nil;
  //通过plist创建字典
  NSDictionary *userInfoDic = [CWALocalStorageHandler getUserInfoDic];
  loginToken = [CWALocalStorageHandler getLoginTokenFromUserInfoDic:userInfoDic];
  return loginToken;
}

  // 获取最后一次登陆的帐套id
+ (NSString *)getLastLoginAccountGroupIDFromUserInfoDic:(NSDictionary *)userInfoDic
{
  NSString *accountID = nil;
  
  if(userInfoDic)
  {
    NSDictionary *lastloginDic = [userInfoDic objectForKey:WA_LOCALSTORAGE_KLASTLOGIN];
    
    if(lastloginDic)
    {
        accountID = [lastloginDic objectForKey:WA_LOCALSTORAGE_GROUPID];
    }
  }
  return accountID;
}

+ (NSString *)getlastLoginUserNameFromUserInfoDic:(NSDictionary *)userInfoDic
{
  NSString *username = nil;
  
  if(userInfoDic)
  {
    //获取当前登陆人的用户名和url
    NSDictionary *lastloginDic = [userInfoDic objectForKey:WA_LOCALSTORAGE_KLASTLOGIN];
    
    if(lastloginDic)
    {
      username = [lastloginDic objectForKey:WA_LOCALSTORAGE_KLOGINUSER];
    }
  }
  return username;
}

+ (NSString *)getlastLoginUserURLFromUserInfoDic:(NSDictionary *)userInfoDic
{
  NSString *url = nil;
  
  if(userInfoDic)
  {
    NSDictionary *lastloginDic = [userInfoDic objectForKey:WA_LOCALSTORAGE_KLASTLOGIN];
    if(lastloginDic)
    {
      url = [lastloginDic objectForKey:WA_LOCALSTORAGE_KURL];
    }    
  }
  return url;
}

+ (NSString *)getlastLoginUserPasswordFromUserInfoDic:(NSDictionary *)userInfoDic
{
  NSString *password = nil;
  
  if(userInfoDic)
  {
    //获取当前登陆人的用户名和url
    //获取当前登陆人信息的具体信息
    NSString *username = [CWALocalStorageHandler getlastLoginUserNameFromUserInfoDic:userInfoDic];
    NSString *url =  [CWALocalStorageHandler getlastLoginUserURLFromUserInfoDic:userInfoDic];
    NSDictionary *userlistDic = [userInfoDic objectForKey:WA_LOCALSTORAGE_KUSRLIST];
    NSDictionary *urlsDic = [userlistDic objectForKey:url];
    NSDictionary *userNameDic = [urlsDic objectForKey:username];
    //判断是否是u8 如果是u8获取上次登陆的帐套
    CWACommonInfoVO *commonInfoVO = [CWACommonInfoVO sharedManager];
//    if ( commonInfoVO.iAccountType == (WAAccountType)WA_ACCOUNTTYPE_U8 )
  // v57的公司处理
  if ([commonInfoVO.iAppVersion isEqualToString:nc57_version])
    {
      NSString *accountID = [CWALocalStorageHandler getLastLoginAccountGroupIDFromUserInfoDic:userInfoDic];
      if (userNameDic) 
      {
        NSDictionary *loginInfoInAccountDict=[userNameDic objectForKey:accountID];
        password = [loginInfoInAccountDict objectForKey:WA_LOCALSTORAGE_KPASSWORD];
      }
    }
    else 
    {
      password = [userNameDic objectForKey:WA_LOCALSTORAGE_KPASSWORD];
    }
    
  }
  return password;
}

+ (NSArray *)getLoginTokenFromUserInfoDic:(NSDictionary *)userInfoDic
{
  NSArray *loginToken = nil;
  if(userInfoDic)
  {
    //获取当前登陆人的用户名和url
    
    NSString *username = [CWALocalStorageHandler getlastLoginUserNameFromUserInfoDic:userInfoDic];
    NSString *url = [CWALocalStorageHandler getlastLoginUserURLFromUserInfoDic:userInfoDic];
  
    if(url && username)
    {
      
      //获取当前登陆人信息的具体信息
      NSDictionary *userlistDic = [userInfoDic objectForKey:WA_LOCALSTORAGE_KUSRLIST];
      if(userlistDic)
      {
        NSDictionary *urlsDic = [userlistDic objectForKey:url];
        NSDictionary *userNameDic = [urlsDic objectForKey:username];
        CWACommonInfoVO *commonInfoVO = [CWACommonInfoVO sharedManager];
          
        // 如果是u8存储目录增加一级groupid在username后面
//        if (commonInfoVO.iAccountType == (WAAccountType)WA_ACCOUNTTYPE_U8)
      // v57的公司处理
      if ([commonInfoVO.iAppVersion isEqualToString:nc57_version])
        {
          NSString *groupid = [CWALocalStorageHandler getLastLoginAccountGroupIDFromUserInfoDic:userInfoDic];
          if (userNameDic) 
          {
            NSDictionary *userDictByAccountID = [userNameDic objectForKey:groupid];
            if (userDictByAccountID) 
            {
              loginToken = [[NSArray alloc] initWithArray:(NSArray *)[userNameDic
                                                                     objectForKey:WA_LOCALSTORAGE_KLOGINTOKEN]];
            }
          }
        }
        else 
        {
            //获取loginToken
          if(userNameDic)
          {
            loginToken = [[NSArray alloc] initWithArray:(NSArray *)[userNameDic
                                                                     objectForKey:WA_LOCALSTORAGE_KLOGINTOKEN]];
          }
        }
      }
    }
  }
  return loginToken ;
}


+ (NSDictionary *)getUserInfoDic
{ 
  NSString *pathOfUserInfoPlist = [CWALocalStorageHandler getPathOfUserInfoPlist];
  NSDictionary *userInfoDic = [NSDictionary dictinaryWithContentsOfDesFile:pathOfUserInfoPlist];
  return userInfoDic;
}

#pragma mark 组装登录请求数据
+ (CWALoginRequestVO *)constructLoginRequestVo
{
 
  NSDictionary *userInfoDic = [CWALocalStorageHandler getUserInfoDic];
  
  
  NSString *userName = [CWALocalStorageHandler getlastLoginUserNameFromUserInfoDic:userInfoDic];
  NSString *password = [CWALocalStorageHandler getlastLoginUserPasswordFromUserInfoDic:userInfoDic];
  NSArray *LoginToken = [CWALocalStorageHandler getLoginTokenFromUserInfoDic:userInfoDic];
    // 如果是u8多张套 自动登录要加入相关帐套信息到请求参数中
  CWALoginRequestVO *loginRequestVO = nil;
  CWACommonInfoVO *commonInfoVO = [CWACommonInfoVO sharedManager];
    // u8登陆
//  if (commonInfoVO.iAccountType ==(WAAccountType)WA_ACCOUNTTYPE_U8)
  // v57的公司处理
  if ([commonInfoVO.iAppVersion isEqualToString:nc57_version])
  {
    NSString *accountID = [CWALocalStorageHandler getLastLoginAccountGroupIDFromUserInfoDic:userInfoDic];
    loginRequestVO = [CWALocalStorageHandler constructLoginRequestVoWithUserName:userName 
                                                                    WithPassword:password 
                                                                   withAccountID:accountID 
                                                                  WithLoginToken:LoginToken
                      ];
  }
  else 
  {
      // 其他登陆
    loginRequestVO = [CWALocalStorageHandler constructLoginRequestVoWithUserName:userName 
                                                                    WithPassword:password 
                                                                  WithLoginToken:LoginToken
                                                                WithIsForceLogin:NO];
  }
  
  
  
  return loginRequestVO;
}

+ (CWALoginRequestVO *)constructLoginRequestVoWithUserName:(NSString *)aUserName 
                                              WithPassword:(NSString *)aPassword
                                           WithLoginToken:(NSArray *)aLoginToken
                                          WithIsForceLogin:(BOOL)aIsForceLogin
{
  //组装登录数据
  CWADeviceInfoVO *deviceInfoVO = [CWADeviceInfoUtil getDeviceInfo];
  NSMutableDictionary *deviceDict;
  CWACommonInfoVO *commoninfo = [CWACommonInfoVO sharedManager];
  deviceDict = [[NSMutableDictionary alloc] initWithObjectsAndKeys:
                  deviceInfoVO.iMacAddress,@"wfaddress",
                  //                  deviceInfoVO.iIp,@"ip",
                  deviceInfoVO.iImei,@"imei",
                  deviceInfoVO.iPlatform,@"os",
                  deviceInfoVO.iOSversion,@"osversion",
                  deviceInfoVO.iDevicetype,@"devicetype",
                  deviceInfoVO.iScreensi,@"screensi",
                  deviceInfoVO.iResolution,@"resolution",
                  deviceInfoVO.iLanage,@"devlanguage",
                  nil];
  
  [deviceDict setValue:[CWAPushUtil getDeviceTokenFromNSUserDefaults] forKey:@"devicetoken"];
  [deviceDict setValue:commoninfo.iAppVersion forKey:@"appversion"];

  NSMutableDictionary *login = [[NSMutableDictionary alloc] initWithObjectsAndKeys:
                         aUserName,@"usrcode", 
                         aPassword,@"password",
                         [CWATimeUtil getTodayDateString],@"date",
                         deviceDict,@"deviceinfo",
                         aLoginToken,@"servicelogininfo",
                         nil];
  if(aIsForceLogin)
  {
    [login setObject:@"Y" forKey:@"forcelogin"];
  }
  else
  {
    [login setObject:@"N" forKey:@"forcelogin"];
  }
  CWALoginRequestVO *loginRequestVO = [[CWALoginRequestVO alloc] initWithDictionary:login];
  return loginRequestVO;
}

  // 根据登陆vo组装登陆请求信息
+ (CWALoginRequestVO *)constructLoginRequestVoWithLoginVO:(CWALoginVO *) aLoginVO
                                           WithLoginToken:(NSArray *)aLoginToken
{
    //组装登录数据
  CWADeviceInfoVO *deviceInfoVO = [CWADeviceInfoUtil getDeviceInfo];
  NSMutableDictionary *deviceDict;
  CWACommonInfoVO *commoninfo = [CWACommonInfoVO sharedManager];
  deviceDict = [[NSMutableDictionary alloc] initWithObjectsAndKeys:
                deviceInfoVO.iMacAddress,@"wfaddress",
                //                  deviceInfoVO.iIp,@"ip",
                deviceInfoVO.iImei,@"imei",
                deviceInfoVO.iPlatform,@"os",
                deviceInfoVO.iOSversion,@"osversion",
                deviceInfoVO.iDevicetype,@"devicetype",
                deviceInfoVO.iScreensi,@"screensi",
                deviceInfoVO.iResolution,@"resolution",
                deviceInfoVO.iLanage,@"devlanguage",
                nil];
  
  [deviceDict setValue:[CWAPushUtil getDeviceTokenFromNSUserDefaults] forKey:@"devicetoken"];
  [deviceDict setValue:commoninfo.iAppVersion forKey:@"appversion"];
  
  NSMutableDictionary *login = [[NSMutableDictionary alloc] initWithObjectsAndKeys:
                         aLoginVO.iUserName,@"usrcode", 
                         (aLoginVO.iPassword ? aLoginVO.iPassword :@""),@"password",
                         // u8默认测试用帐套groupid
                         (aLoginVO.iLoginAccountVO.iGroupid ? aLoginVO.iLoginAccountVO.iGroupid :@""),@"groupid",
                         [CWATimeUtil getTodayDateString],@"date",
                         deviceDict,@"deviceinfo",
                         aLoginToken,@"servicelogininfo",
                         nil];
  
  if(aLoginVO.isForceLogin)
  {
    [login setObject:@"Y" forKey:@"forcelogin"];
  }
  else
  {
    [login setObject:@"N" forKey:@"forcelogin"];
  }
  
  CWALoginRequestVO *loginRequestVO = [[CWALoginRequestVO alloc] initWithDictionary:login];
  return loginRequestVO;
}
  // 组装带有帐套信息的自动登陆请求vo
+ (CWALoginRequestVO *)constructLoginRequestVoWithUserName:(NSString *)aUserName 
                                              WithPassword:(NSString *)aPassword
                                             withAccountID:(NSString *)aAccountID
                                            WithLoginToken:(NSArray *)aLoginToken
{
    //组装登录数据
  CWADeviceInfoVO *deviceInfoVO = [CWADeviceInfoUtil getDeviceInfo];
  NSMutableDictionary *deviceDict;
  CWACommonInfoVO *commoninfo = [CWACommonInfoVO sharedManager];
  deviceDict = [[NSMutableDictionary alloc] initWithObjectsAndKeys:
                deviceInfoVO.iMacAddress,@"wfaddress",
                //                  deviceInfoVO.iIp,@"ip",
                deviceInfoVO.iImei,@"imei",
                deviceInfoVO.iPlatform,@"os",
                deviceInfoVO.iOSversion,@"osversion",
                deviceInfoVO.iDevicetype,@"devicetype",
                deviceInfoVO.iScreensi,@"screensi",
                deviceInfoVO.iResolution,@"resolution",
                deviceInfoVO.iLanage,@"devlanguage",
                nil];
  
  [deviceDict setValue:[CWAPushUtil getDeviceTokenFromNSUserDefaults] forKey:@"devicetoken"];
  [deviceDict setValue:commoninfo.iAppVersion forKey:@"appversion"];
  NSString *empty =@"";
  NSDictionary *login = [[NSDictionary alloc] initWithObjectsAndKeys:
                         aUserName,@"usrcode", 
                         (aPassword ?aPassword:empty),@"password",
                         // u8默认测试用帐套groupid
                         (aAccountID ? aAccountID :empty),@"groupid",
                         [CWATimeUtil getTodayDateString],@"date",
                         deviceDict,@"deviceinfo",
                         aLoginToken,@"servicelogininfo",
                         nil];
  CWALoginRequestVO *loginRequestVO = [[CWALoginRequestVO alloc] initWithDictionary:login] ;
  return loginRequestVO;
}

#pragma mark 组装登录请求数据
+ (CWABnsDesVO *)constructLoginRequestBnsDic
{
  CWABnsDesVO *loginBiz = [[CWABnsDesVO alloc] initWithComponetID:@"WA00001" actionTypes:[NSMutableArray arrayWithObject:@"login"]];
  return loginBiz;
}


+(NSDictionary *)constructLoginRequestDic
{
  CWABnsDesVO *loginBiz =  [CWALocalStorageHandler constructLoginRequestBnsDic];
  CWALoginRequestVO *loginRequestVO = [CWALocalStorageHandler constructLoginRequestVo];
  NSDictionary *loginRequestDic = [[NSDictionary alloc] initWithObjectsAndKeys:loginBiz,WA_LOCALSTORAGE_KBNSVO,
                                   loginRequestVO,WA_LOCALSTORAGE_KBASEVO,nil ];
  return loginRequestDic;
}

#pragma mark 保存和获取url信息
+ (void)saveURL:(NSString *)aURL
{
  if (aURL)
  {
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSString *addHttpURL = [NSString stringWithFormat:@"http://%@", aURL];
    [userDefaults setObject:addHttpURL forKey:@"ConnectUrl"];
    [userDefaults synchronize];
    
    NSDictionary *userInfoDic = [CWALocalStorageHandler getUserInfoDic];
    if(!userInfoDic)
    {
      userInfoDic = [[NSMutableDictionary alloc] init];
    }
    NSDictionary *lastloginDic = [userInfoDic objectForKey:@"kLastlogin"];
    if(!lastloginDic)
    {
      lastloginDic = [[NSMutableDictionary alloc] init];
    }
    [lastloginDic setValue:aURL forKey:WA_LOCALSTORAGE_KURL];
    [userInfoDic setValue:lastloginDic forKey:WA_LOCALSTORAGE_KLASTLOGIN];
    [userInfoDic writeDesToFile: [CWALocalStorageHandler getPathOfUserInfoPlist] atomically:YES];
  }
}

+ (NSString *)getURL
{
  NSDictionary *userInfoDic = [CWALocalStorageHandler getUserInfoDic];
  NSMutableDictionary *lastloginDic = [userInfoDic objectForKey:WA_LOCALSTORAGE_KLASTLOGIN]; 
  NSString *url = [lastloginDic objectForKey:WA_LOCALSTORAGE_KURL];
  return url;
}

+ (void)ModifyLastLoginPwd:(NSString *)Pwd
{
	 NSDictionary *userinfoDic = [CWALocalStorageHandler getUserInfoDic];
	 NSString *url = [CWALocalStorageHandler getlastLoginUserURLFromUserInfoDic:userinfoDic];
	 NSString *userName = [CWALocalStorageHandler getlastLoginUserNameFromUserInfoDic:userinfoDic];
	 NSMutableDictionary *userlistDic = [userinfoDic objectForKey:WA_LOCALSTORAGE_KUSRLIST];
	 NSMutableDictionary *userListOfTheURL = [userlistDic objectForKey:url];
	 NSMutableDictionary *userDictionary = nil;
	 CWACommonInfoVO *commonInfoVO = [CWACommonInfoVO sharedManager];
	 if ([commonInfoVO.iAppVersion isEqualToString:nc57_version])
	 {
	
	   NSString *accountID = [CWALocalStorageHandler getLastLoginAccountGroupIDFromUserInfoDic:userinfoDic];
    // 帐套存在
     if (accountID && accountID && ![accountID isEqualToString:@""])
		 {
      
       NSMutableDictionary *infoDictByUserName = [userListOfTheURL objectForKey:userName];
    
			 userDictionary = [infoDictByUserName valueForKey:accountID];
			
		 }
  	}
   else
	 {
		 userDictionary = [userListOfTheURL valueForKey:userName];
	 }
	 [userDictionary setValue:Pwd forKey:@"password"];
	 [userinfoDic writeDesToFile:[CWALocalStorageHandler getPathOfUserInfoPlist] atomically:YES];
}

#pragma mark 保存登陆信息并创建用户目录
+ (void)saveUserInfoAndMkDirWithLoginSaveVO:(CWALoginVO *)aLoginSaveVO
{
  NSDictionary *userinfoDic = [CWALocalStorageHandler getUserInfoDic];
    // 帐套id 即groupid
  NSString *accountID = nil;
  //保存urldir映射
  NSDictionary *urlDir = [userinfoDic objectForKey:WA_LOCALSTORAGE_KURLDIR];
  if(!urlDir)
  {
    urlDir = [[NSMutableDictionary alloc] init];
    [userinfoDic setValue:urlDir forKey:WA_LOCALSTORAGE_KURLDIR];
  }
  NSString *url = [CWALocalStorageHandler getlastLoginUserURLFromUserInfoDic:userinfoDic];
  
  if (!url)
  {
    
    return;
  }
  
  //创建用户目录
  NSString *urlDirofMD5 = nil;
  NSString *userdir = [CWALocalStorageHandler  createDirWithUserName:aLoginSaveVO.iUserName 
                                                             withUrl:url 
                                                          WithMD5URL:&urlDirofMD5];
    
    // 如果是u8多账套 需要按照不同的账套来区分存储目录 即在存储目录上增加一级账套目录
  CWACommonInfoVO *commonInfoVO = [CWACommonInfoVO sharedManager];
//  if (commonInfoVO.iAccountType  == (WAAccountType)WA_ACCOUNTTYPE_U8)
  // v57的公司处理
  if ([commonInfoVO.iAppVersion isEqualToString:nc57_version])
  {
    accountID = [CWALocalStorageHandler getLastLoginAccountGroupIDFromUserInfoDic:userinfoDic];
    // 账套存在
    if (accountID && accountID && ![accountID isEqualToString:@""])
    {
      // 在存储目录上增加一级账套目录
      userdir = [CWAFileUtil addSubPath:accountID toPath:userdir];
    }
  }
  
  
  [urlDir setValue:urlDirofMD5 forKey:url];
  
  
  //自动登陆保存用户名、密码以及是否自动登陆
  NSMutableDictionary *userlistDic = [userinfoDic objectForKey:WA_LOCALSTORAGE_KUSRLIST];

  
  if(!userlistDic)
  {
    userlistDic = [[NSMutableDictionary alloc] init];
    [userinfoDic setValue:userlistDic forKey:WA_LOCALSTORAGE_KUSRLIST];
  }
  
  NSMutableDictionary *userListOfTheURL = [userlistDic objectForKey:url];
  if(!userListOfTheURL)
  {
    userListOfTheURL = [[NSMutableDictionary alloc] init];
    [userlistDic setValue:userListOfTheURL forKey:url];
  }
  
  
  
  NSMutableDictionary *userDictionary = [[NSMutableDictionary alloc] init];
  NSString *strAutoLogin = aLoginSaveVO.isAutoLogin ? @"YES":@"NO";
  [userDictionary setValue:strAutoLogin forKey:@"isautologin"];
  [userDictionary setValue:aLoginSaveVO.iUserName forKey:@"userName"];
    // 如果是u8多帐套 在 用户名下 要增加帐套一级
//  if (commonInfoVO.iAccountType == (WAAccountType)WA_ACCOUNTTYPE_U8)
// v57的公司处理
  if ([commonInfoVO.iAppVersion isEqualToString:nc57_version])
  {
    // 帐套存在
    if (accountID && accountID && ![accountID isEqualToString:@""])
    {
      
      NSMutableDictionary *infoDictByUserName = [userListOfTheURL objectForKey:aLoginSaveVO.iUserName];
      if (!infoDictByUserName) 
      {
        infoDictByUserName = [[NSMutableDictionary alloc] init];
        [infoDictByUserName setValue:userDictionary forKey:accountID];
        [userListOfTheURL setValue:infoDictByUserName forKey:aLoginSaveVO.iUserName];
      }
      else 
      {
        [infoDictByUserName setValue:userDictionary forKey:accountID];
        [userListOfTheURL setValue:infoDictByUserName forKey:aLoginSaveVO.iUserName];
      }
    }
  }
  else 
  {
      [userListOfTheURL setValue:userDictionary forKey:aLoginSaveVO.iUserName];
  }
  
  
  //不管是否自动登陆，都保存密码，当session过期的时候，提供给http
  [userDictionary setValue:aLoginSaveVO.iPassword forKey:@"password"];
  
#warning modify by zm （此处不加也不影响流程）
//  if (commonInfoVO.iAccountType == (WAAccountType)WA_ACCOUNTTYPE_U8)
  // v57的公司处理
  if ([commonInfoVO.iAppVersion isEqualToString:nc57_version])
  {
      // 登陆成功后保存本次登陆用户可以选择的全部帐套信息 (如果本次登陆用户没有发起重新获取帐套列表的请求，则不更新这部分内容)
      NSMutableArray *accountArray = [[NSMutableArray alloc]init];
      if (aLoginSaveVO.iLoginAccountVO && aLoginSaveVO.iAccountVOs && [aLoginSaveVO.iAccountVOs count]>0) 
      {
        [aLoginSaveVO.iAccountVOs enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
          NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
          CWALoginAccountVO *account = (CWALoginAccountVO* )obj;
          [dic setValue:account.iGroupid forKey:LOGIN_ACCOUNTS_GROUPID];
          [dic setValue:account.iGroupCode forKey:LOGIN_ACCOUNTS_GROUPCODE];
          [dic setValue:account.iGroupName forKey:LOGIN_ACCOUNTS_GROUPNAME];
          [accountArray addObject:dic];
        }];
      }
      // key为accounts
      [userDictionary setValue:accountArray forKey:WA_LOCALSTORAGE_ACCOUNTS];
  }
  [userinfoDic writeDesToFile:[CWALocalStorageHandler getPathOfUserInfoPlist] atomically:YES];
  
}

#pragma mark 保存最后登陆信息
+ (void)saveLastLoginUserWithLoginSaveVO:(CWALoginVO *)loginSaveVO
{
  NSDictionary *userinfoDic = [CWALocalStorageHandler getUserInfoDic];
  //最近登陆保存
  
  NSMutableDictionary *lastloginDic = [userinfoDic objectForKey:WA_LOCALSTORAGE_KLASTLOGIN];
  if(!lastloginDic)
  {
    lastloginDic = [[NSMutableDictionary alloc] init];
  }
  [lastloginDic setValue:loginSaveVO.iUserName forKey:@"username"];
  
#warning modify by zm 判断是否为u8尚未添加 （此处不加也不影响流程）
  // 本地存储纪录最近一次登陆选中的帐套信息 
  if (loginSaveVO.iLoginAccountVO) 
  {
    [lastloginDic setValue:loginSaveVO.iLoginAccountVO.iGroupName forKey:LOGIN_ACCOUNTS_GROUPNAME];
    [lastloginDic setValue:loginSaveVO.iLoginAccountVO.iGroupid forKey:LOGIN_ACCOUNTS_GROUPID];
    [lastloginDic setValue:loginSaveVO.iLoginAccountVO.iGroupCode forKey:LOGIN_ACCOUNTS_GROUPCODE];
  }
  
  [userinfoDic writeDesToFile:[CWALocalStorageHandler getPathOfUserInfoPlist] atomically:YES];
}

#pragma mark 保存完整的登陆信息
+ (void)saveLoginSaveVO:(CWALoginVO *)loginSaveVO
{
  [CWALocalStorageHandler saveLastLoginUserWithLoginSaveVO:loginSaveVO];
  [CWALocalStorageHandler saveUserInfoAndMkDirWithLoginSaveVO:loginSaveVO];
}

@end


#import "DESEncryption.h"
// DES 加密的key


@implementation NSDictionary (WADesDictionary)
static NSString *desKey=@"12345678;";
- (BOOL)writeDesToFile:(NSString *)path atomically:(BOOL)useAuxiliaryFile
{
	NSString *error;
	NSData *plistData = [NSPropertyListSerialization dataFromPropertyList:self
											 
																																 format:NSPropertyListXMLFormat_v1_0
											 
																											 errorDescription:&error];
	
	
	NSData *desData=[DESEncryption TripleDESWithData:plistData encryptOrDecrypt:(CCAlgorithm)kCCEncrypt key:desKey];
	if(desData)
    {
    
    return [desData writeToFile:path atomically:YES];
    }
	
	else
    {
    
    
    
		return NO;
    
    }
};


+ (id)dictinaryWithContentsOfDesFile:(NSString *)path
{
	NSPropertyListFormat format;
  NSString *error;
	NSData *desPlistXML = [[NSFileManager defaultManager] contentsAtPath:path];
	NSData *data=[DESEncryption TripleDESWithData:desPlistXML
															 encryptOrDecrypt:(CCAlgorithm)kCCDecrypt
																						key:desKey];
	
	NSMutableDictionary *Dic = (NSMutableDictionary *)[NSPropertyListSerialization propertyListFromData:data
																																											mutabilityOption:NSPropertyListMutableContainersAndLeaves
																																																format:&format
																																											errorDescription:&error];
	return Dic;
} 

@end

