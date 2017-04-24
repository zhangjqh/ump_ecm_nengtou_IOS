/*!
 @class
 @abstract  app 入口类
 */

#import "WABaseAppDelegate.h"
#import "WADeviceInfoUtil.h"
#import "WAPushUtil.h"
#import "WACommonInfoVO.h"
#import "WATimeUtil.h"
#import "WABnsDesVO.h"
#import "WASpinnerView.h"
#import "WAUFTool.h"
#ifdef APP_UPDATE
  #import "WAAppUpateHandler.h"
#endif
#ifdef APP_SHARECWEICHAIID
 #import "WAWeiChatShareUtil.h"
#endif
#import "WALocalStorageHandler.h"
#import "WATaskListNC63ViewController.h"
#import "AppDelegate.h"
//集成跳转scheme的开头
static NSString *WA_BASE_OPENURL_YYIOSUS = @"yyiOSUS";

@interface CWABaseAppDelegate()
//URL Scheme的开关
@property (nonatomic,assign) BOOL isAppHookedFromURLScheme;
//App打开方式的开关（是后台切换回来，还是由关闭状态打开等。）
@property (nonatomic,assign) TWAStartType iAppStartType;

/*!
 @method
 @abstract	预登陆服务结束，根据预登陆结果重新组织登陆页面
 分别加在v57 v61 v63的登陆
 @discussion
 */
- (void)preLoginServiceFinished;
@end

@implementation CWABaseAppDelegate

@synthesize iWindow;
@synthesize iNavigationController;
@synthesize iPushFinishBlock;

@synthesize iIsShowDetail;
@synthesize iPreKeyWin;

@synthesize isAppHookedFromURLScheme;
@synthesize iAppStartType;

static BOOL isShowError = NO;//是否已显示错误信息
//static TWALoginType loginType = -1;//登陆类型

#pragma mark 实现BeforeLoginNotification委托，处理登录前请求数据处理
- (CWABaseVO *)provideRequestVOWithLoginVO:(CWALoginVO *)aLoginVO
{
  return nil;
}

- (CWABnsDesVO *)provideBnsVO
{
  return nil;
}


#pragma mark 实现MWALoginedNotification委托。

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
#ifdef APP_UPDATE
  // 版本更新alert的处理
  if ([alertView.title isEqualToString:NSLocalizedStringFromTable(@"alert_title", @"btarget_appupdate",nil)])
  {
    if(buttonIndex == 1)
    {
      [CWAAppUpateHandler redirectToAppUpdateUrl];
    }
  }else
  {
    if(buttonIndex == 1)
    {
      //[iLoginViewController.iLoginController foreceLogin];
    }
  }
  
#else
  if(buttonIndex == 1)
  {

  }
#endif
  
}
- (BOOL)isProLoginBoundFrame
{
  return YES;
}

- (void)preLoginConnectFailed
{
  //初始化登录界面
  [self initLoginViewController];
}

- (void)initLoginViewController
{
  //  if(!iLoginViewController)
  //  {
  //  }
}

- (BOOL)isNeedSettingURL
{
  return YES;
}

- (BOOL)isNeedPushFunc
{
  return NO;
}

- (BOOL)isNeedPushToView
{
  return NO;
}

- (BOOL)isLogin
{
  if([[CWAHTTPRequestHandler sharedManager] iSession_id])
  {
    return YES;
  }
  else
  {
    return NO;
  }
}

#pragma mark- URL Scheme相关
- (BOOL) application:(UIApplication *)application
             openURL:(NSURL *)url
   sourceApplication:(NSString *)sourceApplication
          annotation:(id)annotation
{
  BOOL rtn = NO;
  
  //判断当前URL的类型是什么类型的（weixin、yongyou...）
  TWAOpenUrlType aUrlType = [self getUrlType:url sourceApp:sourceApplication];
  
  switch (aUrlType)
  {
    case EYonyouUrl:
      //yonyou类型的，执行预登录等处理，重新自动登录。
      rtn = [self dealYonyouOpenUrl:url];
      break;

#ifdef APP_SHARECWEICHAIID
    case EWeixinUrl:
      //weixin类型的处理，执行微信处理，切换回App。
      rtn = [[CWAWeiChatShareUtil sharedWeiChatUtil]handleOpenURL:url];
      break;
#endif
      
    default:
      //EohersUrl类型的，return no.
      rtn = NO;
      break;
  }
  
  return rtn;
}

