/*!
 @header AppDelegate.h
 @abstract app 入口代理，用于界面调度和组件组装
 @author huych 
 @copyright ufida
 @version 1.00 2012/04/27 Creation 
 */

#import <UIKit/UIKit.h>
#import "WABnsDesVO.h"

#define WA_BASE_RECEIVELOCALNOTIFICATION  @"ReceiveLocalNotification"
#define WA_BASE_RECEIVEREMOVENOTIFICATION  @"ReceiveRemoveNotification"
#define WA_PUSHKEY_USERDEFAULT @"viewOfPush"
#define WA_PUSHKEY_MNC @"mnc"
#define WA_PUSHKEY_M @"m"
#define WA_PUSHKEY_DISMISSVIEW @"disMissView"
#define WA_PUSHKEY_PRESENTVIEW @"presentView"
typedef void (^TWAPushOperateFinish)(BOOL isSucceed);

/*!
 @enum
 @abstract app启动类型
 @constant EStartWithLaunch 之前未启动
 @constant EStartWithBackground 从后台切换到前台
 @constant EOthers 其他（异常情况）
 */
typedef enum
{
  EOthers = -1,
  EStartWithLaunch = 0,
  EStartWithBackground = 1
}TWAStartType;

/*!
 @enum
 @abstract app open url类型
 @constant EOthersUrl 未知类型
 @constant EWeixinUrl 微信类型
 @constant EYonyouUrl yonyou类型
 */
typedef enum
{
  EOthersUrl = 0,
  EWeixinUrl = 1,
  EYonyouUrl = 2
}TWAOpenUrlType;

@interface CWABaseAppDelegate : UIResponder <UIApplicationDelegate,UIAlertViewDelegate>
{
  UIWindow *iWindow;
  UINavigationController *iNavigationController;
  
  BOOL iIsShowDetail;
  UIViewController *iPreKeyWin;
  
  //URL Scheme的开关
  BOOL isAppHookedFromURLScheme;
  //App打开方式的开关（是后台切换回来，还是由关闭状态打开等。）
  TWAStartType iAppStartType;
}

/*!
 @property
 @abstract iWindow 主窗口
 */
@property (nonatomic,retain) UIWindow *iWindow;

/*!
 @property
 @abstract iNavigationController 导航栏控制类
 */
@property (nonatomic,retain) UINavigationController *iNavigationController;

/*!
 @property
 @abstract iIsShowDetail 判断是否显示push消息相关的详情
 */
@property (nonatomic, assign) BOOL iIsShowDetail;

/*!
 @property
 @abstract iPreKeyWin 兼容6.0以下版本的时候需要对keywindow做处理的临时保存变量
 */
@property (nonatomic, retain) UIViewController *iPreKeyWin;

/*!
 @property
 @abstract iPushFinishBlock push关闭操作完成的时候调用，并且置空
 */
@property (nonatomic, assign) TWAPushOperateFinish iPushFinishBlock;


/*!
 *	@method
 *	@abstract	添加除登陆意外的其他业务参数，单component
 *	@discussion	需要子类重写该方法，否则只是请求登陆业务参数
 *	@result	返回请求业务参数VO
 */
- (CWABnsDesVO *)provideBnsVO;


/*!
 *	@method
 *	@abstract	获取登陆成功以后的下一个页面controller,单component
 *	@discussion	需要子类重写该方法，否则返回nil
 *	@param 	aBaseVO 	登陆成功以后的返回数据
 *	@result	登陆成功以后的下一个页面controller
 */
- (UIViewController *)getNextViewCtrlWithBaseVO:(CWABaseVO *)aBaseVO;

/*!
 *	@method
 *	@abstract	获取登陆成功以后的下一个页面controller,多component
 *	@discussion		需要子类重写该方法，否则返回nil
 *	@param 	aBaseVOArray 	登陆成功以后的返回数据
 *	@result	登陆成功以后的下一个页面controller
 */
- (UIViewController *)getNextViewCtrlWithBaseVOArray:(NSArray *)aBaseVOArray;

/*!
 *	@method
 *	@abstract	获取push出详情界面的viewController方法
 *	@discussion		需要子类重写该方法，否则返回nil
 *	@param 	aDataDic 	push出详情相关的初始化数据
 *	@result	push相关的界面的页面viewcontroller
 */
-(UIViewController *)getPushViewWithData:(NSDictionary *)aDataDic;

/*!
 @property
 @abstract 是否由open url scheme进入app
 */
@property (nonatomic,readonly,assign) BOOL isAppHookedFromURLScheme;

/*!
 @property
 @abstract App是从关闭启动还是从后台切入的标志
 */
@property (nonatomic,readonly,assign) TWAStartType iAppStartType;

/*!
 	@method
 	@abstract	是否需要push通知功能
 	@discussion
 	@result	返回Yes，注册push功能，否则，不注册push功能
 */
- (BOOL)isNeedPushFunc;

/*!
 @method
 @abstract	是否需要push出现详情
 @discussion
 @result	返回Yes，push触发进入详情逻辑，否则，不触发注册push进入详情逻辑
 */
- (BOOL)isNeedPushToView;

/*!
 	@method
 	@abstract	提供接口用于初始化预登陆界面
 	@discussion
 	@param 	aPreLoginViewController 	需要赋值的对象
 */
- (void)initPreLoginView;

/*!
 	@method
 	@abstract	提供实例登陆界面，以提供给子类复写。
 	@discussion	
 */
- (void)initLoginViewController;

# pragma mark - URL Scheme相关
/*!
 @method
 @abstract	是否支持第三方通过URL Scheme访问app
 @discussion
 */
- (BOOL)isNeedSupportURLScheme;

/*!
 @method
 @abstract	App打开方式，打开或者后台切入
 @discussion
 */
- (TWAStartType)appStartType;

/*!
 @method
 @abstract	收到的openurl的url是yonyou的，执行该方法
 @discussion
 */
- (BOOL)dealYonyouOpenUrl:(NSURL *)url;

/*!
 @method
 @abstract	判断收到的openurl的url的类型。
 @discussion
 */
- (TWAOpenUrlType)getUrlType:(NSURL *)aURl sourceApp:(NSString *)aSourceApp;

@end
