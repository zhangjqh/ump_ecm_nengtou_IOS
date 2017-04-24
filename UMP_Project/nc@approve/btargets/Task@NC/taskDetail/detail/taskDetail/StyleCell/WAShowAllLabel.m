 //
//  WAShowAllLabel.m
//  SSTASK120521A
//
//  Created by 勇超 胡 on 14-5-16.
//
//

#import "WAShowAllLabel.h"
#import "WAShowDetailTextView.h"

@implementation CWAShowAllLabel
{
	BOOL isCalledTapTwice;
}


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
		{
			self.userInteractionEnabled = YES;
			UITapGestureRecognizer *iTapTwice = [[UITapGestureRecognizer  alloc] initWithTarget:self
																																						action:@selector(tapTwice:)];
			iTapTwice.numberOfTapsRequired = 2;
			iTapTwice.numberOfTouchesRequired = 1;
			[self addGestureRecognizer:iTapTwice];
	
		
		
			UITapGestureRecognizer *iTapOne = [[UITapGestureRecognizer  alloc] initWithTarget:self
																																						action:@selector(tapOne:)];
			iTapOne.numberOfTapsRequired = 1;
			iTapOne.numberOfTouchesRequired = 1;
			[iTapOne requireGestureRecognizerToFail:iTapTwice];
			[self addGestureRecognizer:iTapOne];
    }
    return self;
}

- (void)awakeFromNib
{
	[super awakeFromNib];
	self.userInteractionEnabled = YES;

	
	UITapGestureRecognizer *iTapTwice = [[UITapGestureRecognizer  alloc] initWithTarget:self
																																								 action:@selector(tapTwice:)];
	iTapTwice.numberOfTapsRequired = 2;
	iTapTwice.delaysTouchesEnded = YES;
	iTapTwice.delegate = self;
	iTapTwice.numberOfTouchesRequired = 1;
	[self addGestureRecognizer:iTapTwice];

}

- (void)tapTwice:(id)sender
{
	CGRect frame = [[UIScreen mainScreen ] bounds];
	CGRect showFrame = CGRectInset(frame, 16.0f, 16.0f);
	CWAShowDetailTextView *showDetailTextView = [[CWAShowDetailTextView alloc] initWithText:self.text withShowFrame:showFrame withFrame:frame];
	[showDetailTextView show];
}



@end
