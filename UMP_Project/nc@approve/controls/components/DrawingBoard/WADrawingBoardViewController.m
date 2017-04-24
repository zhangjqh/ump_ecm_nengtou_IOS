//
//  WADrawingBoardViewController.m
//  testInkBrush1
//
//  Created by fan hanning on 13-3-15.
//
//

#import "WADrawingBoardViewController.h"
#import "WADrawingBoardView.h"

@implementation CWADrawingBoardViewController
@synthesize delagate;
//- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//{
//    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
//    if (self) {
//        // Custom initialization
//    }
//    return self;
//}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    CWADrawingBoardView* dbView = (CWADrawingBoardView*)self.view;
    dbView.delagate = self.delagate;
	[dbView viewJustLoaded];
  
	dbView.owner = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction) cancel
{
    [self.delagate cancelViewController];
}
@end