- (BOOL)          application:(UIApplication *)application
didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  
  //设置App打开状态是从didFinishLaunchingWithOptions打开的。
  self.iAppStartType = EStartWithLaunch;
  
  if ([self isNeedPushFunc] && [self isNeedPushToView])
  {
    //初始化push的一些相关条件。
    [self setPushConditions];
  }
#ifdef APP_UPDATE
  //[self appUpdateService];
#endif
  CGRect ios7Window = [[UIScreen mainScreen] bounds];
  //ios7Window.origin.y = 20;
  self.iWindow = [[UIWindow alloc] initWithFrame:ios7Window];

  //[application setStatusBarHidden:YES withAnimation:UIStatusBarAnimationFade];
    
  //处理消息
  //将界面图标上的数字设置为0
  [UIApplication sharedApplication].applicationIconBadgeNumber = 0 ;
  
  //注册接受信息监听，通过消息打开的界面会发送这个消息
  
  
  if([self isNeedPushFunc])
  {
    NSDictionary *remoteNotificationDic = [launchOptions objectForKey:UIApplicationLaunchOptionsRemoteNotificationKey];
    
    
    if(remoteNotificationDic)
    {
      [[NSNotificationCenter defaultCenter] postNotificationName:WA_BASE_RECEIVEREMOVENOTIFICATION
                                                          object:remoteNotificationDic];
      
      //将push收到的信息暂时保存在userdefault里面。
      if ([self isNeedPushToView])
      {
        [[NSUserDefaults standardUserDefaults]setObject:remoteNotificationDic
                                                 forKey:WA_PUSHKEY_USERDEFAULT];
      }
    }
    //注册push,数字图标，消息，声音
    [CWAPushUtil registerWithIsBadge:YES
                         WithIsAlert:YES
                         WithIsSound:YES];
  }
  
  NSObject *localNotificationDic = [launchOptions objectForKey:UIApplicationLaunchOptionsLocalNotificationKey];
  if(localNotificationDic)
  {
    [[NSNotificationCenter defaultCenter] postNotificationName:WA_BASE_RECEIVELOCALNOTIFICATION
                                                        object:localNotificationDic];
  }
  
#ifdef APP_SHARECWEICHAIID
  [[CWAWeiChatShareUtil sharedWeiChatUtil] logtoWeichatWithAppID:APP_SHARECWEICHAIID];
#endif
  //添加风车转动界面
  //[self showPreLoginView];
 
  [self.iWindow makeKeyAndVisible];
  return YES;
  
}

# pragma mark - 处理launch option
- (BOOL)isNeedSupportURLScheme
{
  return NO;
}

# pragma mark - App启动方式
- (TWAStartType)appStartType
{
  return self.iAppStartType;
}

#pragma mark - 处理yonyou open url
- (BOOL)dealURLScheme:(NSURL *)launchURL
{
  BOOL rtnbool = YES;
  NSString *user = launchURL.user;
  NSString *pwd = launchURL.password;
  NSString *host = launchURL.host;
  NSString *port = (NSString *)launchURL.port;
  
  @try {
    CWALoginVO *loginvo = [[CWALoginVO alloc]init];
    loginvo.iUserName= user;
    loginvo.iPassword = pwd;
    [CWALocalStorageHandler saveURL:[NSString stringWithFormat:@"%@%@%@",host,@":",port]];
    [CWALocalStorageHandler saveLastLoginUserWithLoginSaveVO:loginvo];
    [CWALocalStorageHandler saveUserInfoAndMkDirWithLoginSaveVO:loginvo];
  }
  @catch (NSException *exception) {
    rtnbool = NO;
  }
  @finally {
    
  }
  return rtnbool;
}

