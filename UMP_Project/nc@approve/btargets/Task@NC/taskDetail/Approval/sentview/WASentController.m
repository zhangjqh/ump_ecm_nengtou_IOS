

#import "WASentController.h"
#import "WASentViewController.h"
#import "AppDelegate.h"


@implementation CWASentController

@synthesize iSentViewController;
@synthesize iSentViewVO;
@synthesize iDelegate;


- (void)leftBtnClick:(id)sender
{
  NSString *adopOperator = NSLocalizedStringFromTable(@"adopOperator", @"btarget_task", nil);
  NSString *cancel = NSLocalizedStringFromTable(@"cancel", @"btarget_task", nil);
  NSString *ok = NSLocalizedStringFromTable(@"ok", @"btarget_task", nil);
  
  UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:nil
                                                      message:adopOperator
                                                     delegate:self
                                            cancelButtonTitle:cancel                                            otherButtonTitles:ok,nil];
  [alertView show];
}

- (void)alertView:(UIAlertView *)alertView
clickedButtonAtIndex:(NSInteger)buttonIndex
{
  if(buttonIndex == 1)
  {
    [iSentViewController.navigationController popViewControllerAnimated:YES];
  }
 
}


- (void)showPnsList:(id)sender
{
  NSString *actionTye = nil;
  actionTye = @"getUserlist";
  
  
  //初始化人员列表界面
  CWALinkManViewController *aLinkManViewController = [[CWALinkManViewController alloc]
                                                          initWithNibName:@"WALinkManViewController"
                                                      bundle:nil];
//                                                          isSingle:NO];
  
  
  //设置人员列表界面和设置searbar的隐藏情况
  NSString *nextNavigationTitle = NSLocalizedStringFromTable(@"sendTo", @"btarget_task", nil);
  aLinkManViewController.iIsHiddenSearchBar = NO;
  
  
  aLinkManViewController.iNavigationTitle = nextNavigationTitle;
  aLinkManViewController.iDelegate = self;
  aLinkManViewController.iServiceCode = iSentViewVO.iServiceCode;
  aLinkManViewController.isMUtilSelect = YES;
  
  //进入人员列表
  [aLinkManViewController setRequestLinkManActionType:actionTye andTaskID:iSentViewVO.iTaskID];

  [iSentViewController.navigationController pushViewController:aLinkManViewController animated:YES];
}

-(void)addALinkManWithArray:(id)aArray
{
    for (id linkman in aArray)
    {
        [self addALinkManWith:linkman];
    }
    [iSentViewController.iPickerNC63TextFieldCell  reSetFrame];
}

- (void)addALinkManWith:(id)aLinkMan
{
    if ([aLinkMan isKindOfClass:[NSMutableArray class]])
    {
        for (CWALinkManVO *operator in aLinkMan)
        {
            [iSentViewController.iPickerNC63TextFieldCell addALinkManWith:operator];
            
        }
    }
    else
    {
        [iSentViewController.iPickerNC63TextFieldCell addALinkManWith:aLinkMan];
    }
  [iSentViewController.iPickerNC63TextFieldCell  reSetFrame];
}

- (void)rightBtnClick:(id)sender
{
  
  NSArray *array = [iSentViewController.iPickerNC63TextFieldCell getAllSelectedRepresentedObject];
  if([iDelegate respondsToSelector:@selector(savedPnsList:)])
  {
    [iDelegate performSelector:@selector(savedPnsList:) withObject:array];
  }
  [iSentViewController.navigationController popViewControllerAnimated:YES];
}

@end
