#include "WAMenuItemView.h"
#import <QuartzCore/QuartzCore.h>

@implementation CWAMenuItemView
@synthesize iLabel;
@synthesize iButton;

- (id)init
{
	self = [super init];
	
	if (self)
  {
		NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"WAMenuItemView" owner:self options:nil];
		[self addSubview:[views objectAtIndex:0]];
	}
	
	return self;
}

- (void)addTarget:(id)target
           action:(SEL)action
 forControlEvents:(UIControlEvents)controlEvents
{
	[self.iButton addTarget:target action:action forControlEvents:controlEvents];
}

#pragma mark - Overriden Setters / Getters

- (void)setTag:(NSInteger)aTag
{
	self.iButton.tag = aTag;
}

- (NSInteger)tag
{
	return self.iButton.tag;
}

@end