//收到的openurl的url是yonyou的，执行该方法
- (BOOL)dealYonyouOpenUrl:(NSURL *)url
{
  BOOL rtn = NO;
  // 外部url scheme 跳转
  if ([self isNeedSupportURLScheme] )
  {
    self.isAppHookedFromURLScheme = YES;
    rtn = [self dealURLScheme:url];
    
    //当App已经打开了的话，通过URL Scheme切换进入App
    //（即不是从关闭状态通过URL Scheme打开App）会进入此，重新预登录，登录。
    if (self.iAppStartType != EStartWithLaunch)
    {
      //重置iLoginType，该值在didFinishLaunchingWithOptions中第一次被赋值为－1，
      //故该处重新赋值为－1，以便后面重走预登录、登录相应逻辑，例如- (BOOL)preLoginFinished中的逻辑等。
      //添加风车转动界面
      //[self showPreLoginView];
    }
  }
  return rtn;
}

//判断收到的openurl的url的类型。
- (TWAOpenUrlType)getUrlType:(NSURL *)aURl sourceApp:(NSString *)aSourceApp
{
  TWAOpenUrlType atype = EOthersUrl;

  NSString *aUrlStr = [aURl absoluteString];
  
  if ([aUrlStr hasPrefix:WA_BASE_OPENURL_YYIOSUS])
  {
    atype = EYonyouUrl;
  }
  
#ifdef APP_SHARECWEICHAIID
  //判断URL语法是否符合微信URL
  else if ([aUrlStr hasPrefix:APP_SHARECWEICHAIID])
  {
    atype = EWeixinUrl;
  }
#endif

  return atype;
}

#pragma mark - 处理push的流程, 实现push进入详情
- (void)setPushConditions
{
  //初始化一些变量，清空userdefault, 添加push监听
  self.iPreKeyWin = nil;
  [[NSUserDefaults standardUserDefaults] removeObjectForKey:WA_PUSHKEY_USERDEFAULT];
  [[NSNotificationCenter defaultCenter] addObserver:self
                                           selector:@selector(showPushView)
                                               name:WA_PUSHKEY_PRESENTVIEW
                                             object:nil];
}


-(void)showPushView
{
  [self hidePushView];
}

-(void)presentModulenextViewWithData:(NSDictionary *)aData
{
  //获取相关数据对应的详情页面，成功获得非空页面，就模态推出页面
  UIViewController *aPushView = [self getPushViewWithData:aData];

  if (aPushView && self.iPreKeyWin == nil)
  {
    if(!self.iWindow.rootViewController)
    {
      [iNavigationController presentViewController:aPushView
                                          animated:YES
                                        completion:
       ^{
         self.iPreKeyWin = iNavigationController;
         
         double version = [[UIDevice currentDevice].systemVersion doubleValue];//判定系统版本。
         if(version < 6.0f)
         {
           self.iWindow.rootViewController = aPushView;
         }
         
         [[NSNotificationCenter defaultCenter] addObserver:self
                                                  selector:@selector(hidePushView)
                                                      name:WA_PUSHKEY_DISMISSVIEW
                                                    object:nil];
         
       }];
      
    }
    else
    {
      [self.iWindow.rootViewController presentViewController:aPushView
                                                    animated:YES
                                                  completion:
       ^{
         self.iPreKeyWin = self.iWindow.rootViewController;
         
         double version = [[UIDevice currentDevice].systemVersion doubleValue];//判定系统版本。
         if(version < 6.0f)
         {
           self.iWindow.rootViewController = aPushView;
         }
         
         [[NSNotificationCenter defaultCenter] addObserver:self
                                                  selector:@selector(hidePushView)
                                                      name:WA_PUSHKEY_DISMISSVIEW
                                                    object:nil];
         
       }];
    }
  }
}

