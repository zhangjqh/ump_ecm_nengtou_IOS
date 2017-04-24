//
//  AppDelegate.h
//
//
//  Created by zhangyuv.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import "AppDelegate.h"
#import "CustomUI_ecm_flashController.h"
#import "MaHomeView.h"
#import "UPushService.h"
#import "TaskPushHandler.h"
#import "IUIAlertView.h"
@implementation AppDelegate
@synthesize window = _window;
@synthesize currentContainer = _currentContainer, navigationCtl = _navigationCtl, plugDict=_plugDict;
@synthesize ecm_flash = _ecm_flash;
@synthesize flag = _flag;

- (BOOL)application:(UIApplication*)application didFinishLaunchingWithOptions:(NSDictionary*)launchOptions
{
    _plugDict = [[NSMutableDictionary alloc] initWithCapacity:1];
    _currentContainer = [[UMContainer alloc] init];
    _window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    _window.backgroundColor = [UIColor whiteColor];
    [UMService checkVersion:nil];
    _navigationCtl = [[UMPNavigationController alloc] init];
    _navigationCtl.navigationBarHidden = YES;
    _ecm_flash = [[CustomUI_ecm_flashController alloc] initWithParentCtl:nil];
    [_navigationCtl pushViewController:_ecm_flash animated:YES];
    self.window.rootViewController = _navigationCtl;
    
    [self.window makeKeyAndVisible];
    
    NSDictionary *userInfo = [launchOptions objectForKey:UIApplicationLaunchOptionsRemoteNotificationKey];
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    if (userInfo) {
        
        [userDefaults setObject:userInfo forKey:@"oa_push_apro"];
    }
    
    NSString *keyPushSwitch = @"nc.oa.push.switch";
    NSNumber *status = [userDefaults objectForKey:keyPushSwitch];
    if (!status) {
        [userDefaults setObject:@"1" forKey:keyPushSwitch];
    }
    
    //是否接受通知
#if __IPHONE_OS_VERSION_MAX_ALLOWED >= __IPHONE_8_0
    if ([application respondsToSelector:@selector(registerUserNotificationSettings:)]) {
        UIUserNotificationType userNotificationTypes = (UIRemoteNotificationTypeAlert |
                                                        UIRemoteNotificationTypeBadge |
                                                        UIRemoteNotificationTypeSound);
        
        
        
        UIUserNotificationSettings *settings = [UIUserNotificationSettings settingsForTypes:userNotificationTypes categories:nil];
        [application registerUserNotificationSettings:settings];
        [application registerForRemoteNotifications];
    }
    else
#endif
    {
        [application registerForRemoteNotificationTypes:(UIRemoteNotificationTypeBadge |
                                                         UIRemoteNotificationTypeAlert |
                                                         UIRemoteNotificationTypeSound)];
    }
    
    
    //向微信注册
    if ([WXApi registerApp:@"wx7eebdf50767d5780" withDescription:@"测试微信注册"]) {
        
        NSLog(@"微信应用注册成功!");
    }
    
    //启动动画
    //[[UmpStartController  sharedStartAnimation] show:kUmpMoveTypeTop time:1.0];
    return YES;
}

#pragma mark - UIAlertViewDelegate
- (void)alertView:(IUIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSLog(@"%@",alertView.userInfo);
    if(buttonIndex == 1){
        NSDictionary * extra = [alertView.userInfo objectForKey:@"extra_text"];
        if(extra){
            NSDictionary * params = [extra objectForKey:@"params"];
            NSString *model = extra[@"node"];
            if ([ncMobileApproveCode isEqual:model]) {
                NSString *taskId = params[@"taskId"];
                NSString *from = params[@"from"];
                TaskPushHandler * handler = [[TaskPushHandler alloc] init];
                [handler handlePush:taskId from:from];
            }
        }
        NSInteger totalCount = [UIApplication sharedApplication].applicationIconBadgeNumber;
        if (totalCount > 0) {
            [UIApplication sharedApplication].applicationIconBadgeNumber -= totalCount;
        }
        [UPushService upushNotificationClick:@"upush.yyuap.com" port:@"80" appid:APPID deviceid:nil];
    }
    if (buttonIndex == 0) {
        [UPushService upushNotificationClick:@"upush.yyuap.com" port:@"80" appid:APPID deviceid:nil];
    }
}

