#import "WASudokuMenuViewController.h"

@implementation CWASudokuMenuViewController
@synthesize iMenuItems;

#pragma mark - Memory Management



#pragma mark - View lifecycle

- (void)loadView
{
	CWAMenuView *menuView = [[CWAMenuView alloc] init];
	menuView.iMenuDelegate = self;
	self.view = menuView;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


#pragma mark - WAMenuViewDelegate Methods

- (NSUInteger)menuViewNumberOfItems:(id)menuView {
	NSAssert([self iMenuItems], @"You must set menuItems before attempting to load.");
	return iMenuItems.count;
}

- (CWAMenuItem *)menuView:(CWAMenuView *)menuView itemForIndex:(NSUInteger)index {
	NSAssert([self iMenuItems], @"You must set menuItems before attempting to load.");
	return [iMenuItems objectAtIndex:index];
}



@end
