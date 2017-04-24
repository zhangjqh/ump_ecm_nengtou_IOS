/*!
 @header CWAProgressViewManager.h
 @abstract 实现转圈等待的view
 @author dequan
 @copyright ufida
 @version 1.00 2012/06/06 Creation 
 */

#import <Foundation/Foundation.h>
#import "WAProgressView.h"

@protocol MWAProgressDelegate <NSObject>
@required
- (void)excuteSomethingWhenShowProgress;
- (NSNumber *)isFinished;
@end

@interface CWAProgressViewManager : NSObject<CWAProgressViewDelegate>
{
  //等待视图
  CWAProgressView *iProgressView;
  UIWindow *iAlertLevelWindow;
   //时间
  NSTimer *iTimer;
}

/*!
 @property
 @abstract iProgressDelegate loading界面委托
 */
@property(nonatomic,assign)id <MWAProgressDelegate> iProgressDelegate;

/*!
 @method
 @abstract  在windows中展示等待框
 @discussion 发送网络请求后，调用此方法，开始等待
 @param isFullScreen 是否全屏大小，是，全屏，否，非全屏，不会遮住导航栏
 @param aText 显示的文字
 @result 
 */
- (void)showInWindowsIsFullScreen:(BOOL)isFullScreen andText:(NSString *)aText;

/*!
 @method
 @abstract  开始展示等待框
 @discussion 发送网络请求后，调用此方法，开始等待
 @param aView 为等待视图加在的地方一般为self。view
 @param aText 显示的文字
 @result 
 */
- (void)showInView:(UIView *)aView  andText:(NSString *)aText;

/*!
 @method
 @abstract  开始展示等待框
 @discussion 发送网络请求后，调用此方法，开始等待
 @param aView 为等待视图加在的地方一般为self。view
 @param aText 显示的文字 显示的文字
 @param aProgressDelegate 委托
 @result 
 */
- (void)showInView:(UIView *)aView 
           andText:(NSString *)aText
andProgressDelegate:(id<MWAProgressDelegate>)aProgressDelegate;
/*!
 @method
 @abstract  等待视图影藏
 @discussion 等待视图影藏
 @result 
 */
- (void)hiddenProgressView;

/*!
 @method
 @abstract  初始化方法
 @discussion 生成自己的一个单例
 @result CWAProgressViewManager 一个owned的对象
 */
+ (CWAProgressViewManager *)sharedCWAProgressViewManager;
@end


