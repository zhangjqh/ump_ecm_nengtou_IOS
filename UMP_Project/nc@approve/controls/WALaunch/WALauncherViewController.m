

#import "WALauncherViewController.h"
#import "WAUFTool.h"
#import <UMIOSControls/GTMBase64.h>
#import "WALauncherBnsHandler.h"


@interface CWALauncherViewController ()

- (NSMutableArray *)savedLauncherItems;
- (NSArray*)retrieveFromUserDefaults:(NSString *)key;
- (void)saveToUserDefaults:(id)object key:(NSString *)key;

@property (nonatomic, retain) UIView *iOverlayView;
@property (nonatomic, retain) UIViewController *iCurrentViewController;
@property (nonatomic, assign) CGRect iStatusBarFrame;
@end

@implementation CWALauncherViewController

@synthesize iLauncherNavigationController;
@synthesize iLauncherView;
@synthesize iAppControllers;
@synthesize iOverlayView;
@synthesize iCurrentViewController;
@synthesize iStatusBarFrame;
@synthesize iPortraitColumnCount;
@synthesize iPortraitRowCount;
@synthesize isNeedReloadData;


- (id)initWithTitle:(NSString *)aTitle
{
	if((self = [super init]))
  {
		self.title = aTitle;
	}
	return self;
}


- (CGRect)getLauncherViewFrame
{
  return self.view.bounds;
}


- (UIColor *)getLaunchViewBackColor
{
  return WACOLOR(234,237,250);
}

-(void)loadView
{
	[super loadView];
  
  if([self respondsToSelector:@selector(automaticallyAdjustsScrollViewInsets)])
  {
    //self.automaticallyAdjustsScrollViewInsets = NO;
  }
	self.iLauncherView = [[CWALauncherView alloc] initWithFrame:[self getLauncherViewFrame] withNeedSudoKuBd:YES];
  self.iLauncherView.iPortraitRowCount = self.iPortraitRowCount;
  self.iLauncherView.iPortraitColumnCount = self.iPortraitColumnCount;
	self.iLauncherView.backgroundColor = [self getLaunchViewBackColor];
	[self.iLauncherView setDelegate:self];
	[self.view  addSubview: self.iLauncherView];
  
	
  [self.iLauncherView setIPages:[self savedLauncherItems]];
  
  [self.iLauncherView setIShortcutItems:[self savedShortCutAreasItems]];
  
  [self.iLauncherView setNumberOfImmovableItems:[(NSNumber *)[self retrieveFromUserDefaults:@"myLauncherViewImmovable"] intValue]];
    
   self.iAppControllers = [[NSMutableDictionary alloc] init];
   self.iStatusBarFrame = [[UIApplication sharedApplication] statusBarFrame];
}

- (void)reloadData
{
  [self.iLauncherView setIPages:[self savedLauncherItems]];
  
  [self.iLauncherView setIShortcutItems:[self savedShortCutAreasItems]];
  [self.iLauncherView reFreshUI];
}

- (void)viewDidAppear:(BOOL)animated
{
  
  if(isNeedReloadData)
  {
    @synchronized(self)
    {
      [self.iLauncherView removeAllItems];
      [self reloadData];
    }
  }
  
  [self.iLauncherView viewDidAppear:animated];
  [self.iLauncherView savePages];
  isNeedReloadData = NO;
}

- (void)viewWillLayoutSubviews
{
    if (!CGRectEqualToRect(self.iStatusBarFrame, [[UIApplication sharedApplication] statusBarFrame]))
    {
      CGRect statusBarFrame = [[UIApplication sharedApplication] statusBarFrame];
      if (self.iLauncherNavigationController)
      {
        CGRect navConFrame = self.iLauncherNavigationController.view.bounds;
        [UIView animateWithDuration:0.3
                         animations:
        ^{
            CGRect navBarFrame = self.iLauncherNavigationController.navigationBar.frame;
            [self.iLauncherNavigationController.navigationBar setFrame:CGRectMake(navBarFrame.origin.x,
                                                                                  statusBarFrame.size.height, navBarFrame.size.width,
                                                                                  navBarFrame.size.height)];
            [self.iLauncherNavigationController.view setFrame:CGRectMake(navConFrame.origin.x, navConFrame.origin.y, navConFrame.size.width, navConFrame.size.height)];
          }
                         completion:^(BOOL finished)
          {
                [self.iLauncherNavigationController.view setNeedsLayout];
            }];
        }
        self.iStatusBarFrame = statusBarFrame;
    }
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
	return YES;
}

- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
                                duration:(NSTimeInterval)duration
{
  [self.iLauncherView setCurrentOrientation:toInterfaceOrientation];
  if (self.iLauncherNavigationController)
  {
    [self.iLauncherNavigationController setNavigationBarHidden:YES];
    [self.iLauncherNavigationController willRotateToInterfaceOrientation:toInterfaceOrientation
                                                                duration:duration];
  }
}

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation
{
	if(self.iLauncherNavigationController)
  {
    [self.iLauncherNavigationController setNavigationBarHidden:NO];
    [self.iLauncherNavigationController didRotateFromInterfaceOrientation:fromInterfaceOrientation];
  }
	
	self.iOverlayView.frame = self.iLauncherView.frame;
	[(CWALauncherView *)self.iOverlayView layoutLauncher];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

- (void)viewDidUnload
{
  [super viewDidUnload];
}

#pragma mark - MyLauncherItem management

-(BOOL)hasSavedLauncherItems
{
  return ([self retrieveFromUserDefaults:@"myLauncherView"] != nil);
}

-(void)launcherViewItemSelected:(CWALauncherItem*)item
{
  
}

-(void)launcherViewDidBeginEditing:(id)sender
{
	[self.navigationItem setRightBarButtonItem:[[UIBarButtonItem alloc]
                                              initWithBarButtonSystemItem:UIBarButtonSystemItemDone
												 target:self.iLauncherView action:@selector(endEditing)] animated:YES];
}

-(void)launcherViewDidEndEditing:(id)sender
{
	[self.navigationItem setRightBarButtonItem:nil];
}

- (void)closeView
{
	UIView *viewToClose = [[self.iLauncherNavigationController topViewController] view];
    if (!viewToClose)
        return;
    
	viewToClose.transform = CGAffineTransformIdentity;
    
	[UIView animateWithDuration:0.3 
						  delay:0 
						options:UIViewAnimationOptionCurveEaseOut 
					 animations:^
  {
						 viewToClose.alpha = 0;		
						 viewToClose.transform = CGAffineTransformMakeRotation(0.5);
						 self.iOverlayView.alpha = 0;
					 }
					 completion:^(BOOL finished)
  {
                         if ([[UIDevice currentDevice].systemVersion doubleValue] < 5.0)
                           {
                             [[self.iLauncherNavigationController topViewController] viewWillDisappear:NO];
                         }
                         [[self.iLauncherNavigationController view] removeFromSuperview];
                         if ([[UIDevice currentDevice].systemVersion doubleValue] < 5.0)
                           {
                             [[self.iLauncherNavigationController topViewController] viewDidDisappear:NO];
                         }
                         [self.iLauncherNavigationController setDelegate:nil];
                          self.iLauncherNavigationController = nil;
                          self.iCurrentViewController  = nil;
						 [self.parentViewController viewWillAppear:NO];
						 [self.parentViewController viewDidAppear:NO];
					 }];
}

#pragma mark - UINavigationControllerDelegate

-(void)navigationController:(UINavigationController *)navigationController
     willShowViewController:(UIViewController *)viewController
                   animated:(BOOL)animated
{
  if ([[UIDevice currentDevice].systemVersion doubleValue] < 5.0)
  {
    if (self.iCurrentViewController)
    {
      [self.iCurrentViewController viewWillDisappear:animated];
    }
    [viewController viewWillAppear:animated];
  }
}

-(void)navigationController:(UINavigationController *)navigationController
      didShowViewController:(UIViewController *)viewController
                   animated:(BOOL)animated
{
  if ([[UIDevice currentDevice].systemVersion doubleValue] < 5.0)
  {
    if (self.iCurrentViewController)
    {
      [self.iCurrentViewController viewDidDisappear:animated];
    }
    [viewController viewDidAppear:animated];
  }
  self.iCurrentViewController = viewController;
}

#pragma mark - myLauncher caching

- (NSMutableArray *)savedShortCutAreasItems
{
	NSArray *savedshortCutAreaItems = (NSArray *)[self retrieveFromUserDefaults:@"shortCutAreasToSave"];
	NSMutableArray *savedShortCutAreasItems = nil;
	if(savedshortCutAreaItems)
  {
		savedShortCutAreasItems = [NSMutableArray array];
		
		for (NSDictionary *item  in savedshortCutAreaItems)
    {
      CWALauncherItem *launcherItem = [self  getLauncherItemWithDic:item];
      [savedShortCutAreasItems addObject:launcherItem];
    }
  }
	return savedShortCutAreasItems;
}

- (UIImage *)getDefaultImageNameWithFunc:(NSString *)aFunc
{
  return nil;
}


- (CWALauncherItem *)getLauncherItemWithDic:(NSDictionary *)aDic
{
  CWALauncherItem *launcherItem = nil;
  NSNumber *version;
  NSString *imageData = [aDic objectForKey:@"image"];
  UIImage *image ;
  if(!imageData || [@"" isEqualToString:imageData])
  {
    image = [self getDefaultImageNameWithFunc:(NSString *)[aDic objectForKey:@"title"]];
  }
  else
  {
    NSString *base64 = imageData;
    NSData *data= [GTMBase64 decodeString:base64];
    
    image = [UIImage imageWithData:data];
  }
  
  if(!image)
  {
    image = [self getDefaultImageNameWithFunc:(NSString *)[aDic objectForKey:@"title"]];
  }
  if ((version = [aDic objectForKey:@"myLauncherViewItemVersion"]))
  {
    if ([version intValue] == 2)
    {
      launcherItem = [[CWALauncherItem alloc] initWithTitle:[aDic objectForKey:@"title"]
                                                  WithImage:image
                                              WithDeletable:[[aDic objectForKey:@"deletable"] boolValue]
                                           WithOtherInfoDic:[aDic objectForKey:@"oterinfodic"]];
      
  
    }
  }
  else
  {
    launcherItem = [[CWALauncherItem alloc] initWithTitle:[aDic objectForKey:@"title"]
                                                WithImage:image
                                            WithDeletable:[[aDic objectForKey:@"deletable"] boolValue]
                                         WithOtherInfoDic:[aDic objectForKey:@"oterinfodic"]];
  
  }
  return launcherItem;
}

- (NSMutableArray *)savedLauncherItems
{
	NSArray *savedPages = (NSArray *)[self retrieveFromUserDefaults:@"myLauncherView"];
	NSMutableArray *savedLauncherItems = [NSMutableArray array];
	if(savedPages)
	{
		
		for (NSArray *page in savedPages)
		{
			NSMutableArray *savedPage = [[NSMutableArray alloc] init];
			for(NSDictionary *item in page)
			{
        CWALauncherItem *launcherItem = [self getLauncherItemWithDic:item];
        [savedPage addObject:launcherItem];
			}
			[savedLauncherItems addObject:savedPage];
		}
		
		return savedLauncherItems ;
	}
    
	return nil;
}

-(void)clearSavedLauncherItems
{
  [self saveToUserDefaults:nil key:@"shortCutAreasToSave"];
  [self saveToUserDefaults:nil key:@"myLauncherView"];
  [self saveToUserDefaults:nil key:@"myLauncherViewImmovable"];
}

-(id)retrieveFromUserDefaults:(NSString *)key
{
  @synchronized(self)
  {
    return [CWALauncherBnsHandler retrieveFromUserDefaults:key];
  }
}

-(void)saveToUserDefaults:(id)object key:(NSString *)key
{
  @synchronized(self)
  {
    [CWALauncherBnsHandler saveToUserDefaults:object key:key];
  }
}

@end
