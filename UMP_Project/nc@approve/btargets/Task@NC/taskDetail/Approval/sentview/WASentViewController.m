

#import "WASentViewController.h"
#import "WATitleAndAddBtnView.h"
#import "WAIosVersionAdaptor.h"
#import <QuartzCore/QuartzCore.h>


@implementation CWASentViewController

@synthesize iPickerNC63TextFieldCell;

static NSString *const WA_TASKCENTER_ADDBTNIMAGENAME = @"cell_ic_plus.png";

- (id)initWithNibName:(NSString *)nibNameOrNil
           WithBundle:(NSBundle *)nibBundleOrNil
       WithSentViewVO:(CWASentViewVO *)aSentViewVO
         WithDelegate:(id <MWASentViewController>)aDelegate
{
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if (self)
  {
    iSentController = [[CWASentController alloc] init];
    iSentController.iSentViewVO = aSentViewVO;
    iSentController.iDelegate = aDelegate;
    iSentController.iSentViewController = self;
  }
  return self;
}

- (void)viewDidLoad
{
  int maxWidth = [[UIScreen mainScreen] applicationFrame].size.width;
  [super viewDidLoad];
  NSString *title = NSLocalizedStringFromTable(@"sendTo", @"btarget_task", nil);
  UIView *headerView = [CWAIosVersionAdaptor adaptTableViewGroupSectionHeaderWithTitle:title];
  UIButton *addButton = [UIButton buttonWithType:UIButtonTypeCustom];
  [addButton setTintColor:WA_TASK_COLOR_101_165_255];
  [addButton setFrame:CGRectMake(maxWidth -50.00f , -6.50f, 40, 40)];
  [addButton setBackgroundImage:[UIImage imageNamed:@"task_btn_add.png"] forState:UIControlStateNormal];
  [addButton addTarget:iSentController
                                            action:@selector(showPnsList:)
                                  forControlEvents:UIControlEventTouchUpInside];

  [headerView setFrame:CGRectMake(0.00f, 69.00f, maxWidth, 50.0f)];
  [headerView addSubview:addButton];
  [self.view addSubview:headerView];
	[self initNav];
	
	CGRect rect = CGRectMake(0.00f, 100.00f, maxWidth, 96.0f);
	iPickerNC63TextFieldCell = [[CWAPickerNC63TextFieldCell alloc] initWithFrame:rect WithPromptText:@"抄送人："
                                                             WithAddButtonFalg:NO] ;
	iPickerNC63TextFieldCell.frame = rect;
	iPickerNC63TextFieldCell.iPickerNC63TextFieldCellDelegate = self;
  
  iPickerNC63TextFieldCell.layer.cornerRadius = 6;
//  [iPickerNC63TextFieldCell.iAddButton addTarget:iSentController
//                                          action:@selector(showPnsList:)
//                                forControlEvents:UIControlEventTouchUpInside];
  
#ifdef NO_BAR_BACK_BTN_TITLE
  
  NSString *cancle = NSLocalizedStringFromTable(@"cancel", @"btarget_task", nil);
  [iLeftBtn setTitle:cancle
            forState:UIControlStateNormal];
  
  [iLeftBtn setImage:nil
            forState:UIControlStateNormal];
  
  [iLeftBtn setBackgroundImage:[UIImage imageNamed:@"nav_two.png"]
                      forState:UIControlStateNormal];
  
  [iLeftBtn setBackgroundImage:[UIImage imageNamed:@"nav_two_touch.png"]
                      forState:UIControlStateHighlighted];
  
  [iRightBtn setBackgroundImage:[UIImage imageNamed:@"nav_two.png"]
                       forState:UIControlStateNormal];
  
  [iRightBtn setBackgroundImage:[UIImage imageNamed:@"nav_two_touch.png"]
                       forState:UIControlStateHighlighted];
#endif
  
  
  
  for(int i = 0 ; i  < [iSentController.iSentViewVO.iSenters count]; i++)
  {
    NSObject *object = [iSentController.iSentViewVO.iSenters objectAtIndex:i];
    [iPickerNC63TextFieldCell addALinkManWith:object];
  }
  
  if([iSentController.iSentViewVO.iSenters count] > 0)
  {
    [iPickerNC63TextFieldCell reSetFrame];
  }
  NSString *selectCC = NSLocalizedStringFromTable(@"selectCC", @"btarget_task", nil);
  [iPickerNC63TextFieldCell settPlaceHolder:selectCC];
  
	[self.view addSubview:iPickerNC63TextFieldCell];
  
  
  
  
  UIColor *color = nil;
  
  color = [[UIColor alloc] initWithRed:240.0/255.0
                                 green:240.0/255.0
                                  blue:240.0/255.0
                                 alpha:1];
  [iPickerNC63TextFieldCell setBackgroundColor:[UIColor whiteColor]];
  
  [self.view setBackgroundColor:color];
  if(WA_CURENT_OS_V >= 7.0f)
  {
    UIView *iStatusView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, maxWidth, 20)];
    [iStatusView setBackgroundColor:WA_TASK_COLOR_253];
    [self.view addSubview:iStatusView];
  }
  
  [iLeftBtn addTarget:iSentController
							 action:@selector(leftBtnClick:)
		 forControlEvents:UIControlEventTouchUpInside];
  
  NSString *save = NSLocalizedStringFromTable(@"save", @"btarget_task", nil);
  [iRightBtn setTitle:save forState:UIControlStateNormal];
  [iRightBtn addTarget:iSentController action:@selector(rightBtnClick:) forControlEvents:UIControlEventTouchUpInside];
  
    //增加手势
  UITapGestureRecognizer* singleRecognizer = [[UITapGestureRecognizer alloc]init];
  [singleRecognizer addTarget:self action:@selector(keyboardHide:)];
  
  [self.view addGestureRecognizer:singleRecognizer];
  
}
  //键盘收回
-(void)keyboardHide:(UITapGestureRecognizer*)tap
{
  [self.view endEditing:YES];
}

- (void)delPickerCellSuccess:(id)representedObject  withSender:(id)sender
{
  [iPickerNC63TextFieldCell reSetFrame];
}

- (void)initNav
{
  iNavBar.topItem.title =  NSLocalizedStringFromTable(@"send", @"btarget_task", nil);
  if ([iNavBar respondsToSelector:@selector(setBackgroundImage:forBarMetrics:)])
	{
    [iNavBar setBackgroundImage:[UIImage imageNamed:WA_NEW_TASK_NAV_BG]
                  forBarMetrics:UIBarMetricsDefault];
	}
  [CWAIosVersionAdaptor adaptWithNavBar:iNavBar];
  [CWAIosVersionAdaptor adaptWithRightNavBtn:iRightBtn];
  [CWAIosVersionAdaptor adaptWithRightNavBtn:iLeftBtn];
  
  
  NSString *cancle = NSLocalizedStringFromTable(@"cancel", @"btarget_task", nil);
  [iLeftBtn setTitle:cancle forState:UIControlStateNormal];
  
}



@end
