#import "WAHandWriteController.h"
#import "WAHandWriteViewController.h"

@implementation CWAHandWriteController

@synthesize iHandWriteViewController;


- (void)leftBtnClick:(id)sender
{
  [iHandWriteViewController.navigationController popViewControllerAnimated:YES];
}

- (void)revokeBtnClick:(id)sender
{
  [iHandWriteViewController.iDrawingBoardView  undo];
}


- (void)saveBtnClick:(id)sender
{
  [iHandWriteViewController.iDrawingBoardView savePic];
  [iHandWriteViewController.navigationController popViewControllerAnimated:YES];
}

@end
