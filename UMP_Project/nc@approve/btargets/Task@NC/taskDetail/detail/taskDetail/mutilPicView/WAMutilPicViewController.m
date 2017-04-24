
#import "WAMutilPicViewController.h"
#import <UMIOSControls/GTMBase64.h>
#import "WAUFTool.h"
#import "WAIosVersionAdaptor.h"

#define WA_MSGPREVIEW_DESCRIPTIONTEXT_HEIGHT 70
@implementation CWAMutilPicViewController


static NSString *MutilPicView_NAV_BD_IMAGE_IOS7 = @"nav.png";

@synthesize iID;
@synthesize iServiceCode;
@synthesize iTaskID;
@synthesize iSCrollView;

- (id)initWithNibName:(NSString *)nibNameOrNil
               bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
      iMutilPicController = [[CWAMutilPicController alloc] init];
      iMutilPicController.iMutilPicViewController = self;
    }
    return self;
}


- (void)showFirstPicView:(CWAFirstPicViewVO *)aFirstPicViewVO
{
  iTopLabel.hidden = NO;
  iBtmLabel.hidden = NO;
  iImageView.hidden = NO;
  iSCrollView.hidden = NO;
  
  CGRect mainFrame = [[UIScreen mainScreen] bounds];//屏幕位置
  CGRect topViewFrame = CGRectMake(0, iTopLabel.frame.size.height+17, mainFrame.size.width, 40);
  iTopView.hidden = NO;
  iTopView.frame = topViewFrame;
  CGRect scrollViewFrame = CGRectMake(0, iTopLabel.frame.size.height+topViewFrame.size.height+17, mainFrame.size.width, mainFrame.size.height-iTopLabel.frame.size.height-topViewFrame.size.height-60);
  iSCrollView.frame=scrollViewFrame;
  CGRect btmLabelFrame = CGRectMake(0, scrollViewFrame.size.height+scrollViewFrame.origin.y, mainFrame.size.width, 60);
  iBtmLabel.frame=btmLabelFrame;
  NSData *data = [GTMBase64 decodeString:aFirstPicViewVO.iFirstpic];
  iImageView.image = [UIImage imageWithData:data];
  iTopLabel.text = aFirstPicViewVO.iTitle;
    iTopView.backgroundColor = [UIColor grayColor];
//iBtmLabel.text = aFirstPicViewVO.iFirstpicdesc;
//  float height = [self heightForTextView:iBtmLabel
//                                WithText:aFirstPicViewVO.iFirstpicdesc];
//  
//  if (height < WA_MSGPREVIEW_DESCRIPTIONTEXT_HEIGHT)
//  {
//    CGRect textViewRect = iBtmLabel.frame;
//    
//    float changH = height - textViewRect.size.height;
//    CGRect backViewRect = iBtmLabel.frame;
//    backViewRect.size.height += changH ;
//    backViewRect.origin.y -= changH;
//    iBtmLabel.frame = backViewRect;
//   }
//   else
//   {
//     CGRect textViewRect = iBtmLabel.frame;
//     float changH = WA_MSGPREVIEW_DESCRIPTIONTEXT_HEIGHT - textViewRect.size.height;
//     textViewRect.size.height = WA_MSGPREVIEW_DESCRIPTIONTEXT_HEIGHT;
//     iBtmLabel.frame = textViewRect;
//     CGRect backViewRect = iBtmLabel.frame;
//     backViewRect.size.height = iBtmLabel.frame.size.height + 18;
//     backViewRect.origin.y -= changH;
//     iBtmLabel.frame = backViewRect;
//   }
  
}


- (void)showOtherPicView:(CWAOherPicViewVO *)aOherPicViewVO
{
  NSData *data = [GTMBase64 decodeString:aOherPicViewVO.iPic];
  iImageView.image = [UIImage imageWithData:data];
//  iBtmLabel.text = aOherPicViewVO.iPicname;
////  iTopLabel.text = aFirstPicViewVO.iTitle;
//  float height = [self heightForTextView:iBtmLabel
//                                WithText:aOherPicViewVO.iPicname];
//  if (height < WA_MSGPREVIEW_DESCRIPTIONTEXT_HEIGHT)
//    {
//    CGRect textViewRect = iBtmLabel.frame;
//    
//    
//    float changH = height - textViewRect.size.height;
//    
//    
//    CGRect backViewRect = iBtmLabel.frame;
//    backViewRect.size.height += changH ;
//    backViewRect.origin.y -= changH;
//    iBtmLabel.frame = backViewRect;
//    }
//  else
//    {
//    CGRect textViewRect = iBtmLabel.frame;
//    float changH = WA_MSGPREVIEW_DESCRIPTIONTEXT_HEIGHT - textViewRect.size.height;
//    textViewRect.size.height = WA_MSGPREVIEW_DESCRIPTIONTEXT_HEIGHT;
//    iBtmLabel.frame = textViewRect;
//    CGRect backViewRect = iBtmLabel.frame;
//    backViewRect.size.height = iBtmLabel.frame.size.height + 18;
//    backViewRect.origin.y -= changH;
//    iBtmLabel.frame = backViewRect;
//    }
//  
}

- (void)viewDidLoad
{
  [super viewDidLoad];
  [self initNav];
  UISwipeGestureRecognizer *recognizer;
  recognizer = [[UISwipeGestureRecognizer alloc]initWithTarget:iMutilPicController action:@selector(handleSwipeFrom:)];
  [recognizer setDirection:(UISwipeGestureRecognizerDirectionRight)];
  [iSCrollView addGestureRecognizer:recognizer];
  recognizer = [[UISwipeGestureRecognizer alloc]initWithTarget:iMutilPicController action:@selector(handleSwipeFrom:)];
  [recognizer setDirection:(UISwipeGestureRecognizerDirectionLeft)];
  [iSCrollView addGestureRecognizer:recognizer];

  [iLeftBtn addTarget:iMutilPicController
               action:@selector(leftBtnClick:)
     forControlEvents:UIControlEventTouchUpInside];
  
  NSString *sizeType = nil;
  if(IS_WIDESCREEN)
  {
    sizeType = @"5";
  }
  else
  {
    sizeType = @"4";
  }
  [iMutilPicController getFirstPicWithTaskID:self.iTaskID WithID:self.iID
                                WithSizetype:sizeType
                                   WithBlock:^(CWAFirstPicViewVO *aFirstPicViewVO)
  {
    [self showFirstPicView:aFirstPicViewVO];
  }
                             WithServiceCode:self.iServiceCode];
}


//计算文本框高度
- (float) heightForTextView: (UITextView *)tetView
                   WithText: (NSString *) strText
{
  float fPadding = 16.0; // 8.0px x 2
  CGSize constraint = CGSizeMake(tetView.contentSize.width - fPadding, CGFLOAT_MAX);
  CGSize size = [strText sizeWithFont: tetView.font constrainedToSize:constraint lineBreakMode:NSLineBreakByWordWrapping];
  float fHeight = size.height + 16.0;
  return fHeight;
}

- (void)initNav
{
  iNavBar.topItem.title =  NSLocalizedStringFromTable(@"mainbody", @"btarget_task", nil);
  if ([iNavBar respondsToSelector:@selector(setBackgroundImage:forBarMetrics:)])
  {
      [iNavBar setBackgroundImage:[UIImage imageNamed:MutilPicView_NAV_BD_IMAGE_IOS7]
                    forBarMetrics:UIBarMetricsDefault];
      [CWAIosVersionAdaptor adaptWithLeftNavBtn:iLeftBtn];
  }
  
   [CWAIosVersionAdaptor adaptWithNavBar:iNavBar];
}

@end