-(UIViewController *)getPushViewWithData:(NSDictionary *)aDataDic
{
  //根据数据生成页面
  return nil;
}

-(void)hidePushView
{
  //隐藏模态推出的页面
  if ([self isNeedPushToView])
  {
    if (self.iPreKeyWin)
    {
      [self.iPreKeyWin dismissViewControllerAnimated:YES
                                          completion:
       ^{
         if (self.iPreKeyWin)
         {
           self.iWindow.rootViewController = self.iPreKeyWin;
           self.iPreKeyWin = nil;
         }
         [self.iWindow makeKeyAndVisible];
         [[NSNotificationCenter defaultCenter] removeObserver:self
                                                         name:WA_PUSHKEY_DISMISSVIEW
                                                       object:nil];
         
         if (iPushFinishBlock)
         {
           iPushFinishBlock(YES);
           iPushFinishBlock = nil;
         }
       }];
    }
    else
    {
      if (iPushFinishBlock)
      {
        iPushFinishBlock(NO);
        iPushFinishBlock = nil;
      }
    }
  }
}

# pragma mark - 处理app应用内更新的服务
// 处理应用更新
- (void)appUpdateService
{
#ifdef APP_UPDATE
  CWAAppUpateHandler *appUpdateHandler = [[CWAAppUpateHandler alloc]init];
  [appUpdateHandler requestAppUpateWithCompleteBlock:^(CWAAPPUpdateVersionInfoVO *versionVO, NSError *error) {
    if (versionVO && versionVO.isSuccess)
    {
      
      // 获取版本比对结果 
      BOOL result = [CWAAppUpateHandler isNeedUpdateToVersionVO:versionVO];
      if (result)
      {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:NSLocalizedStringFromTable(@"alert_title", @"btarget_appupdate",nil) message:NSLocalizedStringFromTable(@"alert_content", @"btarget_appupdate",nil) delegate:self cancelButtonTitle:NSLocalizedStringFromTable(@"alert_cancel", @"btarget_appupdate",nil) otherButtonTitles:NSLocalizedStringFromTable(@"alert_ok", @"btarget_appupdate",nil), nil];
        [alert show];
      }
    }
  }];
#endif
}

#pragma mark - 系统delegate, 和app状态有关
-(void)applicationWillEnterForeground:(UIApplication *)application
{
  //程序将要回到前台
  if ([self isNeedPushFunc] && [self isNeedPushToView])
  {
    //程序由挂起状态回到前台运行状态最先执行的函数
    iIsShowDetail = YES;
  }
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
  //程序将要切换到后台
  
  self.iAppStartType = EStartWithBackground;
  
  if ([self isNeedPushFunc] && [self isNeedPushToView])
  {
    iIsShowDetail = YES;
  }
}
- (void)applicationWillResignActive:(UIApplication *)application
{
  [[NSUserDefaults standardUserDefaults] removeObjectForKey:WA_PUSHKEY_USERDEFAULT];
  //程序将要切换到非激活状态
  if ([self isNeedPushFunc] && [self isNeedPushToView])
  {
    iIsShowDetail = YES;
  }
}

//两个状态都会执行这个流程
- (void)applicationDidBecomeActive:(UIApplication *)application
{
  //程序已经切换到激活状态
  if ([self isNeedPushFunc] && [self isNeedPushToView])
  {
    //程序开启的时候和挂起回到激活状态的时候最后执行的函数
    iIsShowDetail = NO;
  }
}

- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo
{
  //NSLog(@"\n当有远程push的消息的时候执行的函数，包括：1.正在运行状态收到远程push的消息。2.挂起状态点击notification进入。\n");
  //当收到push消息之后，判断是否开启push功能
  if ([self isNeedPushFunc] && [self isNeedPushToView])
  {
   
    //判断是否显示push详情
    if (iIsShowDetail)
    {
      //将push信息保存起来
      [[NSUserDefaults standardUserDefaults] setObject:userInfo
                                                forKey:WA_PUSHKEY_USERDEFAULT];
      //判断是否已经登陆了，如果登陆了就立刻显示，如果没有登陆，就在登陆后某已时刻，由代理自己调用。
      if([self isLogin])
      {
        [self showPushView];
      }
    }
  }
}

