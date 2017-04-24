
#import "WALightSplashViewController.h"

@implementation CWALightSplashViewController

@synthesize isAddSubView;

UIImageView *iLightimageView = nil;

- (UIImageView *)getLogoImageView
{
  UIImage *image  = [UIImage imageNamed:@"logo_bd.png"];
  UIImageView *LogoImageView = [[UIImageView alloc] initWithImage:image];
  LogoImageView.frame = CGRectMake(0.00f, 120.00f, image.size.width, image.size.height);
  return LogoImageView;
}
- (void)loadView
{
  CGRect appFrame ;
  double version = [[UIDevice currentDevice].systemVersion doubleValue];//判定系统版本。
  if(isAddSubView)
  {
    appFrame= [[UIScreen mainScreen] applicationFrame];
    if(version >= 7.0f)
    {
      appFrame.origin.y  =  appFrame.origin.y - 20.0f;
    }
  }
  else
  {
     appFrame= [[UIScreen mainScreen] bounds];
  }
	UIView *view=[[UIView alloc] initWithFrame:appFrame];
  self.view = view;

  
  UIImageView *bdImageView;
  UIImage *bdimage ;
  if (DEVICE_IPHONE_5)
  {
    bdimage  = [UIImage imageNamed:@"londground-568h"];
  }
  else
  {
     bdimage  = [UIImage imageNamed:@"londground"];
  }
 
  bdImageView = [[UIImageView alloc] initWithImage:bdimage];
  
  CGRect frame =  self.view.frame;
  
 
  
  if(version >= 6.0f && version < 7.0f)
  {
    frame.origin.y  =  frame.origin.y - 20.0f;
  }
  frame.size.width = bdimage.size.width;
  frame.size.height = bdimage.size.height;
  bdImageView.frame = frame;
  [self.view addSubview:bdImageView];
  
  UIImageView *logoImageView = [self getLogoImageView];
  [self.view addSubview:logoImageView];
  
  iLightimageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"waitingLight"]];

  if(version >= 7.0f)
  {
    iLightimageView.frame = CGRectMake(appFrame.origin.x - 176.0f,appFrame.origin.y+appFrame.size.height-20.0f , 176.0f, 20.0f);
  }
  else
  {
     iLightimageView.frame = CGRectMake(appFrame.origin.x - 176.0f,appFrame.origin.y+appFrame.size.height-40.0f, 176.0f, 20.0f);
  }
  

  [self.view addSubview:iLightimageView];
	
  
  //if (iSplashViewControllerDelegate && [iSplashViewControllerDelegate
  //                                      respondsToSelector:@selector(runBeforeExecuteSomething)])
  //{
  //  [iSplashViewControllerDelegate performSelector:@selector(runBeforeExecuteSomething)];
  //}
  //timer = [NSTimer scheduledTimerWithTimeInterval:0.05
   //                                        target:self
   //                                      selector:@selector(changeFrame)
   //                                      userInfo:nil
   //                                       repeats:YES];
}

-(void)changeFrame
{
  
//	[UIView beginAnimations:nil context:nil];
//	[UIView setAnimationDelegate:self];
  CGRect frame = iLightimageView.frame;
  CGFloat moveX = 10.0f;
  if(frame.origin.x + moveX> 320.0f)
  {
    frame.origin.x = - 176.0f;
  }
  else
  {
    frame.origin.x = frame.origin.x + moveX;
  }
  
  iLightimageView.frame = frame;
  
  //必须先提交动画，否则会使下一个executeSomethingWhenShow界面产生动画
//  [UIView commitAnimations];
  
 // if (iSplashViewControllerDelegate && [iSplashViewControllerDelegate respondsToSelector:@selector(executeSomethingWhenShow)])
 // {
  //  isFinished = [[iSplashViewControllerDelegate performSelector:@selector(executeSomethingWhenShow)] boolValue];
    
  //  if (isFinished && timer)
  //  {
  //    [timer invalidate];
  //    timer = nil;
   //   [self.view removeFromSuperview];
   // }
  //}
}

@end
