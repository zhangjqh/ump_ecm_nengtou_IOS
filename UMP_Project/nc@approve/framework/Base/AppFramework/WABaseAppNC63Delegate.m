#import "WABaseAppNC63Delegate.h"
@implementation CWABaseAppNC63Delegate


- (BOOL)isProLoginBoundFrame
{
  return NO;
}

- (void) moveOldViewAndaddTopView:(UIViewController *)aTopViewController
{
  self.iWindow.rootViewController = aTopViewController;
}

#pragma mark 实现MWALoginedNotification委托，处理登录成功后数据。
- (void)LoginCompleteSuccessWithBaseVO:(CWABaseVO *)aBaseVO WithSender:(id)sender
{
  
  UIViewController *iNextViewController = [self getNextViewCtrlWithBaseVO:aBaseVO];
  if(iNextViewController)
  {
    [self moveOldViewAndaddTopView:iNextViewController];
    iAutoLoginSueccess = YES;
  }
  iNextViewController = nil;
}


- (void)LoginCompleteSuccessWithBaseVOArray:(NSArray *)aBaseVOArray
                                 WithSender:(id)sender
{
  
  UIViewController *iNextViewController = [self getNextViewCtrlWithBaseVOArray:aBaseVOArray];
  if(iNextViewController)
  {
    [self moveOldViewAndaddTopView:iNextViewController];
    iAutoLoginSueccess = YES;
  }
}

@end
