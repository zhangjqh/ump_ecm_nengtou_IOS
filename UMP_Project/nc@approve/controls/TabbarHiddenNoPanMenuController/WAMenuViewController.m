/*!
 @header CWAMenuViewController.m
 @abstract 实现左右滑动的menucontroller
 @author dequan
 @copyright ufida
 @version 1.00 2012/05/26 Creation 
 */

#import "WAMenuViewController.h"
#import <QuartzCore/QuartzCore.h>

#define WA_MENUCONTROLLER_MENUFILLWIDTH 320.0f
#define WA_MENUCONTROLLER_MENUDISPLAYWIDTH 255.0f
#define WA_MENUCONTROLLER_HALF_MENUDISPLAYWIDTH 160.0f

#ifdef WA_MENU_HALF
#define WA_MENUCONTROLLER_MENUOVERLAYWIDTH    (self.view.bounds.size.width - WA_MENUCONTROLLER_HALF_MENUDISPLAYWIDTH)
#else
#define WA_MENUCONTROLLER_MENUOVERLAYWIDTH    (self.view.bounds.size.width - WA_MENUCONTROLLER_MENUDISPLAYWIDTH)  
#endif

#define WA_MENUCONTROLLER_MENUBOUNCEOFFSET 10.0f
#define WA_MENUCONTROLLER_MENUBOUNCEDURATION 0.3f
#define WA_MENUCONTROLLER_MENUSLIDERDURATION 0.3f


@interface CWAMenuViewController ()

@end

@implementation CWAMenuViewController
@synthesize iDelegate;
@synthesize iLeftViewController;
@synthesize iRootViewController;
@synthesize iRightViewController;
@synthesize iPan;
@synthesize iTap;
@synthesize isCanPanGesture;
@synthesize iViewType;


//初始化方法

- (id)init
{
  self = [super init];
  if (self)
  {
    iMenuFlags.ECanShowLeft = NO;
    iMenuFlags.ECanShowRight = NO;
    iMenuFlags.ERespondsToWillShowViewController = NO;
    iMenuFlags.EShowingLeftView = NO;
    iMenuFlags.EShowingRightView = NO;
    isCanPanGesture = YES;
    isLoadDifferentRootViewController = NO;
    self.iViewType = EWANC63MMenuViewTypeGoAppear;
  }
  return self;
}

- (id)initWithRootViewController:(UIViewController *)aController 
{
  self = [super init];
  if (self)
  {
    iRootViewController = aController;
    iMenuFlags.ECanShowLeft = NO;
    iMenuFlags.ECanShowRight = NO;
    iMenuFlags.ERespondsToWillShowViewController = NO;
    iMenuFlags.EShowingLeftView = NO;
    iMenuFlags.EShowingRightView = NO;
    isCanPanGesture = YES;
    isLoadDifferentRootViewController = NO;
    self.iViewType = EWANC63MMenuViewTypeGoAppear;
  }
  return self;
}

#pragma mark -
#pragma mark - View lifecycle

- (void)viewDidLoad
{
  [super viewDidLoad];
    
//  [iRightViewController viewDidLoad];
//  [iLeftViewController viewDidLoad];
    
  [self setIRootViewController:iRootViewController]; // reset root
  isLoadDifferentRootViewController = YES;
  
  if (!iTap) 
  {
    iTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap:)];
    iTap.delegate = self;
    [self.view addGestureRecognizer:iTap];
    [iTap setEnabled:NO];
  }
}

- (void)viewDidUnload
{
  [super viewDidUnload];
  [iRightViewController viewDidUnload];
  [iLeftViewController viewDidUnload];
  [iRootViewController viewDidUnload];
}

- (void)viewWillAppear:(BOOL)animated
{
  [super viewWillAppear:animated];
  [[NSNotificationCenter defaultCenter] addObserver:self
                                           selector:@selector(showRight:)
                                               name:WA_TASK_MENUCONTROLLER_SCROLLRIGHT_NOTICE
                                             object:nil];
  [[NSNotificationCenter defaultCenter] addObserver:self
                                           selector:@selector(showLeft:)
                                               name:WA_TASK_MENUCONTROLLER_SCROLLLEFT_NOTICE
                                             object:nil];
  if (iViewType != EWANC63MMenuViewTypeNotGoAppear)
  {
    [iLeftViewController viewWillAppear:animated];
    [iRightViewController viewWillAppear:animated];
    [iRootViewController viewWillAppear:animated];
  }
  else
  {
    iViewType = EWANC63MMenuViewTypeGoAppear;
  }
}

