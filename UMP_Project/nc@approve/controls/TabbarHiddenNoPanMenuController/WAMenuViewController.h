/*!
 @header CWAMenuViewController.h
 @abstract 实现左右滑动的menucontroller
 @author dequan
 @copyright ufida
 @version 1.00 2012/05/26 Creation 
 */

#import <UIKit/UIKit.h>
#import "WAMenuControllerDef.h"


@protocol MWAMenuControllerDelegate;

/*!
 @enum
 @abstract 手指移动方向
 @constant EMenuPanDirectionLeft 向左移动
 @constant EMenuPanDirectionRight 向右移动
 */
typedef enum 
{
  EMenuPanDirectionLeft = 0,
  EMenuPanDirectionRight,
} TWAMenuPanDirection;

/*!
 @enum
 @abstract 移动结束后停留在那个视图
 @constant EMenuPanCompletionLeft 停留在左边的视图
 @constant EMenuPanCompletionRight 停留在右边的视图
 @constant EMenuPanCompletionRoot 停留在根视图
 */
typedef enum 
{
  EMenuPanCompletionLeft = 0,
  EMenuPanCompletionRight,
  EMenuPanCompletionRoot,
} TWAMenuPanCompletion;

/*!
 @enum
 @abstract  一些设置参数
 @constant ERespondsToWillShowViewController 是否将要显示viewcontroller
 @constant EShowingLeftView 显示左边的view
 @constant EShowingRightView 显示右边的view
 @constant ECanShowRight 能显示右边的view吗
 @constant ECanShowLeft 能显示左边的view吗
 */
typedef struct 
{
  BOOL ERespondsToWillShowViewController;
  BOOL EShowingLeftView;
  BOOL EShowingRightView;
  BOOL ECanShowRight;
  BOOL ECanShowLeft;
} TWAMenuFlags;

/*!
 @enum
 @abstract 界面的一些控制
 @constant EWANC63MMenuViewTypeNotGoAppear 界面将不走viewwillappear
 @constant EWANC63MMenuViewTypeGoAppear 界面走viewwillappear
 @constant EWANC63MMenuViewTypeOther 其他
 */
typedef enum
{
  EWANC63MMenuViewTypeNotGoAppear = 0,
  EWANC63MMenuViewTypeGoAppear = 1,
  EWANC63MMenuViewTypeOther = 2,
}TWANC63MMenuViewType;

@interface CWAMenuViewController : UIViewController<UIGestureRecognizerDelegate>
{
  //开始点击x轴的位置
  CGFloat iPanOriginX;
  //移动的速度
  CGPoint iPanVelocity;
  //移动方向
  TWAMenuPanDirection iPanDirection;
  //一个
  TWAMenuFlags iMenuFlags;
  //是否走viewwillappear
  TWANC63MMenuViewType iViewType;
  //左边的viewcontroller
  UIViewController *iLeftViewController;
  //右边的viewcontroller
  UIViewController *iRightViewController;
  //上面的viewcontroler
  UIViewController *iRootViewController;
  //点击手势
  UITapGestureRecognizer *iTap;
  //移动手势
  UIPanGestureRecognizer *iPan;
  //是否能走滑动手势
  BOOL isCanPanGesture;
  //是否第一次加载不同的rootviewcontroller
  BOOL isLoadDifferentRootViewController;
}

/*!
 @property
 @abstract 是否能够滑动界面
 */
@property (nonatomic, assign) BOOL isCanPanGesture;

/*!
 @property
 @abstract 代理为以后用
 */
@property (nonatomic, assign) id <MWAMenuControllerDelegate> iDelegate;

/*!
 @property
 @abstract 左边的viewcontroller
 */
@property (nonatomic, retain) UIViewController *iLeftViewController;

/*!
 @property
 @abstract 右边的viewcontroller
 */
@property (nonatomic, retain) UIViewController *iRightViewController;

/*!
 @property
 @abstract 跟视图viewcontroller
 */
@property (nonatomic, retain) UIViewController *iRootViewController;

/*!
 @property
 @abstract 点击手势
 */
@property (nonatomic, readonly) UITapGestureRecognizer *iTap;

/*!
 @property
 @abstract 滑动手势
 */
@property (nonatomic, readonly) UIPanGestureRecognizer *iPan;

/*!
 @property
 @abstract 页面动作
 */
@property (nonatomic, assign)TWANC63MMenuViewType iViewType;

/*!
 @method
 @abstract  初始化方法
 @discussion 接受一个controller并付给iRootViewController完成初始化
 @param aController 要传给iRootViewController的controller，
 @result 返回not owned的CWAMenuViewController 对象
 */
- (id)initWithRootViewController:(UIViewController *)aController; 

@end

/*!
 @protocol
 @abstract 这个CWAMenuViewController类的一个protocol
 @discussion 实现左右移动视图前的操作
 */
@protocol MWAMenuControllerDelegate

/*!
 @method
 @abstract 在进入左右视图的之前，调用此方法
 @discussion 在进入左右视图之前，调用此方法，进行你的操作
 @param aMenuController 传self
 @param aController  将要进入的视图
 @result 返回结果
 */
- (void)menuController:(CWAMenuViewController *)aMenuController 
        willShowViewController:(UIViewController*)aController;

@end