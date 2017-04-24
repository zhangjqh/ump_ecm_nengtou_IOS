/*!
 @class WAAttachmentViewController 单附件展示Component
 @abstract 支持对附件navigation bar的定制化
 */

#import "WAAttachmentViewController.h"
#import "WASpinnerView.h"
#import "WAFileUtil.h"
#import "WAUFTool.h"
#import "WAIosVersionAdaptor.h"
#define WA_ATT_NAV_BD @"nav_bd.png"
#define WA_ATT_NAV_BD_IOS7 @"nav.png"
@implementation CWAAttachmentViewController
@synthesize navBar;
@synthesize iBarItem;
@synthesize iNavBarItem;
/*!
 @property
 @abstract 用于展示附件的UIWebView
 */
@synthesize iAttWebView;

/*!
 @property
 @abstract 待展示附件全路径 
 */
@synthesize iPath;
/*!
 @property
 @abstract 标题
 */
@synthesize iTitle;
/*!
 @property
 @abstract 返回按钮
 */
@synthesize iBackBtn;
/*!
 @property
 @abstract webView背景颜色
 */
@synthesize iWebViewBDColor;
/*!
 @property
 @abstract webView背景是否不透明
 */
@synthesize iWebViewBDOpaque;

#pragma mark init with nib

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
      self.iTitle = NSLocalizedStringFromTable(@"AttReView", @"component_attachment", nil);
    }
    return self;
}

#pragma 展示附件
/*!
 @method
 @abstract 向UIWebView上装载附件信息
 @discussion 
 @param 待装载附件路径
 @result 
 */
-(void)loadAttIntoWebViewWithPath:(NSString*)aPath
{
  if (aPath)
  {
    NSURL *targetURL = [NSURL fileURLWithPath:aPath];
    NSString* aStr =  nil;
    if([aPath hasSuffix:@".txt"])
    {
      NSData* Data = [NSData dataWithContentsOfURL:targetURL];
      aStr = [[NSString alloc] initWithData:Data encoding:0x80000631];
      if(!aStr)
      {
        aStr = [[NSString alloc] initWithData:Data encoding:0x80000632];
      }
      if(aStr)
      {
        NSString* responseStr = [NSString stringWithFormat:
                               @"<HTML>"
                               "<head>"
                               "</head>"
                               "<BODY>"
                               "<pre>"
                               "%@"
                               "</pre>"
                               "</BODY>"
                               "</HTML>",
                               aStr];
        [self.iAttWebView loadHTMLString:responseStr baseURL:nil];
      }
      
    }
  
    if(!aStr)
    {
      NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
      @try
      {
        [self.iAttWebView loadRequest:request];
      }
      @catch (NSException *exception)
      {
        [CWAFileUtil deleteFileWithUrl:targetURL error:nil];
        NSString *alertTitle = NSLocalizedStringFromTable(@"openAttachError", @"component_attachment", nil);
        UIAlertView *alert =[[UIAlertView alloc] initWithTitle:alertTitle
                                                       message:nil
                                                      delegate:self
                                             cancelButtonTitle:NSLocalizedStringFromTable(@"ok",@"app_task",  nil)
                                             otherButtonTitles:nil];
        [alert show];
      }
      @finally 
      {
      
      }
    }
  }
}

#pragma mark designate initial 自定义初始化
/*!
 @method
 @abstract 初始化方法
 @discussion 
 @param aPath 待下载附件全路径
 @param aTitle 用于在附件导航显示的title,可以为nil,nil则显示“浏览附件”
 @param aBGColor 设置附件导航背景色,可以为nil,nil显示默认颜色
 @result id WAAttachmentViewController (not owned) 需要自行销毁
 */
-(id) initWithFilePath:(NSString*)aPath 
                   andTitle:(NSString*)aTitle
{
  self = [super initWithNibName:@"WAAttachmentViewController" bundle:nil];

  if (self)
  {
    if (aTitle)
    {
      self.iTitle = aTitle;
    }
    else
    {
      self.iTitle = NSLocalizedStringFromTable(@"AttReView", @"component_attachment", nil);
    }
    self.iPath=aPath;
    self.iWebViewBDColor = nil;
    self.iWebViewBDOpaque = YES;
  }
  return self;
}

#pragma view life cycle

- (void)viewDidLoad
{
  [super viewDidLoad];
  //适配ios6、ios7导航栏返回按钮
  CGRect frame = iBackBtn.frame;
  frame.size.height = 44.0f;
  frame.size.width = 64.0f;
  frame.origin.x = -40;
  iBackBtn.frame = frame;
  [CWAIosVersionAdaptor adaptWithLeftNavBtn:iBackBtn];
  //适配
  [CWAIosVersionAdaptor adaptWithNavBar:navBar];
}

-(void)viewWillAppear:(BOOL)animated
{
  [self setWebViewBDColor];
  [[self.navigationController navigationBar] setHidden:YES];
  UINavigationBar *navigationBar = (UINavigationBar *)[self.view viewWithTag:WA_ATT_NAVIGATIONBAR_TAG];
  //设置navigationbar的背景颜色
  NSString *navBg;
  if (WA_CURENT_OS_V >= 7.0)
  {
    navBg = WA_ATT_NAV_BD_IOS7;
    UIImage *shadowImg = [[UIImage alloc] init];
    navigationBar.shadowImage = shadowImg;
  }
  else
  {
    navBg = WA_ATT_NAV_BD_IOS7;
  }
  if ([navigationBar respondsToSelector:@selector(setBackgroundImage:forBarMetrics:)])
  {
    [navigationBar setBackgroundImage:[UIImage imageNamed:navBg] forBarMetrics:UIBarMetricsDefault];
  }
  
  navigationBar.topItem.title = self.iTitle;
  [self loadAttIntoWebViewWithPath:self.iPath];  
}
- (void)viewDidUnload
{
  self.iAttWebView = nil;
  self.iTitle = nil;
  self.iPath = nil;
  [self setIBackBtn:nil];
  [super viewDidUnload];
}

- (void)setWebViewBDColor
{
  [self.iAttWebView setBackgroundColor:self.iWebViewBDColor];
  [self.iAttWebView setOpaque:self.iWebViewBDOpaque];
}

- (void)setBackgroundColor:(UIColor *)aColor
                withOpaque:(BOOL)aOpaque
{
  self.iWebViewBDColor = aColor;
  self.iWebViewBDOpaque = aOpaque;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark actions
/*!
 @method
 @abstract 附件导航返回按钮
 @discussion 
 @param sender 
 @result IBAction
 */
-(IBAction)backBtnAction:(id)sender
{
  [self.navigationController popViewControllerAnimated:YES];
  [[CWASpinnerView sharedCWASpinnerView] hiddenSpinnerView];
}

@end

@implementation UINavigationBar(AttNAvigationBar)
-(void)drawRect:(CGRect)rect
{
  NSString *navBg;
  if (WA_CURENT_OS_V >= 7.0)
  {
    navBg = WA_ATT_NAV_BD_IOS7;
  }
  else
  {
    navBg = WA_ATT_NAV_BD;
  }
  UIImage *image = [UIImage imageNamed:navBg];
  //UIImage *image = [UIImage imageNamed:WA_ATT_NAV_BD];
  [image drawInRect:CGRectMake(0,0,self.frame.size.width,self.frame.size.height)];
}

@end
