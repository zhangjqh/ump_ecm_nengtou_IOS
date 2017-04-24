#import "WAAccordionViewCell.h"
#import <QuartzCore/QuartzCore.h>

@implementation CWAAccordionViewCell
@synthesize iCellType, expanded;
@synthesize iDirectoryAccessoryImageView;

- (void) setType:(CWAAccordionViewCellType)newType
{
	iCellType = newType;
	if (iCellType == CWATableViewCellTypeFile )
  {
		iDirectoryAccessoryImageView.image = nil;
  }
}

- (id) initWithReuseIdentifier:(NSString *)identifier
{
	if (self = [super initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identifier])
  {
		
		iDirectoryAccessoryImageView = [[UIImageView alloc] init];
		iDirectoryAccessoryImageView.contentMode = UIViewContentModeCenter;
		[self addSubview:iDirectoryAccessoryImageView];
		
		self.textLabel.textColor = [UIColor blackColor];
		self.detailTextLabel.textColor= [UIColor grayColor];
		
		iCellType = CWATableViewCellTypeFile;
		expanded = NO;
	}
	return self;
}

- (void) layoutSubviews
{
	[super layoutSubviews];
	float editIndentation = self.editing ? 30 : 0;
	float height = self.frame.size.height;
	float indentation = self.indentationWidth*self.indentationLevel;
	[iDirectoryAccessoryImageView setFrame:CGRectMake(indentation + editIndentation, 0, height, height)];
	[self.imageView setFrame:CGRectMake(indentation + height, 0, height, height)];
	
	[self.textLabel setFrame:CGRectMake(indentation + 2*height + 5 , height*0.1 , 
										self.frame.size.width - 2*height - indentation - 5, height*0.5)];
	[self.detailTextLabel setFrame:CGRectMake(indentation + 2*height + 5, height*0.6,  
											  self.frame.size.width - 2*height - indentation - 5, height*0.3)];
	
}


- (void) setExpanded:(BOOL)flag
{
	if (expanded != flag)
  {
		expanded = flag;
		CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"transform"];
		[ani setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
		[ani setDuration:0.2];
		[ani setRepeatCount:1.0];
		[ani setAutoreverses:NO]; 
		[ani setDelegate:self];
		
		if (expanded == YES)
    {
			CATransform3D newTransform = CATransform3DRotate(self.iDirectoryAccessoryImageView.layer.transform, M_PI/2, 0, 0, 1.0);
			[ani setToValue:[NSValue valueWithCATransform3D:newTransform]];
			[self.iDirectoryAccessoryImageView.layer addAnimation:ani forKey:@"expandingTransform"];
			
		}
    else
    {
			CATransform3D newTransform = CATransform3DRotate(self.iDirectoryAccessoryImageView.layer.transform, -M_PI/2, 0, 0, 1.0);
			[ani setToValue:[NSValue valueWithCATransform3D:newTransform]];
			[self.iDirectoryAccessoryImageView.layer addAnimation:ani forKey:@"collapsingTransform"];
		}
	}
}

- (void)animationDidStop:(CAAnimation *)ani finished:(BOOL)flag
{
	CATransform3D newTransform = [[(CABasicAnimation *)ani toValue] CATransform3DValue];
	[self.iDirectoryAccessoryImageView.layer setTransform:newTransform];
}
@end
