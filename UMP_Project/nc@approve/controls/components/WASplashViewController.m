/*!
 @header WASplashViewController.m
 @abstract 闪屏界面加载GIF
 @abstract 承载londing风车转动速度，大小，时间（可根据网络请求时间来控制运行时间）
 @author Created by Berryyu on 12-4-20.
 @version 1.00 2012/01/20 Creation (此文档的版本信息)
 */

#import "WASplashViewController.h"
#import "WAGIFImageView.h"

#define DEVICE_IPHONE_5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)

@implementation CWASplashViewController

@synthesize timer,splashImageView,navController;
@synthesize iSplashViewControllerDelegate;

- (void)loadView 
{
  CGRect appFrame= [[UIScreen mainScreen] bounds];
	UIView *view=[[UIView alloc] initWithFrame:appFrame];
  self.view = view;
  UIColor *color = nil;
  if (DEVICE_IPHONE_5)
  {
   color  = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"londground-568h"]];
  }
  else
  {
    color = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"londground"]];
  }
  self.view.backgroundColor = color;
  NSString* filePath = [[NSBundle mainBundle] pathForResource:@"ufida-loading.gif" ofType:nil];
  CWAGIFImageView* gifImageView = [CWAGIFImageView  gifImageViewWithGIFFile:filePath];
 
  gifImageView.frame = CGRectMake(135, 260, 50, 50);
  
  [self.view addSubview:gifImageView];

  
  if (iSplashViewControllerDelegate && [iSplashViewControllerDelegate 
                                        respondsToSelector:@selector(runBeforeExecuteSomething)])
  {
    [iSplashViewControllerDelegate performSelector:@selector(runBeforeExecuteSomething)];
  }
  timer = [NSTimer scheduledTimerWithTimeInterval:1.0 
                                           target:self 
                                         selector:@selector(fadeScreen)
                                         userInfo:nil 
                                          repeats:YES];
}

-(void)fadeScreen{
    
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDelegate:self];
  
   //必须先提交动画，否则会使下一个executeSomethingWhenShow界面产生动画
  [UIView commitAnimations];
  
  if (iSplashViewControllerDelegate && [iSplashViewControllerDelegate respondsToSelector:@selector(executeSomethingWhenShow)])
  {
    isFinished = [[iSplashViewControllerDelegate performSelector:@selector(executeSomethingWhenShow)] boolValue];
    
    if (isFinished && timer)
    {
      [timer invalidate];
      timer = nil;
      [self.view removeFromSuperview];
    }
  }
}

@end
