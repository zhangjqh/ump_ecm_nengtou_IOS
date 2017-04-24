#import "WALauncherItem.h"
#import "WACustomBadge.h"
#import "WAUFTool.h"

@interface CWALauncherItem()

@property (nonatomic,readwrite,retain) UIButton *iCloseButton;
@property (nonatomic, retain) CWACustomBadge *iBadge;
@property (nonatomic, retain) NSDictionary *iOterInfoDic;


@end

@implementation CWALauncherItem


@synthesize iDelegate;
@synthesize iTitle;
@synthesize iImage;
@synthesize iCloseButton;
@synthesize iBadge ;
@synthesize iOterInfoDic;
#pragma mark - Lifecycle

static int const widthOfImageView = 32.0f;
static int const heightOfImageView = 32.0f;

- (id)initWithTitle:(NSString *)aTitle
          WithImage:(UIImage *)aImage
      WithDeletable:(BOOL)aDeletable
   WithOtherInfoDic:(NSDictionary *)aOtherInfoDic
{
  self = [self initWithTitle:aTitle image:aImage deletable:aDeletable];
  if(self)
  {
    self.iOterInfoDic = aOtherInfoDic;
  }
  return self;
}

-(id)initWithTitle:(NSString *)aTitle
             image:(UIImage *)aImage
         deletable:(BOOL)aDeletable;
{
  if(self = [super init])
  {
    iDragging = NO;
    iDeletable = aDeletable;
  
    self.iTitle = aTitle;
    self.iImage = aImage;
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 0, 0)];
    self.iCloseButton = btn;

  }
	return self;
}


#pragma mark - Layout

-(void)layoutItem
{
	if(!self.iImage)
		return;
	
	for(id subview in [self subviews]) 
		[subview removeFromSuperview];
	
  UIImage *image = self.iImage;
 
	UIImageView *itemImage = [[UIImageView alloc] initWithImage:image];
	CGFloat itemImageX = 24.0f;
	CGFloat itemImageY = 18.0f;
	itemImage.frame = CGRectMake(itemImageX, itemImageY, widthOfImageView, heightOfImageView);
	[self addSubview:itemImage];
  CGFloat itemImageWidth = itemImage.bounds.size.width;

  if(self.iBadge)
  {
    self.iBadge.frame = CGRectMake((itemImageX + itemImageWidth) - (self.iBadge.bounds.size.width - 6),
                                      itemImageY-6, self.iBadge.bounds.size.width, self.iBadge.bounds.size.height);
    [self addSubview:self.iBadge];
  }
	
	if(iDeletable)
	{
		self.iCloseButton.frame = CGRectMake(itemImageX-10, itemImageY-10, 30, 30);
		[self.iCloseButton setImage:[UIImage imageNamed:@"home_menu_badge_del"]
                       forState:UIControlStateNormal];
		self.iCloseButton.backgroundColor = [UIColor clearColor];
		[self.iCloseButton addTarget:self
                          action:@selector(closeItem:)
                forControlEvents:UIControlEventTouchUpInside];
		[self addSubview:self.iCloseButton];
	}
	
	CGFloat itemLabelY = itemImageY + itemImage.bounds.size.height;
	CGFloat itemLabelHeight = self.bounds.size.height - itemLabelY;
    
  if (iTitleBoundToBottom)
  {
    itemLabelHeight = 24;
    itemLabelY = (self.bounds.size.height + 6) - itemLabelHeight;
  }
	
	UILabel *itemLabel = [[UILabel alloc] initWithFrame:CGRectMake(6, itemLabelY, self.bounds.size.width-12, itemLabelHeight)];
	itemLabel.backgroundColor = [UIColor clearColor];
	itemLabel.font = [UIFont fontWithName:@"HiraKakuProN-W3" size:12.0];
	itemLabel.textColor = WACOLOR(31, 31, 31);
	itemLabel.textAlignment = NSTextAlignmentCenter;
	itemLabel.lineBreakMode = NSLineBreakByTruncatingTail;
	itemLabel.text = self.iTitle;
	itemLabel.numberOfLines = 1;
    [self addSubview:itemLabel];

}

#pragma mark - Touch

-(void)closeItem:(id)sender
{
	[UIView animateWithDuration:0.1 
						  delay:0 
						options:UIViewAnimationOptionCurveEaseIn
                   animations:^
          {
						 self.alpha = 0;
						 self.transform = CGAffineTransformMakeRotation(0.5);
					 }
					 completion:nil];
	
  if(self.iDelegate && [self.iDelegate respondsToSelector:@selector(didDeleteItem:)])
  {
    [[self iDelegate] didDeleteItem:self];
  }
}

- (void)touchesBegan:(NSSet*)touches
           withEvent:(UIEvent *)event
{
	[super touchesBegan:touches withEvent:event];
	[[self nextResponder] touchesBegan:touches withEvent:event];
}

- (void)touchesMoved:(NSSet*)touches withEvent:(UIEvent *)event 
{
	[super touchesMoved:touches withEvent:event];
	[[self nextResponder] touchesMoved:touches withEvent:event];
}

- (void)touchesEnded:(NSSet*)touches withEvent:(UIEvent *)event 
{
	[super touchesEnded:touches withEvent:event];
	[[self nextResponder] touchesEnded:touches withEvent:event];
}

#pragma mark - Setters and Getters

-(void)setFrame:(CGRect)frame
{
	[super setFrame:frame];
}

-(void)setDragging:(BOOL)flag
{
	if(iDragging == flag)
		return;
	
	iDragging = flag;
	
	[UIView animateWithDuration:0.1
						  delay:0 
						options:UIViewAnimationOptionCurveEaseIn 
					 animations:^
          {
						 if(iDragging)
            {
							 self.transform = CGAffineTransformMakeRotation(0.5);
							 self.alpha = 0.7;
						 }
						 else
            {
							 self.transform = CGAffineTransformIdentity;
							 self.alpha = 1;
						 }
					 }
					 completion:nil];
}

-(BOOL)dragging
{
	return iDragging;
}

-(BOOL)deletable
{
	return iDeletable;
}

-(BOOL)titleBoundToBottom
{
  return iTitleBoundToBottom;
}

-(void)setTitleBoundToBottom:(BOOL)bind
{
  iTitleBoundToBottom = bind;
  [self layoutItem];
}

-(NSString *)badgeText
{
  return self.iBadge.iBadgeText;
}

-(void)setBadgeText:(NSString *)text
{
  if (text && [text length] > 0)
  {
    self.iBadge = [CWACustomBadge customBadgeWithString:text];
  }
  else
  {
    self.iBadge = nil;
  }
  [self layoutItem];
}

-(void)setCustomBadge:(CWACustomBadge *)customBadge
{
  self.iBadge = customBadge;
  [self layoutItem];
}

@end
