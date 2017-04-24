#import "WAMenuItem.h"

@implementation CWAMenuItem
@synthesize iTitle;
@synthesize iIcon;
@synthesize iTouchIcon;

#pragma mark - Memory Management

- (id)initWithTitle:(NSString *)aTitle
              image:(UIImage *)aImage
{
	self = [super init];
	
	if (self)
  {
		iTitle = [aTitle copy];
        iIcon = aImage;
  }
	
	return self;
}


- (id)initWithTitle:(NSString *)aTitle
              image:(UIImage *)aImage
         touchImage:(UIImage *)aTouchImage;
{
	self = [super init];
	
	if (self)
  {
		iTitle = [aTitle copy];
        iIcon = aImage;
        iTouchIcon = aTouchImage;
	}
	
	return self;
}

@end