#pragma mark - register Push
- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken {
    NSLog(@"deviceToken = %@",deviceToken);
    NSString *token = [[deviceToken description]
                       
                       substringWithRange:NSMakeRange(1, [[deviceToken description] length]-2)];
    
    token= [token stringByReplacingOccurrencesOfString:@" " withString:@""];
    _pushToken = [token stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    [UPushService upushSignin:_pushToken ip:@"upush.yyuap.com" port:@"80" appid:APPID deviceid:nil];
    
}

//接收推送信息,应用程序处在打开状态，且服务器有推送消息过来时，以及通过推送打开应用程序，执行这个方法
-(void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo
{
    NSInteger totalCount = application.applicationIconBadgeNumber;
    if (totalCount > 0) {
        application.applicationIconBadgeNumber -= totalCount;
    }
    
    NSDictionary *apsDict = [userInfo objectForKey:@"aps"];
    NSDictionary *alertDict = [apsDict objectForKey:@"alert"];
    NSString *extra = [userInfo objectForKey:@"extra_text"];
    NSLog(@"接收到了通知");
    if ([UMSetting sharedInstance].token != nil && ![[UMSetting sharedInstance].token isEqual:@""])
    {
        NSLog(@"处理接收到通知");
        if (extra) {
            IUIAlertView * alert = [[IUIAlertView alloc] initWithTitle:alertDict[@"title"] message:alertDict[@"body"] delegate:self cancelButtonTitle:@"忽略" otherButtonTitles:@"查看", nil];
            alert.userInfo = userInfo;
            [alert show];
        }else{
            IUIAlertView * alert = [[IUIAlertView alloc] initWithTitle:alertDict[@"title"] message:alertDict[@"body"] delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
            alert.userInfo = userInfo;
            [alert show];
        }
        
    }
    NSLog(@"%@",userInfo);
}

#pragma mark 点击浮动按钮的响应事件
- (void)boardButtonClick:(NSNotification *)noti {
    NSNumber *num = [noti object];
    switch ([num intValue]) {
        case 0: {
            NSURL *ENURL = [NSURL URLWithString:@"portal:"];
            [[UIApplication sharedApplication] openURL:ENURL];
        }
            break;
        case 1:
        {
            MaHomeView *board = [MaHomeView defaultButtonBoard];
            [board stopRunning];
        }
            break ;
        default: break;
    }
}

- (void)application:(UIApplication *)application didFailToRegisterForRemoteNotificationsWithError:(NSError *)error {
    if (error.code == 3010) {
        NSLog(@"Push notifications are not supported in the iOS Simulator.");
    } else {
        // show some alert or otherwise handle the failure to register.
        NSLog(@"application:didFailToRegisterForRemoteNotificationsWithError: %@", error);
    }
}

- (void)applicationWillResignActive:(UIApplication*)application
{
}
- (void)applicationDidEnterBackground:(UIApplication*)application
{
}
- (void)applicationWillEnterForeground:(UIApplication*)application
{
    if ([_flag isEqualToString:@"ens+"]) {
        _ecm_flash = [[CustomUI_ecm_flashController alloc] initWithParentCtl:nil];
        [_navigationCtl pushViewController:_ecm_flash animated:YES];
        _flag = @"";
    }
}
- (void)applicationDidBecomeActive:(UIApplication*)application
{
    if ([_flag isEqualToString:@"ens+"]) {
        _ecm_flash = [[CustomUI_ecm_flashController alloc] initWithParentCtl:nil];
        [_navigationCtl pushViewController:_ecm_flash animated:YES];
        _flag = @"";
    }
}
- (void)applicationWillTerminate:(UIApplication*)application
{
}
#pragma mark weixin

-(void) onReq:(BaseReq*)req
{
    if([req isKindOfClass:[GetMessageFromWXReq class]])
    {
        
    }
    else if([req isKindOfClass:[ShowMessageFromWXReq class]])
    {
        
    }
    
}

-(void) onResp:(BaseResp*)resp
{
    //可以省略
    if([resp isKindOfClass:[SendMessageToWXResp class]])
    {
    }else if([resp isKindOfClass:[GetMessageFromWXReq class]]){
        
    }
    
}



- (void) sendTextContent:(NSString*)msg
{
    if ([WXApi isWXAppInstalled] && [WXApi isWXAppSupportApi]) {
        
        SendMessageToWXReq* req = [[SendMessageToWXReq alloc] init];
        req.text = msg;
        req.bText = YES;
        req.scene = _scene;
        
        if ([WXApi sendReq:req]) {//发送图片
            
            NSLog(@"发送文字成功!");
        }
        
    }else{
        
        UIAlertView *alView = [[UIAlertView alloc]initWithTitle:@"" message:@"你的iPhone上还没有安装微信,无法使用此功能，使用微信可以方便的把你喜欢的作品分享给好友。" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"免费下载微信", nil];
        [alView show];
        
    }
}

- (void) sendImageContent:(UIImage *)image
{
    
    if ([WXApi isWXAppInstalled] && [WXApi isWXAppSupportApi]) {
        
        WXMediaMessage *message = [WXMediaMessage message];
        
        [message setThumbImage:image];
        
        WXImageObject *ext = [WXImageObject object];
        ext.imageData = UIImagePNGRepresentation(image);
        
        message.mediaObject = ext;
        
        SendMessageToWXReq* req = [[SendMessageToWXReq alloc] init];
        req.bText = NO;
        req.message = message;
        req.scene = _scene;
        
        if ([WXApi sendReq:req]) {//发送图片
            
        }else{
            
            UIAlertView *alView = [[UIAlertView alloc]initWithTitle:@"提示" message:@"分享失败" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
            [alView show];
        }
        
    }else{
        
        UIAlertView *alView = [[UIAlertView alloc]initWithTitle:@"" message:@"你的iPhone上还没有安装微信,无法使用此功能，使用微信可以方便的把你喜欢的作品分享给好友。" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"免费下载微信", nil];
        [alView show];
        
    }
    
    
}

- (void) sendLinkContent:(NSString*)url title:(NSString *)title description:(NSString *)des image:(UIImage *)image
{
    
    
    
    if ([WXApi isWXAppInstalled] && [WXApi isWXAppSupportApi]) {
        
        WXMediaMessage *message = [WXMediaMessage message];
        message.title = title;
        message.description = des;
        if (image) {
            [message setThumbImage:image];
        }
        
        WXWebpageObject *ext = [WXWebpageObject object];
        ext.webpageUrl = url;
        
        message.mediaObject = ext;
        
        SendMessageToWXReq* req = [[SendMessageToWXReq alloc] init];
        req.bText = NO;
        req.message = message;
        req.scene = _scene;
        
        if ([WXApi sendReq:req]) {
            
            NSLog(@"发送link成功!");
        }
        
    }else{
        
        UIAlertView *alView = [[UIAlertView alloc]initWithTitle:@"" message:@"你的iPhone上还没有安装微信,无法使用此功能，使用微信可以方便的把你喜欢的作品分享给好友。" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"免费下载微信", nil];
        [alView show];
        
    }
    
    
}


- (void) sendNonGifContent
{
    WXMediaMessage *message = [WXMediaMessage message];
    [message setThumbImage:[UIImage imageNamed:@"res5thumb.png"]];
    
    WXEmoticonObject *ext = [WXEmoticonObject object];
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"res5" ofType:@"jpg"];
    ext.emoticonData = [NSData dataWithContentsOfFile:filePath];
    
    message.mediaObject = ext;
    
    SendMessageToWXReq* req = [[SendMessageToWXReq alloc] init];
    req.bText = NO;
    req.message = message;
    req.scene = _scene;
    
    [WXApi sendReq:req];
}

/*! @brief 处理微信通过URL启动App时传递的数据
 *
 * 需要在 application:openURL:sourceApplication:annotation:或者application:handleOpenURL中调用。
 * @param url 微信启动第三方应用时传递过来的URL
 * @param delegate  WXApiDelegate对象，用来接收微信触发的消息。
 * @return 成功返回YES，失败返回NO。
 */
- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url
{
    return  [WXApi handleOpenURL:url delegate:self];
}

-(InvokeInfo *)getInvokeInfo:(NSString *)aid method:(NSString *)method sender:(id<UMViewControl>)sender{
    InvokeInfo *info = [[InvokeInfo alloc] initWithID:aid method:method];
    return info;
}

/*! @brief 处理微信通过URL启动App时传递的数据
 *
 * 需要在 application:openURL:sourceApplication:annotation:或者application:handleOpenURL中调用。
 * @param url 微信启动第三方应用时传递过来的URL
 * @param delegate  WXApiDelegate对象，用来接收微信触发的消息。
 * @return 成功返回YES，失败返回NO。
 */
- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation
{
    BOOL isSuc = [WXApi handleOpenURL:url delegate:self];
    NSLog(@"url %@ isSuc %d",url,isSuc == YES ? 1 : 0);
    
    if ([sourceApplication hasPrefix:@"com.ufida.uap"]) {//用友桌面
        
        [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"UALogin"];//UA桌面
        
        NSDictionary * dic = [[NSDictionary alloc] init];
        
        if ([url query] != nil) {
            
            dic = (NSDictionary *)[self getJsonFromUrl:[url query]];
        }
        
        if ([[dic allKeys] containsObject:@"massotoken"]) {//唯一标识
            
            NSString * masstoken = [dic valueForKey:@"massotoken"];
            if (masstoken != nil) {
                
                [[NSUserDefaults standardUserDefaults] setObject:masstoken forKey:@"massotoken"];
            }
        }
        if ([[dic allKeys] containsObject:@"host"] && [[dic allKeys] containsObject:@"port"]) {//ip
            
            NSString * host = [dic valueForKey:@"host"];
            NSString * port = [dic valueForKey:@"port"];
            
            if (host != nil && port != nil ) {
                
                [UMSetting sharedInstance].serverUrl = [NSString stringWithFormat:@"http://%@:%@/",host,port];
            }
        }
        
    }
    
    
    
    
    // 调用 MaHomeView ,com.yonyou.enterprisehome为“企业+”的bundle identifier
    if ([sourceApplication isEqualToString:@"com.yonyou.enterprisehome"]) {
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(boardButtonClick:) name:SUNButtonBoarButtonClickNotification object:nil];
        MaHomeView *board = [MaHomeView defaultButtonBoard];
        if (!board.running)
        {
            [board startRunning];
        }
        /**
         *sourceApplication	NSString *	@"com.yonyou.portalenterprise"
         *如果应用本身没有登录逻辑,到此可以return YES; *如果应用本身有登录逻辑,需要用下面四句代码接收我们传递过来的参数。 *直接跳转模式,“企业+”不会传递参数给应用,此时不应该替换原应用的
         账号信息
         *规则:如“企业+”传递参数给应用,则替换应用原有账号信息,如未传递
         或传递为空字符串,不替换原有账号信息。 */
        
        NSString *userName = url.user;
        NSString *userPassWord = url.password; NSString *host = url.host;
        NSNumber *port = url.port;
        if ([userName length]!=0) {
            [UMSetting sharedInstance].username = userName;
            //使用 URL.user 替换原应用用户名
        }
        if ([userPassWord length]!=0) {
            [UMSetting sharedInstance].password = userPassWord;
            //使用 URL.password 替换原应用密码 }
            if ([host length]!=0) {
                //使用 URL.host 替换原应用的IP地址
                [UMSetting sharedInstance].host = host;
            }
            if ([[port stringValue] length] != 0) {
                //使用 URL.port 替换原应用的端口号 }
                // TODO: 获取到账号信息后的登录逻辑
                [UMSetting sharedInstance].serverUrl =  [NSString stringWithFormat:@"http://%@:%@/",host,port];
                XEventArgs *args1 = [[XEventArgs alloc] init:nil];
                [args1 setInvoke:[self getInvokeInfo:@"saveSetting" method:@"UMService.writeConfigure" sender:nil]];
                
                [args1 putValue:userName forKey:@"user"];
                
                [args1 putValue:userName forKey:@"username"];
                
                [args1 putValue:userPassWord forKey:@"password"];
                
                [args1 putValue:[port stringValue] forKey:@"port"];
                
                [args1 putValue:host forKey:@"host"];
                
                [args1 putValue:@"true" forKey:@"autologin"];
                
                [args1 putValue:@"false" forKey:@"ishttps"];
                
                [args1 putValue:@"true" forKey:@"ECMWelcomeShowed"];
                
                [args1 putValue:@"true" forKey:@"isdatacollect"];
                
                [UMCommonSevice callSeviceWithMethod:args1];
                
                _flag = @"ens+";
            }
        }
    }
    
    return  YES;
    
}

/*
 *  write by dingh
 *
 * @prama
 *         json  url query
 *         eg:   masstoken=111&user=demo&pass=00
 
 @return dictionary
 */
-(NSMutableDictionary *)getJsonFromUrl:(NSString *)json{
    
    NSMutableDictionary * list = [[NSMutableDictionary alloc] init];
    
    NSArray * arr = [[NSArray alloc] init];
    arr = [json componentsSeparatedByString:@"&"];
    
    for (int i=0; i< arr.count; i++) {
        
        NSString * obj = [arr objectAtIndex:i];
        
        NSRange  range = [obj rangeOfString:@"="];
        
        if (range.length > 0) {
            
            NSString * key = [obj substringToIndex:range.location];
            NSString * value = [obj substringFromIndex:range.location+1];
            
            [list setValue:value forKey:key];
            
        }
        
    }
    
    return list;
}
@end
