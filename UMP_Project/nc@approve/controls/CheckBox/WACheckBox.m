
#import "WACheckBox.h"


@implementation CWACheckBox
@synthesize isChecked;

@synthesize iCheckedImage;
@synthesize iUncheckedImage;

- (id)initWithFrame:(CGRect)theFrame
withCheckedImageName:(NSString *)aCheckedImageName
withUnCheckedImageName:(NSString *)aUnCheckedImageName
       withChecked:(BOOL)aChecked
{

	if(self = [super initWithFrame:theFrame])
	{
    iCheckedImage = [[UIImage alloc] initWithCGImage:[UIImage imageNamed:aCheckedImageName].CGImage];
    iUncheckedImage = [[UIImage alloc] initWithCGImage:[UIImage imageNamed:aUnCheckedImageName].CGImage];
    isChecked = aChecked;
		if(isChecked)
		{
			[self setImage:iCheckedImage forState:UIControlStateNormal];
		}else {
			[self setImage:iUncheckedImage forState:UIControlStateNormal];
		}		
		[self addTarget:self action:@selector(checkItOut) forControlEvents:UIControlEventTouchUpInside];
	}
	
	return self;
}

- (void)checkItOut
{
	if(isChecked)
	{
		isChecked = NO;
		[self setImage:iUncheckedImage forState:UIControlStateNormal];
	}else {
		isChecked = YES;
		[self setImage:iCheckedImage forState:UIControlStateNormal];
	}
}


- (void)setIsChecked:(BOOL)aChecked
{
	if(isChecked != aChecked)
	{
		isChecked = aChecked;
	}
	if(isChecked)
	{
		[self setImage:iCheckedImage forState:UIControlStateNormal];
		
	}else {
		[self setImage:iUncheckedImage forState:UIControlStateNormal];
		
	}
}

- (void)awakeFromNib
{
  [super awakeFromNib];
  [self addTarget:self
           action:@selector(checkItOut)
 forControlEvents:UIControlEventTouchUpInside];
}

@end