#pragma mark 实现MWAHTTPNotify委托方法
- (void)requestSessionTimeOut:(NSError*)theError
{
  NSString *error = theError.domain;
  NSString *ok = NSLocalizedStringFromTable(@"ok", @"btarget_login", nil);
  UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:nil
                                                      message:error
                                                     delegate:nil
                                            cancelButtonTitle:ok
                                            otherButtonTitles:nil];
  [alertView show];
  [[CWASpinnerView sharedCWASpinnerView] hiddenSpinnerView];
}

// 注册设备成功的方法
- (void)application:(UIApplication *)application
didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken
{
  
  
  //将deviceToken放到NSUserDefaults，并保存
	[CWAPushUtil putDeviceTokenToNSUserDefaults:deviceToken];
}

// 注册设备失败的方法
- (void)application:(UIApplication *)application
didFailToRegisterForRemoteNotificationsWithError:(NSError *)error
{
  
}

#pragma mark 实现ToolbarNotification委托
#pragma mark 实现ToolbarNotification委托，注销按钮点击事件处理
- (void)afterLoginOutBtnClick:(id)sender
{
}

#pragma mark 移动老的视图，添加新的视图
- (void) moveOldViewAndaddTopView:(UIViewController *)aTopViewController
{
  //移出所有子视图
  if ([self.iWindow.subviews containsObject:aTopViewController.view])
  {
    return;
  }
  
  if(WA_CURENT_OS_V >= 7.0)
  {
    aTopViewController.view.frame = [[UIScreen mainScreen] bounds];
  }
  else
  {
    aTopViewController.view.frame = [[UIScreen mainScreen] applicationFrame];
  }
  
  [self.iWindow.subviews  makeObjectsPerformSelector:@selector(removeFromSuperview)];
  [self.iWindow addSubview: aTopViewController.view];
}

#pragma mark 实现ToolbarNotification委托，修改链接按钮点击事件处理
- (void)afterModiferConnectBtnClick:(id)sender
{
}

- (UIViewController *)getNextViewCtrlWithBaseVO:(CWABaseVO *)aBaseVO
{
  return nil;
}


- (UIViewController *)getNextViewCtrlWithBaseVOArray:(NSArray *)aBaseVOArray
{
  return nil;
}

#pragma mark 实现MWALoginedNotification委托，处理登录成功后数据。
- (void)LoginCompleteSuccessWithBaseVO:(CWABaseVO *)aBaseVO WithSender:(id)sender
{

  
  if (iNavigationController)
  {
    self.iNavigationController  = nil;
  }
  
  UIViewController *iNextViewController = [self getNextViewCtrlWithBaseVO:aBaseVO];
  if(iNextViewController)
  {
    iNavigationController = [[UINavigationController alloc] initWithRootViewController:iNextViewController];
    iNavigationController.navigationBar.hidden = YES;
    [self.iWindow addSubview:iNavigationController.view];

  }
  else
  {
      }
}


- (void)LoginCompleteSuccessWithBaseVOArray:(NSArray *)aBaseVOArray
                                 WithSender:(id)sender
{
  
  if (iNavigationController)
  {
    self.iNavigationController  = nil;
  }
  
  UIViewController *iNextViewController = [self getNextViewCtrlWithBaseVOArray:aBaseVOArray];
  if(iNextViewController)
  {
    iNavigationController = [[UINavigationController alloc] initWithRootViewController:iNextViewController];
    
    [self.iWindow addSubview:iNavigationController.view];
    [iNavigationController setNavigationBarHidden:YES];
  }
  else
  {
   
  }
}

@end
