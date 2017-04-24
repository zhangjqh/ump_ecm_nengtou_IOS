

#import "WAHandWriteViewController.h"
#import "WAIosVersionAdaptor.h"
#import "WAUFTool.h"

@implementation CWAHandWriteViewController


@synthesize iDrawingBoardView;
@synthesize iDrawingBoardDelegate;
@synthesize iInitImage;
@synthesize iCanEdit;
@synthesize iTitle;

static NSString *WA_HANDWRITE_TOOLBAR_BD = @"setting_toolbar_bd";

static NSString *WA_HANDWRITE_TWOWORDSBTNNORMALBD = @"twowords_btn";
static NSString *WA_HANDWRITE_TWOWORDSTOUCHBD = @"twowords_btn_touch";
static NSString *WA_HANDWRITE_UNDO = @"suspendedic_undo.png";

- (id)initWithNibName:(NSString *)nibNameOrNil
               Withbundle:(NSBundle *)nibBundleOrNil
WithDrawingBoardDelegate:( id <DrawingBoardDelegate>)aDrawingBoardDelegate
           WithInmage:(UIImage *)aInmage
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
      iHandWriteController = [[CWAHandWriteController alloc] init];
      iHandWriteController.iHandWriteViewController = self;
      self.iDrawingBoardDelegate = aDrawingBoardDelegate;
      self.iInitImage = aInmage;
      iCanEdit = YES;
    }
    return self;
}

- (void)initNav
{
  if(iTitle)
  {
    iNavBar.topItem.title = iTitle;
  }
  else
  {
      iNavBar.topItem.title =  NSLocalizedStringFromTable(@"handWriteNote", @"btarget_task", nil);
  }

  if ([iNavBar respondsToSelector:@selector(setBackgroundImage:forBarMetrics:)])
    {
        [iNavBar setBackgroundImage:[UIImage imageNamed:WA_NEW_TASK_NAV_BG]
                      forBarMetrics:UIBarMetricsDefault];
        [CWAIosVersionAdaptor adaptWithLeftNavBtn:iLeftBtn];

    }
//  CGRect frame = iLeftBtn.frame;
 // frame.size.height = 32.0f;
//  frame.size.width = 32.0f;
//  iLeftBtn.frame = frame;
    [CWAIosVersionAdaptor adaptWithNavBar:iNavBar];
}

-(void)addRightBtn
{
    int maxWidth = [[UIScreen mainScreen]applicationFrame].size.width;
  CGRect btFrame;
  if (WA_CURENT_OS_V < 7.0) {
    btFrame =CGRectMake(maxWidth - 48 , 0, 48, 44);
  }
  else
  {
    btFrame =CGRectMake(maxWidth - 48, 20, 48, 44);
  }
    UIButton *saveBtn = [[UIButton alloc] initWithFrame:btFrame];
    NSString *save = NSLocalizedStringFromTable(@"save", @"btarget_task",nil );
    [saveBtn setTitle:save forState:UIControlStateNormal];
    [saveBtn setTitleColor: [UIColor colorWithRed:229.0f/255.0f green:0.0f/255.0f blue:17.0f/255.0f alpha:1] forState:UIControlStateNormal];
    [saveBtn.titleLabel setFont:WA_TASK_FONT_KAKU_W3_16];
    [saveBtn addTarget:iHandWriteController
                action:@selector(saveBtnClick:)
      forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:saveBtn];
}

- (void)addRevokeBtn
{
    CGRect frame = iBottomView.frame;
    [iBottomView setBackgroundColor:WA_TASK_COLOR_253];
    CGRect btnFrame = CGRectMake(16, frame.size.height - 44.0, 32.0, 32.0);
    UIButton *revokeBtn = [[UIButton alloc]initWithFrame:btnFrame];
    [revokeBtn setBackgroundImage:[UIImage imageNamed:WA_HANDWRITE_UNDO]
                         forState:UIControlStateNormal];
    [revokeBtn setBackgroundImage:[UIImage imageNamed:WA_HANDWRITE_UNDO]
                         forState:UIControlStateHighlighted];
    [revokeBtn addTarget:iHandWriteController
                  action:@selector(revokeBtnClick:)
        forControlEvents:UIControlEventTouchUpInside];
    
    [iBottomView addSubview:revokeBtn];
}

