#import "WAMemoViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "WAIosVersionAdaptor.h"
#import "TaskDef.h"


@implementation CWAMemoViewController

@synthesize iMemo;
@synthesize iNextMemo;
@synthesize isCanEdit;
static int textfieldMemoTag = 101;

- (id)initWithNibName:(NSString *)nibNameOrNil
           Withbundle:(NSBundle *)nibBundleOrNil
             WithMemo:(NSString *)aMemo
         WithNextMemo:(NSString *)aNextMemo
         WithDelegate:(id <MEAMemoControllerDelegate>) aMemoControllerDelegate
{
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if (self)
  {
    self.iMemo = aMemo;
    self.iNextMemo = aNextMemo;
    iMemoController = [[CWAMemoController alloc] init];
    iMemoController.iMemoViewController = self;
    iMemoController.iMemoControllerDelegate = aMemoControllerDelegate;
  }
  return self;
}

- (void)viewDidLoad
{
  [super viewDidLoad];
//  iNarBar.topItem.title = NSLocalizedStringFromTable(@"memo", @"btarget_task", nil);
  [iLeftBtn addTarget:iMemoController
               action:@selector(LeftBtnClick:)
     forControlEvents:UIControlEventTouchUpInside];
  
  NSString *title = NSLocalizedStringFromTable(@"save", @"btarget_task", nil);
  [iRightBtn setTitle:title forState:UIControlStateNormal];
  [iRightBtn addTarget:iMemoController
               action:@selector(RightBtnClick:)
     forControlEvents:UIControlEventTouchUpInside];
  
  CGRect frame = CGRectZero;
  CGRect mainFrame = [[UIScreen mainScreen] bounds];
  if (iMemo)
  {
    frame = CGRectMake(16.0f, 0.0f, 300.0f, 24.0f);
    UILabel *lable = [[UILabel alloc] initWithFrame:frame];
    lable.backgroundColor = [UIColor clearColor];
      lable.textColor = WA_TASK_COLOR_104_143_223;
    lable.text = NSLocalizedStringFromTable(@"lastmemo", @"btarget_task", nil);
    lable.font = WA_TASK_FONT_KAKU_W3_12;
    frame.origin.x = 0.0f;
    frame.origin.y = frame.origin.y + frame.size.height;
    frame.size.width = mainFrame.size.width;
    
    frame.size.height = mainFrame.size.height - frame.origin.y - 24.0f- iShowContentView.frame.origin.y;
    UIWebView *viewMemo = [[UIWebView alloc] initWithFrame:frame];
//    lableMemo.text = iMemo;
//    lableMemo.font = [UIFont fontWithName:@"STHeitiSC-Medium" size:15];
    [viewMemo loadHTMLString:iMemo baseURL:nil];
    viewMemo.autoresizesSubviews = NO; //自动调整大小
//  viewMemo.userInteractionEnabled = NO;
    viewMemo.backgroundColor = WA_TASK_COLOR_253;
    

    [iShowContentView addSubview:lable];
    [iShowContentView addSubview:viewMemo];
  }
  
  if(isCanEdit)
  {
    frame.origin.x = 10.0f;
    frame.origin.y = frame.origin.y + frame.size.height + 12.0f;
    frame.size.width = 300.0f;
    frame.size.height = 15.0f;
    UILabel *lable = [[UILabel alloc] initWithFrame:frame];
    lable.font = [UIFont fontWithName:@"STHeitiSC-Medium" size:15];
    lable.text = NSLocalizedStringFromTable(@"tonext", @"btarget_task", nil);
    lable.backgroundColor = [UIColor clearColor];
  

    frame.origin.y = frame.origin.y +frame.size.height + 12.0f;
    frame.size.height = 90.0f;
    UITextView *textFiled = [[UITextView alloc] initWithFrame:frame];
    textFiled.font = [UIFont fontWithName:@"STHeitiSC-Medium" size:15];
    textFiled.layer.cornerRadius = 6;
    textFiled.layer.masksToBounds = YES;
    textFiled.tag = textfieldMemoTag;
    textFiled.text = self.iNextMemo;
    [iShowContentView addSubview:lable];
    [iShowContentView addSubview:textFiled];
  
    [iRightBtn setHidden:YES];
  }
  else
  {
    [iRightBtn setHidden:YES];
  }
  
	
	[self initNav];
  
}
- (void)initNav
{
  iNarBar.topItem.title =  NSLocalizedStringFromTable(@"memo", @"btarget_task", nil);
  if ([iNarBar respondsToSelector:@selector(setBackgroundImage:forBarMetrics:)])
		{
        [iNarBar setBackgroundImage:[UIImage imageNamed:WA_TASK_NAV_BG]
                    forBarMetrics:UIBarMetricsDefault];
      CGRect frame = iLeftBtn.frame;
      frame.size.height = 32.0f;
      frame.size.width = 32.0f;
//      iLeftBtn.frame = frame;
//      [iLeftBtn setBackgroundImage:[UIImage imageNamed:WA_TASK_NAV_BACK_BG]
//                          forState:UIControlStateNormal];
      [CWAIosVersionAdaptor adaptWithLeftNavBtn:iLeftBtn];
		}
  [CWAIosVersionAdaptor adaptWithNavBar:iNarBar];
}


- (NSString *)getMemo
{
  UITextView *textView = (UITextView *)[iShowContentView viewWithTag:textfieldMemoTag];
  return textView.text;
}

@end
