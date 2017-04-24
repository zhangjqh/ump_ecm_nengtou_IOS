//
//  WAShowDetailTextView.m
//  SSTASK120521A
//
//  Created by 勇超 胡 on 14-5-16.
//
//

#import "WAShowDetailTextView.h"
#import "WAUFTool.h"

@implementation CWAShowDetailTextView


- (id)initWithText:(NSString *)aText
		 withShowFrame:(CGRect)aShowFrame
				 withFrame:(CGRect)aFrame
{
	self = [super initWithFrame:aFrame];
	if (self)
	{

	  CGRect frame = [[UIScreen mainScreen ] bounds];
		iShowWindow = [[UIWindow alloc] initWithFrame:frame];
		self.backgroundColor = WACOLOR(253.0f, 253.0f, 253.0f);
		iShowWindow.userInteractionEnabled = YES;
		iTextView = [[UITextView alloc] initWithFrame:aShowFrame];
		iTextView.userInteractionEnabled = YES;
		iTextView.textAlignment = NSTextAlignmentCenter;
		iTextView.text = aText;
		[iTextView addObserver:self forKeyPath:@"contentSize" options:NSKeyValueObservingOptionNew context:nil];
		iTextView.textColor = WACOLOR(31.0f, 31.0f, 31.0f);
		iTextView.font = [UIFont fontWithName:@"HelveticaNeue" size:24.0f];
		iTextView.backgroundColor = [UIColor clearColor];
		iTextView.editable = NO;
	
		[self addSubview:iTextView];
		[iShowWindow addSubview:self];
		iShowWindow.windowLevel = UIWindowLevelAlert;
		iShowWindow.backgroundColor = [UIColor whiteColor];
	
		UITapGestureRecognizer *tap =  [[UITapGestureRecognizer alloc] initWithTarget:self
																																					 action:@selector(hidden)];
		
		tap.numberOfTapsRequired = 1;
		tap.numberOfTouchesRequired = 1;
		[iShowWindow addGestureRecognizer:tap];
	}
	return self;
}

- (void)observeValueForKeyPath:(NSString *)keyPath
											ofObject:(id)object
												change:(NSDictionary *)change
											 context:(void *)context
{
	UITextView *mTrasView = object;
	
	CGFloat topCorrect = ([mTrasView bounds].size.height - [mTrasView contentSize].height);
	
	topCorrect = (topCorrect <0.0 ?0.0 : topCorrect);
	
	mTrasView.contentOffset = (CGPoint){.x =0, .y = -topCorrect/2};
	
}

- (void)show
{
	iPreWindow = [UIApplication sharedApplication].keyWindow;
	[iShowWindow makeKeyAndVisible];
}

- (void)hidden
{
	[iPreWindow makeKeyAndVisible];
	iShowWindow.userInteractionEnabled = NO;
    iShowWindow.hidden = YES;
    [iTextView removeObserver:self forKeyPath:@"contentSize"];
	[iTextView removeFromSuperview];
	[self removeFromSuperview];
	[iShowWindow removeFromSuperview];
	
}


@end