- (void)viewDidLoad
{
  [super viewDidLoad];
  [self initNav];
    CGRect frame = iSCrollView.frame;
    frame.size.width = [[UIScreen mainScreen] applicationFrame].size.width;
    frame.size.height = [[UIScreen mainScreen] applicationFrame].size.height - 104.00f;
    iSCrollView.frame = frame;
  [iLeftBtn addTarget:iHandWriteController
               action:@selector(leftBtnClick:)
      forControlEvents:UIControlEventTouchUpInside];
  iDrawingBoardView.pickedImage = self.iInitImage;
  [iDrawingBoardView viewJustLoaded];
  CGSize size = CGSizeMake(iDrawingBoardView.frame.size.width, iDrawingBoardView.frame.size.height);
 
  iSCrollView.contentSize = size;
//  [self initBottomView];
  
  if(!iCanEdit)
  {
    iDrawingBoardView.userInteractionEnabled = NO;
  }
  else
  {
     [self addRightBtn];
      [self addRevokeBtn];
      iSCrollView.scrollEnabled = NO;
    [iSCrollView removeFromSuperview];
    iDrawingBoardView.frame = iSCrollView.frame;
    [self.view addSubview:iDrawingBoardView];
    [iDrawingBoardView viewJustLoaded];
  }
  
  iDrawingBoardView.delagate = iDrawingBoardDelegate;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
  
}

- (void)initBottomView
{
  
  if(iCanEdit)
  {
    CGRect frame = iBottomView.frame;
    CGFloat intervalBetweenTowBtn = 20.0f;
    UIImage *normalImage = [UIImage imageNamed:WA_HANDWRITE_TWOWORDSBTNNORMALBD];
    UIImage *touchImage = [UIImage imageNamed:WA_HANDWRITE_TWOWORDSTOUCHBD];
    frame.origin.y = (frame.size.height - normalImage.size.height)/2;
    frame.origin.x = iBottomView.frame.size.width/2 - intervalBetweenTowBtn/2 - normalImage.size.width;
    frame.size.height = normalImage.size.height;
    frame.size.width = normalImage.size.width;
  
    UIButton *revokeBtn = [[UIButton alloc] initWithFrame:frame];
    [revokeBtn setBackgroundImage:normalImage forState:UIControlStateNormal];
    [revokeBtn setBackgroundImage:touchImage forState:UIControlStateHighlighted];
    [revokeBtn addTarget:iHandWriteController
              action:@selector(revokeBtnClick:)
        forControlEvents:UIControlEventTouchUpInside];
  
    NSString *revokeBtntitle = NSLocalizedStringFromTable(@"revoke", @"btarget_task", nil);
    [revokeBtn setTitle:revokeBtntitle forState:UIControlStateNormal];
    [iBottomView addSubview:revokeBtn];

  
  
    frame.origin.x = iBottomView.frame.size.width/2 + intervalBetweenTowBtn/2;

    UIButton *saveBtn = [[UIButton alloc] initWithFrame:frame];
    [saveBtn setBackgroundImage:normalImage forState:UIControlStateNormal];
    [saveBtn setBackgroundImage:touchImage forState:UIControlStateHighlighted ];
    [saveBtn addTarget:iHandWriteController
                action:@selector(saveBtnClick:)
      forControlEvents:UIControlEventTouchUpInside];
  
    NSString *saveTitle = NSLocalizedStringFromTable(@"save", @"btarget_task", nil);
    [saveBtn setTitle:saveTitle forState:UIControlStateNormal];
    [iBottomView addSubview:saveBtn];
  

    UIImage *bdImage = [UIImage imageNamed:WA_HANDWRITE_TOOLBAR_BD];
    [iBottomView setBackgroundColor:[UIColor colorWithPatternImage:bdImage]];
 
  }
  else
  {
    [iBottomView setHidden:YES];
    CGRect frame = iSCrollView.frame ;
    frame.size.height = frame.size.height + 44.0f;
    iSCrollView.frame = frame;
  }
  
  
}

@end