- (void)viewWillDisappear:(BOOL)animated
{
  [[NSNotificationCenter defaultCenter] removeObserver:self name:WA_TASK_MENUCONTROLLER_SCROLLRIGHT_NOTICE object:nil];
  [[NSNotificationCenter defaultCenter] removeObserver:self name:WA_TASK_MENUCONTROLLER_SCROLLLEFT_NOTICE object:nil];
  [iLeftViewController viewWillDisappear:animated];
  [iRightViewController viewWillDisappear:animated];
  [iRootViewController viewWillDisappear:animated];
}

#pragma mark 
#pragma mark - 屏幕旋转

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  //return NO;
  return [iRootViewController shouldAutorotateToInterfaceOrientation:interfaceOrientation];
}

- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation 
                                duration:(NSTimeInterval)duration 
{
  [super willRotateToInterfaceOrientation:toInterfaceOrientation duration:duration];
  
  if (iRootViewController) 
  {
    [iRootViewController willRotateToInterfaceOrientation:toInterfaceOrientation duration:duration];
    
    UIView *view = iRootViewController.view;
    
    if (iMenuFlags.EShowingRightView) 
    {
      view.autoresizingMask = UIViewAutoresizingFlexibleRightMargin;
    } 
    else if (iMenuFlags.EShowingLeftView) 
    {
      view.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin;
    } 
    else 
    {
      view.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    }
  }
}

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation 
{
  [super didRotateFromInterfaceOrientation:fromInterfaceOrientation];
  
  if (iRootViewController) 
  {
    
    [iRootViewController didRotateFromInterfaceOrientation:fromInterfaceOrientation];
    
    CGRect frame = self.view.bounds;
    if (iMenuFlags.EShowingLeftView) 
    {
      frame.origin.x = frame.size.width - WA_MENUCONTROLLER_MENUOVERLAYWIDTH;
    } 
    else if (iMenuFlags.EShowingRightView) 
    {
      frame.origin.x = -(frame.size.width - WA_MENUCONTROLLER_MENUOVERLAYWIDTH);
    }
    iRootViewController.view.frame = frame;
    iRootViewController.view.autoresizingMask = self.view.autoresizingMask;
    
    [self showShadow:(iRootViewController.view.layer.shadowOpacity!=0.0f)];
    
  }
  
}

- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation 
                                         duration:(NSTimeInterval)duration 
{
	[super willAnimateRotationToInterfaceOrientation:toInterfaceOrientation duration:duration];
  
  if (iRootViewController) 
  {
    [iRootViewController willAnimateRotationToInterfaceOrientation:toInterfaceOrientation 
                                                          duration:duration];
  }
}

#pragma mark -
#pragma mark - GestureRecognizers

