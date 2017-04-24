#import "WAMemoController.h"
#import "WAMemoViewController.h"

@implementation CWAMemoController

@synthesize iMemoViewController;
@synthesize iMemoControllerDelegate;

- (void)LeftBtnClick:(id)sender
{
  [iMemoViewController.navigationController popViewControllerAnimated:YES];
}

- (void)RightBtnClick:(id)sender
{
    if([iMemoControllerDelegate respondsToSelector:@selector(saveMemo:)])
    {
      [iMemoControllerDelegate performSelector:@selector(saveMemo:)
                                    withObject:[iMemoViewController getMemo]];
    }
    [iMemoViewController.navigationController popViewControllerAnimated:YES];
}
@end
