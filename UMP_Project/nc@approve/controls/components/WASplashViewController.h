/*!
 @header WASplashViewController.h
 @abstract 闪屏界面加载GIF
 @abstract 承载londing风车转动速度，大小，时间（可根据网络请求时间来控制运行时间）
 @author Created by Berryyu on 12-4-20.
 @version 1.00 2012/01/20 Creation (此文档的版本信息)
 */

#import <UIKit/UIKit.h>

/*!
 @protocol
 @abstract 风车转动委托
 @discussion 
 */
@protocol MWASplashViewControllerDelegate <NSObject>
@optional

/*!
 @method
 @abstract 风车转动界面隐藏在后台的事件
 @discussion  轮询结果，返回值为YES时，停止轮询，否则风车继续转动
 */
- (NSNumber *)executeSomethingWhenShow;

/*!
 *	@method
 *	@abstract	风车转动界面隐藏在后台事件启动之前执行的事件，在轮询之前执行
 *	@discussion	
 */
- (void)runBeforeExecuteSomething;

@end

@interface CWASplashViewController : UIViewController <MWASplashViewControllerDelegate>
{
  NSTimer *timer;
  UIImageView *splashImageView;
	
  UINavigationController *navController;
  BOOL isFinished;
}

@property (nonatomic,assign) id<MWASplashViewControllerDelegate> iSplashViewControllerDelegate;
@property (nonatomic,retain) NSTimer *timer;
@property (nonatomic,retain) UIImageView *splashImageView;
@property (nonatomic, retain) UINavigationController *navController; 

@end