//手滑操作
- (void)pan:(UIPanGestureRecognizer*)aGesture
{

  if (isCanPanGesture == NO) 
  {
    return;
  }
  
  if (aGesture.state == UIGestureRecognizerStateBegan) 
  {
    
    iPanOriginX = self.iRootViewController.view.frame.origin.x;        
    iPanVelocity = CGPointMake(0.0f, 0.0f);
    
    if([aGesture velocityInView:self.view].x > 0) 
    {
      [self showLeftShadow:YES];
      iPanDirection = EMenuPanDirectionRight;
    } 
    else 
    {
      [self showShadow:YES];
      iPanDirection = EMenuPanDirectionLeft;
    }
  }
  
  if (aGesture.state == UIGestureRecognizerStateChanged) 
  {
    CGPoint velocity = [aGesture velocityInView:self.view];
    if((velocity.x*iPanVelocity.x + velocity.y*iPanVelocity.y) < 0) 
    {
      iPanDirection = (iPanDirection == EMenuPanDirectionRight) ? EMenuPanDirectionLeft : EMenuPanDirectionRight;
    }
    iPanVelocity = velocity;
    CGPoint translation = [aGesture translationInView:self.view];
    CGRect frame = iRootViewController.view.frame;
    frame.origin.x = iPanOriginX + translation.x;
    
    
    if (frame.origin.x > 0.0f && !iMenuFlags.EShowingLeftView) 
    {
      if(iMenuFlags.EShowingRightView) 
      {
        iMenuFlags.EShowingRightView = NO;
        [self.iRightViewController.view removeFromSuperview];
      }
      
      if (iMenuFlags.ECanShowLeft) 
      {
        iMenuFlags.EShowingLeftView = YES;
        CGRect frame = self.view.bounds;
				frame.size.width = WA_MENUCONTROLLER_MENUFILLWIDTH;
        self.iLeftViewController.view.frame = frame;
        [self.view insertSubview:self.iLeftViewController.view atIndex:0];
        
      } 
      else 
      {
        frame.origin.x = 0.0f; // ignore right view if it's not set
      }
      
    } 
    else if (frame.origin.x < 0.0f && !iMenuFlags.EShowingRightView) 
    {
      if(iMenuFlags.EShowingLeftView) 
      {
        iMenuFlags.EShowingLeftView = NO;
        [self.iLeftViewController.view removeFromSuperview];
      }
      
      if (iMenuFlags.ECanShowRight) 
      {
        iMenuFlags.EShowingRightView = YES;
        CGRect frame = self.view.bounds;
				frame.origin.x += frame.size.width - WA_MENUCONTROLLER_MENUFILLWIDTH;
				frame.size.width = WA_MENUCONTROLLER_MENUFILLWIDTH;
        self.iRightViewController.view.frame = frame;
        [self.view insertSubview:self.iRightViewController.view atIndex:0];
        
      } 
      else 
      {
        frame.origin.x = 0.0f; // ignore left view if it's not set
      }
    }
    iRootViewController.view.frame = frame;
  } 
  else if (aGesture.state == UIGestureRecognizerStateEnded || 
           aGesture.state == UIGestureRecognizerStateCancelled) 
  {
    //  Finishing moving to left, right or root view with current pan velocity
    [self.view setUserInteractionEnabled:NO];
    
    TWAMenuPanCompletion completion = EMenuPanCompletionRoot; // by default animate back to the root
    
    if (iPanDirection == EMenuPanDirectionRight && iMenuFlags.EShowingLeftView) 
    {
      completion = EMenuPanCompletionLeft;
    } 
    else if (iPanDirection == EMenuPanDirectionLeft && iMenuFlags.EShowingRightView) 
    {
      completion = EMenuPanCompletionRight;
    }
    
    CGPoint velocity = [aGesture velocityInView:self.view];
    if (velocity.x < 0.0f) 
    {
      velocity.x *= -1.0f;
    }
    BOOL bounce = (velocity.x > 800);
    CGFloat originX = iRootViewController.view.frame.origin.x;
    CGFloat width = iRootViewController.view.frame.size.width;
    CGFloat span = (width - WA_MENUCONTROLLER_MENUOVERLAYWIDTH);
    CGFloat duration = WA_MENUCONTROLLER_MENUSLIDERDURATION; // default duration with 0 velocity
    
    if (bounce) 
    {
      duration = (span / velocity.x); // bouncing we'll use the current velocity to determine duration
    } 
    else 
    {
      duration = ((span - originX) / span) * duration; // user just moved a little, use the defult duration, otherwise it would be too slow
    }
    
    [CATransaction begin];
    [CATransaction setCompletionBlock:^{
      if (completion == EMenuPanDirectionLeft) 
      {
        [self showLeftController:NO];
      } else if (completion == EMenuPanDirectionRight) 
      {
        [self showRightController:NO];
      } 
      else 
      {
        [self showRootController:NO];
      }
      [iRootViewController.view.layer removeAllAnimations];
      [self.view setUserInteractionEnabled:YES];
    }];
    
    CGPoint pos = iRootViewController.view.layer.position;
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    
    NSMutableArray *keyTimes = [[NSMutableArray alloc] initWithCapacity:bounce ? 3 : 2];
    NSMutableArray *values = [[NSMutableArray alloc] initWithCapacity:bounce ? 3 : 2];
    NSMutableArray *timingFunctions = [[NSMutableArray alloc] initWithCapacity:bounce ? 3 : 2];
    
    [values addObject:[NSValue valueWithCGPoint:pos]];
    [timingFunctions addObject:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn]];
    [keyTimes addObject:[NSNumber numberWithFloat:0.0f]];
    if (bounce) {
      
      duration += WA_MENUCONTROLLER_MENUBOUNCEDURATION;
      [keyTimes addObject:[NSNumber numberWithFloat:1.0f - ( WA_MENUCONTROLLER_MENUBOUNCEDURATION / duration)]];
      if (completion == EMenuPanDirectionLeft) 
      {
        
        [values addObject:[NSValue valueWithCGPoint:
                           CGPointMake(((width/2) + span) + WA_MENUCONTROLLER_MENUBOUNCEOFFSET, pos.y)]];
        
      } 
      else if (completion == EMenuPanDirectionRight) 
      {
        
        [values addObject:[NSValue valueWithCGPoint:
                           CGPointMake(-((width/2) - (WA_MENUCONTROLLER_MENUOVERLAYWIDTH
                                                      -WA_MENUCONTROLLER_MENUBOUNCEOFFSET)), pos.y)]];
        
      } 
      else 
      {
        
        // depending on which way we're panning add a bounce offset
        if (iPanDirection == EMenuPanDirectionRight) 
        {
          [values addObject:[NSValue valueWithCGPoint:CGPointMake((width/2) - WA_MENUCONTROLLER_MENUBOUNCEOFFSET, pos.y)]];
        } 
        else 
        {
          [values addObject:[NSValue valueWithCGPoint:CGPointMake((width/2) + WA_MENUCONTROLLER_MENUBOUNCEOFFSET, pos.y)]];
        }
        
      }
      
      [timingFunctions addObject:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
      
    }
    if (completion == EMenuPanDirectionLeft) 
    {
      [values addObject:[NSValue valueWithCGPoint:CGPointMake((width/2) + span, pos.y)]];
    } 
    else if (completion == EMenuPanDirectionRight) 
    {
      [values addObject:[NSValue valueWithCGPoint:CGPointMake(-((width/2) - WA_MENUCONTROLLER_MENUOVERLAYWIDTH), pos.y)]];
    } 
    else 
    {
      [values addObject:[NSValue valueWithCGPoint:CGPointMake(width/2, pos.y)]];
    }
    
    [timingFunctions addObject:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
    [keyTimes addObject:[NSNumber numberWithFloat:1.0f]];
    
    animation.timingFunctions = timingFunctions;
    
    animation.keyTimes = keyTimes;
    //animation.calculationMode = @"cubic";
    animation.values = values;
    animation.duration = duration;   
    animation.removedOnCompletion = NO;
    animation.fillMode = kCAFillModeForwards;
    [iRootViewController.view.layer addAnimation:animation forKey:nil];
    [CATransaction commit];
  } 
}

//点击操作
- (void)tap:(UITapGestureRecognizer*)aGesture 
{
  isCanPanGesture = NO;
  [aGesture setEnabled:NO];
 
  [self showRootController:YES];
}

#pragma mark - 
#pragma mark - UIGestureRecognizerDelegate

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer 
{
  
  
  if([self.iRootViewController isKindOfClass:[UITabBarController class]] &&
     [((UITabBarController *)self.iRootViewController).tabBar isHidden])
  {
    return NO;
  }
  // Check for horizontal pan gesture
  if (gestureRecognizer == iPan) 
  {
    
    UIPanGestureRecognizer *panGesture = (UIPanGestureRecognizer*)gestureRecognizer;
    CGPoint translation = [panGesture translationInView:self.view];
    
    if (abs([panGesture velocityInView:self.view].x) > 100 && 
        sqrt(translation.x * translation.x) / sqrt(translation.y * translation.y) > 1) 
    {
//      if ([panGesture velocityInView:self.view].x >0 &&!iMenuFlags.EShowingRightView ) 
//      {
//        return NO;
//      }
      return YES;
    } 
    
    return NO;
  }
  
  if (gestureRecognizer == iTap) 
  {
    
    if (iRootViewController && (iMenuFlags.EShowingRightView || iMenuFlags.EShowingLeftView)) 
    {
      return CGRectContainsPoint(iRootViewController.view.frame, [gestureRecognizer locationInView:self.view]);
    }
    
    return NO;
    
  }
  
  return YES;
  
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer 
        shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer 
{    
  return NO;
}


#pragma mark -
#pragma mark - Internal Nav Handling 

- (void)resetNavButtons 
{/*此方法暂不需要
  if (!iRootViewController) return;
  
  UIViewController *topController = nil;
  if ([iRootViewController isKindOfClass:[UINavigationController class]]) 
  {
    UINavigationController *navController = (UINavigationController*)iRootViewController;
    if ([[navController viewControllers] count] > 0) 
    {
      topController = [[navController viewControllers] objectAtIndex:0];
    }
  } 
  else if ([iRootViewController isKindOfClass:[UITabBarController class]]) 
  {
    UITabBarController *tabController = (UITabBarController*)iRootViewController;
    topController = [tabController selectedViewController];
  } 
  else 
  {
    topController = iRootViewController;
  }
  
  if (iMenuFlags.ECanShowLeft) 
  {
    UIBarButtonItem *button = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"nav_menu_icon.png"] 
                                                               style:UIBarButtonItemStyleBordered 
                                                              target:self action:@selector(showLeft:)];
    topController.navigationItem.leftBarButtonItem = button;
    [button release];
  } 
  else 
  {
    topController.navigationItem.leftBarButtonItem = nil;
  }
  
  if (iMenuFlags.ECanShowRight) 
  {
    UIBarButtonItem *button = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"nav_menu_icon.png"] 
                                                               style:UIBarButtonItemStyleBordered  
                                                              target:self action:@selector(showRight:)];
    topController.navigationItem.rightBarButtonItem = button;
    [button release];
  } 
  else 
  {
    topController.navigationItem.rightBarButtonItem = nil;
  }
  */
}

- (void)showShadow:(BOOL)aVal 
{
  if (!iRootViewController) return;
  
  iRootViewController.view.layer.shadowOpacity = aVal ? 0.8f : 0.0f;
  if (aVal) 
  {
    iRootViewController.view.layer.cornerRadius = 4.0f;
    iRootViewController.view.layer.shadowOffset = CGSizeMake(10, 0);
    iRootViewController.view.layer.shadowRadius = 4.0f;
    iRootViewController.view.layer.shadowPath = [UIBezierPath bezierPathWithRect:self.view.bounds].CGPath;
  }
  
}

- (void)showLeftShadow:(BOOL)aVal 
{
  if (!iRootViewController) return;
  
  iRootViewController.view.layer.shadowOpacity = aVal ? 0.8f : 0.0f;
  if (aVal) 
  {
    iRootViewController.view.layer.cornerRadius = 4.0f;
    iRootViewController.view.layer.shadowOffset = CGSizeMake(-10, 0);
    iRootViewController.view.layer.shadowRadius = 4.0f;
    iRootViewController.view.layer.shadowPath = [UIBezierPath bezierPathWithRect:self.view.bounds].CGPath;
  }
  
}

- (void)showRootController:(BOOL)aAnimated 
{
  
  [iTap setEnabled:NO];
  iRootViewController.view.userInteractionEnabled = YES;
  
  CGRect frame = iRootViewController.view.frame;
  frame.origin.x = 0.0f;
  
  BOOL _enabled = [UIView areAnimationsEnabled];
  if (!aAnimated)
  {
    [UIView setAnimationsEnabled:NO];
  }
  
  [UIView animateWithDuration:.3 animations:^{
    
    iRootViewController.view.frame = frame;
//    [iRootViewController viewWillAppear:aAnimated];
    
  } 
  completion:^(BOOL finished) 
  {
    
    if (iLeftViewController && iLeftViewController.view.superview) 
    {
      [iLeftViewController.view removeFromSuperview];
    }
    
    if (iRightViewController && iRightViewController.view.superview) 
    {
      [iRightViewController.view removeFromSuperview];
    }
    
    iMenuFlags.EShowingLeftView = NO;
    iMenuFlags.EShowingRightView = NO;
    
    [self showShadow:NO];
    isCanPanGesture = YES;
  }];
  
  if (!aAnimated) 
  {
    [UIView setAnimationsEnabled:_enabled];
  }
  if (iRootViewController && [iRootViewController respondsToSelector:@selector(setNavigatioBarButtonImage:)]) 
  {
    [self.iRootViewController performSelector:@selector(setNavigatioBarButtonImage:) 
                                   withObject:@"nav_btn_list.png"];
  }
}

- (void)showLeftController:(BOOL)aAnimated 
{
  if (!iMenuFlags.ECanShowLeft) return;
  
  if (iRightViewController && iRightViewController.view.superview) 
  {
    [iRightViewController.view removeFromSuperview];
    iMenuFlags.EShowingRightView = NO;
  }
  
  if (iMenuFlags.ERespondsToWillShowViewController) 
  {
    [self.iDelegate menuController:self willShowViewController:self.iLeftViewController];
  }
  iMenuFlags.EShowingLeftView = YES;
  [self showLeftShadow:YES];
  
  UIView *view = self.iLeftViewController.view;
	CGRect frame = self.view.bounds;
	frame.size.width = WA_MENUCONTROLLER_MENUFILLWIDTH;
  view.frame = frame;
  [self.view insertSubview:view atIndex:0];
  [self.iLeftViewController viewWillAppear:aAnimated];
  
  frame = iRootViewController.view.frame;
  
  #ifdef WA_MENU_HALF
  frame.origin.x = CGRectGetMaxX(view.frame) - (WA_MENUCONTROLLER_MENUFILLWIDTH - WA_MENUCONTROLLER_HALF_MENUDISPLAYWIDTH);
  #else
    frame.origin.x = CGRectGetMaxX(view.frame) - (WA_MENUCONTROLLER_MENUFILLWIDTH - WA_MENUCONTROLLER_MENUDISPLAYWIDTH);
  #endif
  
  BOOL _enabled = [UIView areAnimationsEnabled];
  if (!aAnimated) 
  {
    [UIView setAnimationsEnabled:NO];
  }
//  [self viewWillDisappear:aAnimated];
//  iRootViewController.view.userInteractionEnabled = NO;
  [UIView animateWithDuration:.3 animations:^{
    iRootViewController.view.frame = frame;
  } 
  completion:^(BOOL finished) 
  {
    [iTap setEnabled:YES];
  }];
  
  if (!aAnimated) {
    [UIView setAnimationsEnabled:_enabled];
  }
  if (iRootViewController && [iRootViewController respondsToSelector:@selector(setLeftNavigatioBarButtonImage:andHighLightImage:)]) 
  {
    [self.iRootViewController performSelector:@selector(setLeftNavigatioBarButtonImage:andHighLightImage:) 
                                   withObject:@"lfback_btn_nor.png"
                                   withObject:@"lfback_btn_high.png"];
  }
  
}

- (void)showRightController:(BOOL)aAnimated 
{
  if (!iMenuFlags.ECanShowRight) return;
  
  if (iLeftViewController && iLeftViewController.view.superview) 
  {
    [iLeftViewController.view removeFromSuperview];
    iMenuFlags.EShowingLeftView = NO;
  }
  
  if (iMenuFlags.ERespondsToWillShowViewController) 
  {
    [self.iDelegate menuController:self willShowViewController:self.iRightViewController];
  }
  iMenuFlags.EShowingRightView = YES;
  [self showShadow:YES];
  
  UIView *view = self.iRightViewController.view;
  CGRect frame = self.view.bounds;
	frame.origin.x += frame.size.width - WA_MENUCONTROLLER_MENUFILLWIDTH;
	frame.size.width = WA_MENUCONTROLLER_MENUFILLWIDTH;
  view.frame = frame;
  
  [self.view insertSubview:view atIndex:0];
  [self.iRightViewController viewWillAppear:aAnimated];

  frame = iRootViewController.view.frame;
  
  frame.origin.x = -(frame.size.width - WA_MENUCONTROLLER_MENUOVERLAYWIDTH);
  
  BOOL _enabled = [UIView areAnimationsEnabled];
  if (!aAnimated) 
  {
    [UIView setAnimationsEnabled:NO];
  }
//  [self viewWillDisappear:aAnimated];
  //iRootViewController.view.userInteractionEnabled = NO;
  [UIView animateWithDuration:.3 animations:^{
    iRootViewController.view.frame = frame;
  } 
  completion:^(BOOL finished) 
  {
    [iTap setEnabled:YES];
  }];
  
  if (!aAnimated) 
  {
    [UIView setAnimationsEnabled:_enabled];
  }


  if (iRootViewController && [iRootViewController respondsToSelector:@selector(setRightNavigatioBarButtonImage:andHighLightImage:)]) 
  {
    [self.iRootViewController performSelector:@selector(setRightNavigatioBarButtonImage:andHighLightImage:) 
                                   withObject:@"rightmenu-btn-back.png"
                                   withObject:nil];
  }
  else if (iRootViewController && [iRootViewController respondsToSelector:@selector(setNavigatioBarButtonImage:)]) 
  {
    [self.iRootViewController performSelector:@selector(setNavigatioBarButtonImage:) 
                                   withObject:@"rightmenu-btn-back.png"];
  }
}


#pragma mark -
#pragma mark - Setters

- (void)setIDelegate:(id<MWAMenuControllerDelegate>)aDelegate
{
  iDelegate = aDelegate;
  iMenuFlags.ERespondsToWillShowViewController = 
      [(id)self.iDelegate respondsToSelector:@selector(menuController:willShowViewController:)];    
}

- (void)setIRightViewController:(UIViewController *)aRightViewController
{
  if (iRightViewController !=aRightViewController) 
  {

    iRightViewController = nil;
    iRightViewController = aRightViewController;
  }

  iMenuFlags.ECanShowRight = (iRightViewController!=nil);
  [self resetNavButtons];
}

- (void)setILeftViewController:(UIViewController *)aLeftViewController
{
  if (iLeftViewController != aLeftViewController) 
  {

    iLeftViewController = nil;
    iLeftViewController = aLeftViewController;
  }
  iMenuFlags.ECanShowLeft = (iLeftViewController!=nil);
  [self resetNavButtons];
}

- (void)setIRootViewController:(UIViewController *)aRootViewController
{
  UIViewController *tempRoot = iRootViewController;
  CGRect rect = iRootViewController.view.frame;

  if (iRootViewController !=aRootViewController ) 
  {    

    iRootViewController = nil;
    iRootViewController = aRootViewController ;
  }
  
  if (iRootViewController) 
  {    
    UIView *view = iRootViewController.view;
    
    //区别第一次添加rootview与非第一次添加rootview的差别
    if (!isLoadDifferentRootViewController) 
    {
      if (tempRoot) 
      {
        [tempRoot.view removeFromSuperview];
      }
      view.frame = self.view.bounds;
      [self.view addSubview:view];
    }
    else 
    {
      CGFloat originX = rect.origin.x;
      if (originX > 0) 
      {
        originX = 320;
      }
      else 
      {
        originX = -320;
      }
      
      CGRect newRootFrame = tempRoot.view.frame;
      newRootFrame.origin.x = originX;
      if (tempRoot !=aRootViewController ) 
      {
        view.frame = newRootFrame;
      }

      //下面为临时数据
      tempRoot.view.frame = newRootFrame;
      [tempRoot.view removeFromSuperview];
      [self.view addSubview:view];
      [self showRootController:NO];
      NSString *curVersion = [[UIDevice currentDevice] systemVersion];
      NSString *versionString = @"4.3.2";
      if ([curVersion compare:versionString] == NSOrderedAscending || 
          [curVersion compare:versionString] == NSOrderedSame) 
      {
        [self viewWillAppear:YES];
      }
      
      /*
      [UIView animateWithDuration:0.5f 
                       animations:^{
                         tempRoot.view.frame = newRootFrame;
                       } 
                       completion:^(BOOL isSuccess){
                         [tempRoot.view removeFromSuperview];
                         [self.view addSubview:view];
                         [self showRootController:YES];
                         NSString *curVersion = [[UIDevice currentDevice] systemVersion];
                         NSString *versionString = @"4.3.2";
                         if ([curVersion compare:versionString] == NSOrderedAscending || 
                             [curVersion compare:versionString] == NSOrderedSame) 
                         {
                           [self viewWillAppear:YES];
                         }
                       }];*/

    }
    
    
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self 
                                                                          action:@selector(pan:)];
    pan.delegate = self;
    [view addGestureRecognizer:pan];
    if (iPan != pan) 
    {

      iPan = nil;
        iPan = pan;    }
  } 
  else 
  {
    
    if (tempRoot) 
    {
      [tempRoot.view removeFromSuperview];
    }
    
  }
  tempRoot = nil;
  [self resetNavButtons];
}

- (void)setRootController:(UIViewController *)aController animated:(BOOL)aAnimated 
{
  
  if (!aController) 
  {
    [self setIRightViewController:aController];
    return;
  }
  
  if (iMenuFlags.EShowingLeftView) 
  {
    
    [[UIApplication sharedApplication] beginIgnoringInteractionEvents];
    
    // slide out then come back with the new root
    __block CWAMenuViewController *selfRef = self;
    __block UIViewController *rootRef = iRootViewController;
    CGRect frame = rootRef.view.frame;
    frame.origin.x = rootRef.view.bounds.size.width;
    
    [UIView animateWithDuration:.1 animations:^{
      rootRef.view.frame = frame;
    } completion:^(BOOL finished) 
    {
      [[UIApplication sharedApplication] endIgnoringInteractionEvents];
      [selfRef setIRightViewController:aController];
      iRootViewController.view.frame = frame;
      [selfRef showRootController:aAnimated];
    }];
  } 
  else 
  {
    // just add the root and move to it if it's not center
    [self setIRightViewController:aController];
    [self showRootController:aAnimated];
    
  }
  
}

#pragma mark -
#pragma mark - Root Controller Navigation

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated 
{
  NSAssert((iRootViewController!=nil), @"no root controller set");
  
  UINavigationController *navController = nil;
  
  if ([iRootViewController isKindOfClass:[UINavigationController class]]) 
  {
    
    navController = (UINavigationController *)iRootViewController;
    
  } 
  else if ([iRootViewController isKindOfClass:[UITabBarController class]]) 
  {
    
    UIViewController *topController = [(UITabBarController *)iRootViewController selectedViewController];
    if ([topController isKindOfClass:[UINavigationController class]]) 
    {
      navController = (UINavigationController *)topController;
    }
    
  } 
  
  if (navController == nil) 
  {
    return;
  }
  
  
  if (iMenuFlags.EShowingRightView) 
  {
    // if we're showing the right it works a bit different, we'll make a screen shot of the menu overlay, 
    //then push, and move everything over
    __block CALayer *layer = [CALayer layer];
    CGRect layerFrame = self.view.bounds;
    layer.frame = layerFrame;
    
    UIGraphicsBeginImageContextWithOptions(layerFrame.size, YES, 0);
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    [self.view.layer renderInContext:ctx];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    layer.contents = (id)image.CGImage;
    
    [self.view.layer addSublayer:layer];
    [navController pushViewController:viewController animated:NO];
    CGRect frame = iRootViewController.view.frame;
    frame.origin.x = frame.size.width;
    iRootViewController.view.frame = frame;
    frame.origin.x = 0.0f;
    
    CGAffineTransform currentTransform = self.view.transform;
    
    [UIView animateWithDuration:0.25f animations:^{
      
      if (UIInterfaceOrientationIsLandscape([[UIApplication sharedApplication] statusBarOrientation])) 
      {
        
        self.view.transform = CGAffineTransformConcat(currentTransform, 
                              CGAffineTransformMakeTranslation(0, -[[UIScreen mainScreen] applicationFrame].size.height));
      } 
      else 
      {
        self.view.transform = CGAffineTransformConcat(currentTransform, 
                              CGAffineTransformMakeTranslation(-[[UIScreen mainScreen] applicationFrame].size.width, 0));
      }
      
      
    } completion:^(BOOL finished) 
    {
      
      [self showRootController:NO];
      self.view.transform = CGAffineTransformConcat(currentTransform, CGAffineTransformMakeTranslation(0.0f, 0.0f));
      [layer removeFromSuperlayer];
      
    }];
    
  } 
  else 
  {
    [navController pushViewController:viewController animated:animated];
  }
  
}

#pragma mark -
#pragma mark - Actions 

- (void)showLeft:(id)aSender 
{
# warning by zm  稍后去掉
    // 直接响应tap事件
  if (iTap.enabled)
  {
    [self tap:nil];
  }
  else
  {
    [self showLeftController:YES];
  }
}

- (void)showRight:(NSNotification *)note 
{
  
  if (iMenuFlags.EShowingRightView==YES) {
    [self tap:nil];
  }
  else{
    [self showRightController:YES];
  }
}

@end
