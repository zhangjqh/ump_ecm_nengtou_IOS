#import "WAMenuView.h"
#import "WAMenuItemView.h"

@interface CWAMenuView()
@property (nonatomic, retain) NSMutableArray *iItemViews;
- (void)setupItemViews;
- (void)itemPressed:(id)sender;
@end

@implementation CWAMenuView
@synthesize iMenuStyle;
@synthesize iMenuDelegate;
@synthesize iItemViews;
@synthesize yHeighyOff;
@synthesize iColumnCountPortrait, iColumnCountLandscape, iItemSize;
@synthesize iLastTapDate;
#pragma mark - Memory Management

- (id)init
{
	self = [super init];
	
	if (self)
  {
		[self commonInit];
    self.iLastTapDate = [NSDate date];
	}
	
	return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
  self = [super initWithCoder:aDecoder];
  if (self)
  {
    [self commonInit];
  }
  return self;
}

- (void)commonInit
{
  iItemViews = [[NSMutableArray alloc] init];
  iColumnCountPortrait = 2;
  iColumnCountLandscape = 2;
  iItemSize = CGSizeMake(141, 141);
}


#pragma mark - View Lifecycle

- (void)layoutSubviews
{
	[super layoutSubviews];
	NSUInteger numColumns = self.bounds.size.width > self.bounds.size.height ? self.iColumnCountLandscape : self.iColumnCountPortrait;
	NSUInteger numItems = [self.iMenuDelegate menuViewNumberOfItems:self];
	if (self.iItemViews.count != numItems)
  {
		[self setupItemViews];
	}
	
  
  if(iMenuStyle == EDEFULATSTYLE)
  {
    CGFloat padding = 12;

    NSUInteger numRows = numItems % numColumns == 0 ? (numItems / numColumns) : (numItems / numColumns) + 1;
  
    CGFloat yPadding = 69.0f;
    CGFloat totalHeight = ((self.iItemSize.height + 14) * numRows) +yPadding;
	
    for (int i = 0; i < numItems; i++)
    {
      UIView *item = [self.iItemViews objectAtIndex:i];
      NSUInteger column = i % numColumns;
      NSUInteger row = i / numColumns;
		
      CGFloat xOffset;
      if(i !=0)
      {
        xOffset = (column * (self.iItemSize.width + padding)) + 14;
      }
      else
      {
        xOffset = (column * (self.iItemSize.width + padding)) + padding;
      }
  
      CGFloat yOffset;
      if(row != 0)
      {
        yOffset = (row * (self.iItemSize.height + 14))  +yPadding;
      }
      else
      {
        yOffset = yPadding;
      }
      item.frame = CGRectMake(xOffset, yOffset, self.iItemSize.width, self.iItemSize.height);
    }
    self.contentSize = CGSizeMake(self.bounds.size.width, totalHeight+yHeighyOff);
  }
  else
  {
    CGFloat padding = roundf((self.bounds.size.width - (self.iItemSize.width * numColumns)) / (numColumns + 1));
    NSUInteger numRows = numItems % numColumns == 0 ? (numItems / numColumns) : (numItems / numColumns) + 1;
    CGFloat totalHeight = ((self.iItemSize.height + padding) * numRows) + padding;
	
    // get an even y padding if less than the max number of rows
    CGFloat yPadding = padding;
    if (totalHeight < self.bounds.size.height)
    {
      CGFloat leftoverHeight = self.bounds.size.height - totalHeight;
      CGFloat extraYPadding = roundf(leftoverHeight / (numRows + 1));
      yPadding += extraYPadding;
		
      totalHeight = ((self.iItemSize.height + yPadding) * numRows) + yPadding;
      }
	
    // get an even x padding if we have less than a single row of items
      if (numRows == 1 && numItems < numColumns)
      {
        padding = roundf((self.bounds.size.width - (numItems * self.iItemSize.width)) / (numItems + 1));
      }
	
      for (int i = 0; i < numItems; i++)
      {
        UIView *item = [self.iItemViews objectAtIndex:i];
        NSUInteger column = i % numColumns;
        NSUInteger row = i / numColumns;
		
        CGFloat xOffset = (column * (self.iItemSize.width + padding)) + padding;
        CGFloat yOffset = (row * (self.iItemSize.height + yPadding)) + yPadding;
        item.frame = CGRectMake(xOffset, yOffset, self.iItemSize.width, self.iItemSize.height);
      }
    self.contentSize = CGSizeMake(self.bounds.size.width, totalHeight+yHeighyOff);
  }
  
}


#pragma mark - Local Methods

- (void)setupItemViews
{
	for (UIView *view in self.iItemViews)
  {
		[view removeFromSuperview];
	}
	
	[self.iItemViews removeAllObjects];
	
	// now add the new objects
	NSUInteger numItems = [self.iMenuDelegate menuViewNumberOfItems:self];
	
	for (NSUInteger i = 0; i < numItems; i++)
  {
		CWAMenuItemView *itemView = [[CWAMenuItemView alloc] init];
		CWAMenuItem *menuItem = [self.iMenuDelegate menuView:self itemForIndex:i];
								
		itemView.frame = CGRectMake(0, 0, self.iItemSize.width, self.iItemSize.height);
		itemView.iLabel.text = menuItem.iTitle;
		[itemView.iButton setImage:menuItem.iIcon
                      forState:UIControlStateNormal];
  
    [itemView.iButton setImage:menuItem.iTouchIcon
                      forState:UIControlStateHighlighted];
  
		itemView.tag = i;
		[itemView addTarget:self action:@selector(itemPressed:) forControlEvents:UIControlEventTouchUpInside];
		
		[self.iItemViews addObject:itemView];
		[self addSubview:itemView];
	}
}

- (void)itemPressed:(UIButton *)sender
{
  NSDate *nowDate =[NSDate date];
//防止多手指同时点击不同模块 属性iLastTapDate要设置为atomic原子操作
  double distance =  [nowDate timeIntervalSinceDate:iLastTapDate];
  if (distance > 1.0f) {
    NSParameterAssert(sender);
    [self.iMenuDelegate menuView:self didSelectItemAtIndex:sender.tag];
  }
  self.iLastTapDate = nowDate;
}

@end
