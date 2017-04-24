/*!
 @header CWAProgressViewManager.m
 @abstract 实现转圈等待的view
 @author dequan
 @copyright ufida
 @version 1.00 2012/06/06 Creation 
 */

#import "WAProgressViewManager.h"

#define NavigateBarHeight 44
static CWAProgressViewManager *sharedCWAProgressViewManager = nil;
static BOOL isStart;
static UIWindow* gPreviouseKeyWindow = nil;

@implementation CWAProgressViewManager

@synthesize iProgressDelegate;

#pragma mark 生成自己的单例
+ (CWAProgressViewManager *)sharedCWAProgressViewManager
{
  @synchronized(self) 
  {
    if (sharedCWAProgressViewManager == nil) 
    {
      sharedCWAProgressViewManager = [[CWAProgressViewManager alloc] init];
    }
    return sharedCWAProgressViewManager;
  }
}

#pragma mark 初始化自己的方法
- (id)init
{
  if ((self = [super init])) 
  {
    
  }
  return self;
}

#pragma mark 显示条到windows中
- (void)showInWindowsIsFullScreen:(BOOL)isFullScreen andText:(NSString *)aText
{
  
  if(iAlertLevelWindow)
  {
    iAlertLevelWindow = nil;
  }
  CGRect frameOfWindow;
  if(isFullScreen)
  {
    frameOfWindow = [[UIScreen mainScreen] bounds];
  }
  else 
  {
    frameOfWindow = [[UIScreen mainScreen] applicationFrame];
    frameOfWindow.size.height = frameOfWindow.size.height - NavigateBarHeight;
    frameOfWindow.origin.y = frameOfWindow.origin.y + NavigateBarHeight;
   }
 
  iAlertLevelWindow = [[UIWindow alloc] initWithFrame:frameOfWindow]; 
  iAlertLevelWindow.windowLevel = UIWindowLevelAlert;
  [self showInView:iAlertLevelWindow andText:aText];
  iAlertLevelWindow.backgroundColor = [UIColor clearColor];
  gPreviouseKeyWindow = [UIApplication sharedApplication].keyWindow;
  [iAlertLevelWindow makeKeyAndVisible];
}


#pragma mark 无委托时显示的方法 
- (void)showInView:(UIView *)aView 
           andText:(NSString *)aText
{
  if (iProgressView != nil) 
  {
    [self hiddenProgressView];
  }
  iProgressView = [[CWAProgressView alloc] initWithView:aView]; 
  [aView addSubview:iProgressView];  
  [iProgressView.superview bringSubviewToFront:iProgressView];  
  iProgressView.mode = MBProgressViewModeAnnularDeterminate; 
  iProgressView.labelText = aText;  
  [iProgressView show:NO];  
  [self initTimer];
}

#pragma mark 无委托初始化时间
- (void)initTimer
{
  iTimer =  [NSTimer scheduledTimerWithTimeInterval:0.08 
                                             target:self 
                                           selector:@selector(increasesProgress) 
                                           userInfo:nil 
                                            repeats:YES];
}

#pragma mark 无委托添加旋转效果
- (void)increasesProgress
{
  if (iProgressView.progress >= 1.0f)
  {
    iProgressView.progress = 0.0f;
  }
  else
  {
    iProgressView.progress += 0.1f;
  }
}

#pragma mark 有委托时显示的方法
- (void)showInView:(UIView *)aView 
           andText:(NSString *)aText
           andProgressDelegate:(id<MWAProgressDelegate>)aProgressDelegate
{
  if (iProgressView != nil) 
  {
    [self hiddenProgressView];
  }
  iProgressView = [[CWAProgressView alloc] initWithView:aView]; 
  [aView addSubview:iProgressView];  
  [iProgressView.superview bringSubviewToFront:iProgressView];  
  iProgressView.mode = MBProgressViewModeAnnularDeterminate; 
  iProgressView.labelText = aText; 
  iProgressDelegate = aProgressDelegate;
  [iProgressView show:NO];  
  [self callTimer];
}

- (void)callTimer
{
  [self initTimerForDelegate];
  [[NSRunLoop currentRunLoop] addTimer:iTimer forMode:NSRunLoopCommonModes];
}

- (void)initTimerForDelegate
{
  iTimer =  [NSTimer scheduledTimerWithTimeInterval:0.08 
                                             target:self 
                                           selector:@selector(increasesProgressForDelegate) 
                                           userInfo:nil 
                                            repeats:YES];
  isStart = YES;
  
}

#pragma mark 有委托时旋转效果实现
- (void)increasesProgressForDelegate
{
  if(isStart)
  {
    [self doSomethingWhenShowProgress];
    isStart = NO;
  }
  if (iProgressDelegate && [iProgressDelegate respondsToSelector:@selector(isFinished)])
  {
    //没有执行完毕的时候，继续旋转
    NSNumber *finished = (NSNumber *)[iProgressDelegate  performSelector:@selector(isaFinished)];
    if(![finished boolValue])
    {
      if (iProgressView.progress >= 1.0f)
      {
        iProgressView.progress = 0.0f;
      }
      else
      {
        iProgressView.progress += 0.1f;
      }
    }
    else 
    {
      [self hiddenProgressView];
    }
    
  }
  else
  {
    if (iProgressView.progress >= 1.0f)
    {
      iProgressView.progress = 0.0f;
    }
    else
    {
      iProgressView.progress += 0.1f;
    }
  }
}

#pragma mark 调用委托
- (void)doSomethingWhenShowProgress
{
  if (iProgressDelegate && [iProgressDelegate respondsToSelector:@selector(excuteSomethingWhenShowProgress)])
  {
    [iProgressDelegate  performSelector:@selector(excuteSomethingWhenShowProgress)];
  }
}

#pragma mark 隐藏等待视图
- (void)hiddenProgressView
{
  if (iTimer) 
  {
    [iTimer invalidate];
    iTimer = nil;
  }
  
  if(iProgressView)
  {
    [iProgressView hide:YES];
    [iProgressView removeFromSuperview];
    iProgressView = nil;
  }
  if(iAlertLevelWindow){
    [gPreviouseKeyWindow makeKeyAndVisible];
    gPreviouseKeyWindow = nil;

    iAlertLevelWindow = nil; 
  }
}

//请求结束
-  (void)oPeratorRequestOver
{
  [iTimer invalidate];
  iTimer = nil;
  [iProgressView hide:YES];
}

@end
