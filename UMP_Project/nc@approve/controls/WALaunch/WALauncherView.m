#import "WALauncherView.h"
#import <UMIOSControls/GTMBase64.h>
#import "WALauncherBnsHandler.h"
#import "WAUFTool.h"

struct NItemLocation
{
	NSInteger page; 
	NSInteger sindex; 
};
typedef struct NItemLocation NItemLocation;

static const int pControllHeight = 60;
static const int pShortcutHeight = 80;
static const int maxPageCount = 6;
static const int maxShortcutCount = 4;

/* iPhone */
static const int maxItemsPageCount = 12;

static const int portraitItemWidth = 80;
static const int portraitItemHeight = 80;
static const int portraitColumnCount = 4;
static const int portraitRowCount = 3;
static const CGFloat portraitItemXStart = 0;
static const CGFloat portraitItemYStart = 0;
static const CGFloat portraitXPadding = 0;
static const CGFloat portraitYPadding = 0;

static const int landscapeItemWidth = 96;
static const int landscapeItemHeight = 96;
static const int landscapeColumnCount = 5;
static const int landscapeRowCount = 2;
static const CGFloat landscapeItemXStart = 0;
static const CGFloat landscapeItemYStart = 0;
static const CGFloat landscapeXPadding = 0;
static const CGFloat landscapeYPadding = 0;

/* iPad */
static const int iPadMaxItemsPageCount = 20;

static const int iPadPortraitItemWidth = 122;
static const int iPadPortraitItemHeight = 122;
static const int iPadPortraitColumnCount = 4;
static const int iPadPortraitRowCount = 5;
static const CGFloat iPadPortraitItemXStart = 0;
static const CGFloat iPadPortraitItemYStart = 0;
static const CGFloat iPadPortraitXPadding = 0;
static const CGFloat iPadPortraitYPadding = 0;

static const int iPadLandscapeItemWidth = 112;
static const int iPadLandscapeItemHeight = 112;
static const int iPadLandscapeColumnCount = 5;
static const int iPadLandscapeRowCount = 4;
static const CGFloat iPadLandscapeItemXStart = 58;
static const CGFloat iPadLandscapeItemYStart = 30;
static const CGFloat iPadLandscapeXPadding = 80;
static const CGFloat iPadLandscapeYPadding = 30;

@interface CWALauncherView ()
{
  CWALauncherPageControl *iLauncherPageControl;
  CGRect startPageControlFrameDrag;
  CGRect startShortcutAreaFrameDrag;
  CGRect startsudoKuBdAreaFrameDrag;
  CWASudoKuBDView *sudoKuBDView ;
  BOOL isInit;
}

-(void)setupCurrentViewLayoutSettings;

-(void)layoutItems;
-(void)beginEditing;
-(void)animateItems;
-(void)organizePages;
-(NItemLocation)itemLocation;
-(BOOL)itemMovable:(CWALauncherItem *)itemToSearch;
-(void)saveToUserDefaults:(id)object key:(NSString *)key;
-(UIDeviceOrientation)currentLayoutOrientation;
@property (nonatomic, retain) NSTimer *itemHoldTimer;
@property (nonatomic, retain) NSTimer *movePagesTimer;
@property (nonatomic, retain) CWALauncherItem *draggingItem;
@property (nonatomic, retain) CWALauncherItem *iTouchDownedDraggingItem;
@end

@implementation CWALauncherView

@synthesize editingAllowed, numberOfImmovableItems;
@synthesize delegate ;
@synthesize iPagesScrollView ;
@synthesize iPages;
@synthesize itemHoldTimer ;
@synthesize movePagesTimer ;
@synthesize draggingItem ;
@synthesize iShortcutItems;
@synthesize iShortcutAreaView;
@synthesize iPortraitColumnCount;
@synthesize iPortraitRowCount;
@synthesize isNeedSudoKuBd;
@synthesize iTouchDownedDraggingItem;

#pragma mark 初始化函数
- (id)initWithFrame:(CGRect)frame
   withNeedSudoKuBd:(BOOL)aIsNeedSudoKuBd
{
  if ((self = [super initWithFrame:frame]))
	{
		dragging = NO;
		editing = NO;
		iItemsAdded = NO;
    editingAllowed = YES;
    numberOfImmovableItems = -1;
    isNeedSudoKuBd = aIsNeedSudoKuBd;
		[self setupCurrentViewLayoutSettings];
		
    CWALauncherScrollView *launcherScrollView = [self getCWALauncherScrollView];
		[self setIPagesScrollView:launcherScrollView];
  
		self.iPagesScrollView.delegate = self;
		self.iPagesScrollView.pagingEnabled = YES;
		self.iPagesScrollView.showsHorizontalScrollIndicator = NO;
		self.iPagesScrollView.showsVerticalScrollIndicator = NO;
		self.iPagesScrollView.alwaysBounceHorizontal = YES;
		self.iPagesScrollView.scrollsToTop = NO;
		self.iPagesScrollView.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
		self.iPagesScrollView.delaysContentTouches = YES;
		self.iPagesScrollView.multipleTouchEnabled = NO;
		[self addSubview:self.iPagesScrollView];


    iLauncherPageControl = [self getCWALauncherPageControl];
		iLauncherPageControl.numberOfPages = 1;
		iLauncherPageControl.currentPage = 0;
    iLauncherPageControl.maxNumberOfPages = maxPageCount;
		iLauncherPageControl.backgroundColor = [UIColor clearColor];
		[iLauncherPageControl addTarget:self action:@selector(pageChanged) forControlEvents:UIControlEventValueChanged];
		[self.iPagesScrollView addSubview:iLauncherPageControl];
  
    startPageControlFrameDrag = iLauncherPageControl.frame;
  

  
  
    UIView *shortcutAreaView = [self getShortcutAreaView];
    startShortcutAreaFrameDrag = shortcutAreaView.frame;
    if(shortcutAreaView)
    {
      [self.iPagesScrollView addSubview:shortcutAreaView];
    }
  
  
    if(isNeedSudoKuBd)
    {
      CWASudoKuBDView *shortCutSudoKuBDView =  [[CWASudoKuBDView alloc] initWithFrame: [self getShortcutAreaView].bounds];
    
    
      shortCutSudoKuBDView.iRow = 1;
      shortCutSudoKuBDView.iCount = maxShortcutCount;
      shortCutSudoKuBDView.isNeedTopLine = YES;
      shortCutSudoKuBDView.isNeedBottomTopLine = NO;
      [shortcutAreaView insertSubview:shortCutSudoKuBDView atIndex:0];
    }

    [self addObserver:self forKeyPath:@"frame" options:0 context:nil];
  }
  return self;
}

//获取滚动视图位置信息，子类可以重写
- (CGRect)getLauncherScrollViewFrame
{
  return CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
}

#pragma mark 构造滚动视图
- (CWALauncherScrollView *)getCWALauncherScrollView
{
  CWALauncherScrollView *launcherScrollView = [[CWALauncherScrollView alloc] initWithFrame:[self getLauncherScrollViewFrame]];
  return launcherScrollView;
}

#pragma mark 获取快捷操作区域位置
- (CGRect)getShortcutAreaFrame
{
  return CGRectMake(0, self.frame.size.height - pShortcutHeight, self.frame.size.width, pShortcutHeight);
}

#pragma mark 构建快捷操作区域
- (UIView *)getShortcutAreaView
{
  if(!iShortcutAreaView)
  {
    CGRect rect = [self getShortcutAreaFrame];
    //不是空区域的话，构建view
    if(!CGRectEqualToRect(rect,CGRectZero))
    {
      iShortcutAreaView = [[UIView alloc] initWithFrame:[self getShortcutAreaFrame]];
    }
  }
  return iShortcutAreaView;
  
}

//获取页码控件位置信息，子类可以重写
- (CGRect)getLauncherPageControlFrame
{
  return CGRectMake(0, self.frame.size.height - pControllHeight-pShortcutHeight, self.frame.size.width, pControllHeight);
}

#pragma mark 构建页码控件
- (CWALauncherPageControl *)getCWALauncherPageControl
{
  CWALauncherPageControl *launcherPageControl = [[CWALauncherPageControl alloc] initWithFrame:[self getLauncherPageControlFrame]];
  launcherPageControl.activePageColor = WACOLOR(0x68,0x8f,0xdf);
  launcherPageControl.inactivePageColor = WACOLOR(0xc0,0xc0,0xc0);
  return launcherPageControl;
}


-(void)viewDidAppear:(BOOL)animated
{
  [self layoutItems];
}


#pragma mark - Setters

- (void)setPages:(NSMutableArray *)aPages
{
    [self setPages:aPages animated:NO];
  }

- (void)setIShortcutItems:(NSMutableArray *)aIShortcutItems
{
  isInit = YES;
  if (iShortcutItems != aIShortcutItems)
  {
    [iShortcutItems removeAllObjects];
    iShortcutItems = nil;
  }
  iShortcutItems = aIShortcutItems;
  [self layoutShortcutAreaWithItems:iShortcutItems];
  isInit = NO;
}

- (void)layoutShortcutAreaWithItems:(NSMutableArray *)aIShortcutItems
{
	NSMutableArray *items =  [[NSMutableArray alloc] initWithArray:aIShortcutItems];
	[aIShortcutItems removeAllObjects];
	
	
  for (int i = 0 ; i < [items count]; i++)
  {
    CWALauncherItem *item = [items objectAtIndex:i];
    CGFloat x = minX;
    CGFloat y = minY;
    CGRect prevFrame = CGRectMake(x, y, itemWidth, itemHeight);
    item.frame = prevFrame;
    item.iCloseButton.hidden = editing ? NO : YES;
    item.iDelegate = self;
    if(isInit)
    {
      [item layoutItem];
      [item addTarget:self
               action:@selector(itemTouchedUpInside:)
     forControlEvents:UIControlEventTouchUpInside];
    
      [item addTarget:self
               action:@selector(itemTouchedUpOutside:)
     forControlEvents:UIControlEventTouchUpOutside];
    
      [item addTarget:self
               action:@selector(itemTouchedDown:)
     forControlEvents:UIControlEventTouchDown];
    
      [item addTarget:self
               action:@selector(itemTouchCancelled:)
     forControlEvents:UIControlEventTouchCancel];
    }
    
    [self addToShortAreaWithLauncherItem:item];
  }
}


-(void)setPages:(NSMutableArray *)aPages animated:(BOOL)animated
{
  if (iPages != aPages)
  {
    if (iPages)
    {
      for (NSArray *page in iPages)
      {
        for (UIView *item in page)
        {
          [item removeFromSuperview];
        }
      }
    }
        
    iPages = aPages ;
    iItemsAdded = NO;
    [self layoutLauncherAnimated:animated];
  }
}

-(void)setPages:(NSMutableArray *)aPages numberOfImmovableItems:(NSInteger)items
{
  [self setPages:aPages numberOfImmovableItems:items animated:YES];
}

-(void)setPages:(NSMutableArray *)aPages
numberOfImmovableItems:(NSInteger)items
       animated:(BOOL)animated
{
  [self setPages:aPages animated:animated];
  [self setNumberOfImmovableItems:items];
}

#pragma mark - View Orientation

- (void)setCurrentOrientation:(UIInterfaceOrientation)newOrientation
{
  if ((UIDeviceOrientation)newOrientation != currentOrientation &&
        newOrientation != UIDeviceOrientationUnknown && 
        newOrientation != UIDeviceOrientationFaceUp && 
        newOrientation != UIDeviceOrientationFaceDown)
  {
    currentOrientation = (UIDeviceOrientation)newOrientation;
  }
}

- (UIDeviceOrientation)currentLayoutOrientation
{
  UIDeviceOrientation deviceOrientation = [UIDevice currentDevice].orientation;
  [self setCurrentOrientation:(UIInterfaceOrientation)deviceOrientation];
  return currentOrientation;
}

#pragma mark - ScrollView and PageControl Management

- (void)pageChanged
{
	self.iPagesScrollView.contentOffset = CGPointMake(iLauncherPageControl.currentPage * self.iPagesScrollView.frame.size.width, 0);

}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
  
  NSLog(@"scrollViewDidScroll");
  CGPoint point=scrollView.contentOffset;
  CGRect frame = startPageControlFrameDrag;
  frame.origin.x += point.x;
  iLauncherPageControl.frame = frame;
  
  CGRect frmaOfAreaView = startShortcutAreaFrameDrag;
   frmaOfAreaView.origin.x += point.x;
  iShortcutAreaView.frame = frmaOfAreaView;

  
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView 
{
	iLauncherPageControl.currentPage = floor((self.iPagesScrollView.contentOffset.x - self.iPagesScrollView.frame.size.width / 2) /
                                         self.iPagesScrollView.frame.size.width) + 1;
}

- (void)updateFrames
{
  self.iPagesScrollView.frame = [self getLauncherScrollViewFrame];
	iLauncherPageControl.frame = [self getLauncherPageControlFrame];
	[iLauncherPageControl setNeedsDisplay];
}

-(void)didChangeValueForKey:(NSString *)key
{
  if ([key isEqualToString:@"frame"])
  {
    [self updateFrames];
  }
}

#pragma mark - Layout Settings

-(int)maxItemsPerPage
{
  if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
  {
    return iPadMaxItemsPageCount;
  }
  
  if(iPortraitRowCount && iPortraitColumnCount)
  {
    return iPortraitRowCount * iPortraitColumnCount;
  }
  else
  {
    return maxItemsPageCount;
  }
}

-(int)maxPages
{
  return maxPageCount;
}

-(void)setupCurrentViewLayoutSettings
{
  if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
  {
    if (UIDeviceOrientationIsLandscape([self currentLayoutOrientation]))
    {
      minX = iPadLandscapeItemXStart;
      minY = iPadLandscapeItemYStart;
      paddingX = iPadLandscapeXPadding;
      paddingY = iPadLandscapeYPadding;
      columnCount = iPadLandscapeColumnCount;
      rowCount = iPadLandscapeRowCount;
      itemWidth = iPadLandscapeItemWidth;
      itemHeight = iPadLandscapeItemHeight;
    }
    else
    {
      minX = iPadPortraitItemXStart;
      minY = iPadPortraitItemYStart;
      paddingX = iPadPortraitXPadding;
      paddingY = iPadPortraitYPadding;
      columnCount = iPadPortraitColumnCount;
      rowCount = iPadPortraitRowCount;
      itemWidth = iPadPortraitItemWidth;
      itemHeight = iPadPortraitItemHeight;
    }
  }
  else
  {
    if (UIDeviceOrientationIsLandscape([self currentLayoutOrientation]))
    {
      minX = landscapeItemXStart;
      minY = landscapeItemYStart;
      paddingX = landscapeXPadding;
      paddingY = landscapeYPadding;
      columnCount = landscapeColumnCount;
      rowCount = landscapeRowCount;
      itemWidth = landscapeItemWidth;
      itemHeight = landscapeItemHeight;
    }
    else
    {
      minX = portraitItemXStart;
      minY = portraitItemYStart;
      paddingX = portraitXPadding;
      paddingY = portraitYPadding;
    
      if(iPortraitColumnCount > 0)
      {
        columnCount = portraitColumnCount;
      }
      else
      {
        columnCount = portraitColumnCount;
      }
    
      if(iPortraitRowCount > 0 )
      {
        rowCount = iPortraitRowCount;
      }
      else
      {
        rowCount = portraitRowCount;
      }
      itemWidth = portraitItemWidth;
      itemHeight = portraitItemHeight;
    }
  }
}

#pragma mark -  刷新界面
- (void)reFreshUI
{
  iLauncherPageControl.currentPage = 0;
  [self layoutLauncher];
}

-(void)layoutLauncher
{
	[self layoutLauncherAnimated:NO];
}

-(void)layoutLauncherAnimated:(BOOL)animated
{
	//重新设置frame
  [self updateFrames];
	
	//重新布局items
  [UIView animateWithDuration:animated ? 0.3 : 0
                   animations:^
  {
    [self layoutItems];
  }];
  
	//重新设置页码
	[self pageChanged];
}


#pragma mark 布局当前的items
- (void)layoutItems
{
	CGFloat pageWidth = self.iPagesScrollView.frame.size.width;
	
  [self setupCurrentViewLayoutSettings];
	for (NSMutableArray *page in self.iPages)
	{
    CGFloat x = minX;
    CGFloat y = minY;
		int itemsCount = 1;
		for (CWALauncherItem *item in page)
		{
			//已经添加过，只改变位置，不构造item
			if(iItemsAdded)
			{
				CGRect prevFrame = CGRectMake(x, y, itemWidth, itemHeight);
                
				if(!item.dragging)
				{
					item.transform = CGAffineTransformIdentity;
					if(item.frame.origin.x != x || item.frame.origin.y != y)
						item.frame = prevFrame;
				}
			}
			else
			{
				item.frame = CGRectMake(x, y, itemWidth, itemHeight);
				item.iDelegate = self;
				[item layoutItem];
			
				//添加事件处理
				[item addTarget:self
                 action:@selector(itemTouchedUpInside:)
       forControlEvents:UIControlEventTouchUpInside];
      
				[item addTarget:self
                 action:@selector(itemTouchedUpOutside:)
       forControlEvents:UIControlEventTouchUpOutside];
      
				[item addTarget:self
                 action:@selector(itemTouchedDown:)
       forControlEvents:UIControlEventTouchDown];
      
        [item addTarget:self
                 action:@selector(itemTouchCancelled:)
       forControlEvents:UIControlEventTouchCancel];
			
			
      
				[self.iPagesScrollView addSubview:item];
			}
    
      //根据状态修改是否显示删除功能的按钮
			item.iCloseButton.hidden = editing ? NO : YES;
			x += itemWidth + paddingX;
			
			if ( itemsCount % columnCount == 0)
			{
				y += itemHeight + paddingY;
				x = minX;
			}
			
			itemsCount++;
		}
		
		minX += pageWidth;
	}
	
	//设置页码
	iLauncherPageControl.numberOfPages = self.iPages.count;
	self.iPagesScrollView.contentSize = CGSizeMake(self.iPagesScrollView.frame.size.width * self.iPages.count,
                                                  rowCount * itemHeight);
  //处理九宫格背景
  if(sudoKuBDView)
  {
    [sudoKuBDView removeFromSuperview];
    sudoKuBDView = nil;
  }
  if(isNeedSudoKuBd && !sudoKuBDView)
  {
    
    int height = rowCount *portraitItemHeight;
    int width = 320.f*self.iPages.count;
    sudoKuBDView =  [[CWASudoKuBDView alloc] initWithFrame:  CGRectMake(0.00f, 0.00f, width, height)];
    
    sudoKuBDView.iRow = rowCount;
    sudoKuBDView.iCount = columnCount*self.iPages.count;
    sudoKuBDView.isNeedTopLine = NO;
    sudoKuBDView.isNeedBottomTopLine = YES;
    [self.iPagesScrollView insertSubview:sudoKuBDView atIndex:0];
    startsudoKuBdAreaFrameDrag = sudoKuBDView.frame;
  }
  

	
	iItemsAdded = YES;
}

#pragma mark 移除所有的item
- (void)removeAllItems
{
  for(UIView *view in  [self.iPagesScrollView subviews])
  {
    if([view isKindOfClass:[CWALauncherItem class]])
    {
      CWALauncherItem *item = (CWALauncherItem *)view;
      [item removeFromSuperview];
    }
  }
  
  for(UIView *view in  [ self.iShortcutAreaView subviews])
  {
    if([view isKindOfClass:[CWALauncherItem class]])
    {
      CWALauncherItem *item = (CWALauncherItem *)view;
      [item removeFromSuperview];
    }
  }
  [self.iPages removeAllObjects];
  [self.iShortcutItems removeAllObjects];
  iItemsAdded = NO;
}

#pragma mark 重新组织页码
-(void)organizePages
{
	int currentPageIndex = 0;
	for(NSMutableArray *page in self.iPages)
	{
  
  
    int imaxItemsPageCount = [[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad ? iPadMaxItemsPageCount : [self maxItemsPerPage];
		if(page.count > imaxItemsPageCount)
		{
			NSInteger nextPageIndex = currentPageIndex+1;
			NSMutableArray *nextPage = [self.iPages objectAtIndex:nextPageIndex];
			if(nextPage)
			{
				CWALauncherItem *moveItem = [page lastObject];
				[page removeObject:moveItem];
				[nextPage insertObject:moveItem atIndex:0];
                moveItem = nil;
			}
			else
			{
				[self.iPages addObject:[NSMutableArray array]];
				nextPage = [self.iPages lastObject];
				CWALauncherItem *moveItem = [page lastObject];
				[page removeObject:moveItem];
				[nextPage addObject:moveItem];
                moveItem = nil;
			}
		}
		currentPageIndex++;
	}
}

#pragma mark 添加item到快捷操作区域
- (void) addToShortAreaWithLauncherItem:(CWALauncherItem *)aItem
{
  if(!iShortcutItems)
  {
    iShortcutItems = [[NSMutableArray alloc] initWithCapacity:1];
  }

   int oldCountShortcutItems = [iShortcutItems count];
  
  
    CGRect frame = CGRectZero;

    CGPoint point = [self  getShortcutAreaView].center;
    CGFloat x = oldCountShortcutItems *aItem.frame.size.width;
    aItem.center = point;
    frame = aItem.frame;
    frame.origin.x =  x;
    frame.origin.y = 0;

  frame.size.width = aItem.frame.size.width;
  frame.size.height = aItem.frame.size.height;
  [aItem removeFromSuperview];
  aItem.frame = frame;
  
  if(![iShortcutItems containsObject:aItem])
  {
    [iShortcutItems addObject:aItem];
  }
  
  for(NSMutableArray *page in self.iPages)
  {
    if([page containsObject:aItem])
    {
      [page removeObject:aItem];
      break;
    }
  }
 
 
  if([self  getShortcutAreaView] && ![[[self  getShortcutAreaView] subviews] containsObject:aItem])
  {
    [[self  getShortcutAreaView] addSubview:aItem];
  }
}


#pragma mark 添加item到非快捷操作区域
- (void) addToWorkAreaWithLauncherItem:(CWALauncherItem *)aItem
{
  //从快捷区域中删除item
  [self removeFromShortAreaWithItem:aItem];
  
}

- (void)removeFromShortAreaWithItem:(CWALauncherItem *)aItem
{
  if([iShortcutItems containsObject:aItem])
  {
    [iShortcutItems removeObject:aItem];
    [aItem removeFromSuperview];
  }
  
}

#pragma mark  item点击事件处理
- (void)itemTouchedUpInside:(CWALauncherItem *)item
{
	
	if(editing)
	{
  
  
   if(isPressLong)
    {
      //单击取消掉编辑状态
      self.draggingItem = (CWALauncherItem*)item;
      [self.draggingItem setDragging:NO];
      dragging = NO;
      [self.itemHoldTimer invalidate];
      self.itemHoldTimer = nil;
      [self endEditing];
    }
    else
    {
      [self.draggingItem setDragging:NO];
      if(dragging)
      {
        CGPoint center = self.draggingItem.center;
        CGRect frame = [self getShortcutAreaView].frame;
        CGRect bounds = [self getShortcutAreaView].bounds;
        //判断挪动后，界面是否在快捷区域内，如果在的话放入快捷区域中,最多支持4个放入到快捷键中
        if(CGRectContainsPoint(frame, center) && [iShortcutItems count] < maxShortcutCount && ![iShortcutItems containsObject:self.draggingItem])
        {
          [self addToShortAreaWithLauncherItem:self.draggingItem];
        }
        else if(!CGRectContainsPoint(bounds, center) &&[iShortcutItems containsObject:self.draggingItem])
        {
          [self addToWorkAreaWithLauncherItem:self.draggingItem];
        }
      }
  
      dragging = NO;
      self.draggingItem = nil;
      self.iPagesScrollView.scrollEnabled = YES;
      [UIView animateWithDuration:0.3
                     animations:
     ^{
        [self layoutItems];
     }];
    }
	}
	else 
	{
		if(self.iTouchDownedDraggingItem != item)
		{
			return;
		}
    dragging = NO;
    if(!isPressLong && !dragging)
    {
      [self.movePagesTimer invalidate];
      self.movePagesTimer = nil;
      [self.itemHoldTimer invalidate];
      self.itemHoldTimer = nil;
      [[self delegate] launcherViewItemSelected:item];
      self.iPagesScrollView.scrollEnabled = YES;
    }
  
	}
	self.iTouchDownedDraggingItem = nil;
}

- (void)itemTouchedUpOutside:(CWALauncherItem *)item
{
	[self.movePagesTimer invalidate];
	self.movePagesTimer = nil;
	[self.itemHoldTimer invalidate];
	self.itemHoldTimer = nil;
	dragging = NO;
	[self.draggingItem setDragging:NO];
	self.draggingItem = nil;
	self.iPagesScrollView.scrollEnabled = YES;
	[UIView animateWithDuration:0.3
                   animations:
   ^{
      [self layoutItems];
   }];
}

//item按下动作
-(void)itemTouchedDown:(CWALauncherItem *)item
{
	if (editing)
	{
    if (!self.draggingItem && [self itemMovable:item])
		{
			self.draggingItem = (CWALauncherItem*)item;
			[self.draggingItem setDragging:YES];
			dragging = YES;
      [self.itemHoldTimer invalidate];
      self.itemHoldTimer = nil;
    
      self.itemHoldTimer = [NSTimer scheduledTimerWithTimeInterval:1
                                                            target:self
                                                          selector:@selector(itemPressLongHoldTimer:)
                                                          userInfo:item
                                                           repeats:NO];
		}
  
	}
  
  //开始编辑
	else if (editingAllowed)
	{

		self.iTouchDownedDraggingItem = item;
		[self.itemHoldTimer invalidate];
		self.itemHoldTimer = nil;
        
		self.itemHoldTimer = [NSTimer scheduledTimerWithTimeInterval:1
                                                          target:self
                                                        selector:@selector(itemHoldTimer:)
                                                        userInfo:item
                                                         repeats:NO];
	}
}

-(void)itemTouchCancelled:(CWALauncherItem *)item
{
  if (editing)
  {
    [self itemTouchedUpInside:item];
  }
  else
  {
    [self itemTouchedUpOutside:item];
  }
}


#pragma mark 响应长按，点击图标长达1秒时触发此事件,结束编辑
- (void)itemPressLongHoldTimer:(NSTimer *)timer
{
  isPressLong = YES;
  editing = NO;
  dragging = NO;
  [self.draggingItem setSelected:NO];
  [self.draggingItem setHighlighted:NO];
  [self.draggingItem setDragging:NO];
  [self endEditing];
}

//开始编辑
-(void)itemHoldTimer:(NSTimer *)timer
{
	self.iTouchDownedDraggingItem = nil;
	self.itemHoldTimer = nil;
    
	[self beginEditing];	
	
  CWALauncherItem *heldItem = (CWALauncherItem*)timer.userInfo;
  if ([self itemMovable:heldItem])
  {
    self.draggingItem = heldItem;
    [self.draggingItem setSelected:NO];
    [self.draggingItem setHighlighted:NO];
    [self.draggingItem setDragging:YES];
        
//    [self.iPagesScrollView addSubview:self.draggingItem];
    dragging = YES;
  }
  self.iPagesScrollView.scrollEnabled = NO;
}

- (int)calIndexWithLauncherItem:(CWALauncherItem *)aLauncherItem
{
  CGFloat dragItemX = aLauncherItem.center.x - self.iPagesScrollView.contentOffset.x;
  CGFloat dragItemY = aLauncherItem.center.y;
  CGFloat distanceWidth = itemWidth + paddingX;
  CGFloat distanceHeight = itemHeight + paddingY;
  
  NSInteger dragItemColumn = floor(dragItemX/distanceWidth); // item width
  NSInteger dragItemRow = floor(dragItemY/distanceHeight); // item height
  NSInteger dragIndex = (dragItemRow * columnCount) + dragItemColumn;
  return dragIndex;
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
  [self.itemHoldTimer invalidate];
  self.itemHoldTimer = nil;
	[super touchesMoved:touches withEvent:event];
	
	if(dragging) 
	{
		for (UITouch* touch in touches) 
		{
			CGPoint location = [touch locationInView:self];
      CGRect frame = [self getShortcutAreaView].frame;
      //修改拖拽的图标到新得位置，如果是在快捷区域内，计算方法将不同

      self.draggingItem.center = CGPointMake(location.x + self.iPagesScrollView.contentOffset.x, location.y);

      [self setupCurrentViewLayoutSettings];
    
      NSInteger currentPageIndex =0;
    
    
    
      //根据拖拽后的item的位置计算它应该在数组中的索引
      NSInteger dragIndex = [self calIndexWithLauncherItem:self.draggingItem];
    
      //如果之前是在快捷区域里面，将取不到拖拽界面所在的页数（即page）和它所在页数的索引（即sindex），
      //故需要单独作为一个分支
    
    CGPoint center = self.draggingItem.center;
    
    //如果放到了非快捷区域中,并且以前在快捷区域中
    if(!CGRectContainsPoint(frame, center) && [iShortcutItems containsObject:self.draggingItem])
    {
      //判断挪动后，界面是否在快捷区域内，如果在的话放入快捷区域中,最多支持4个放入到快捷键中
    
      if(self.draggingItem)
      {
        currentPageIndex = floor(self.iPagesScrollView.contentOffset.x/self.iPagesScrollView.frame.size.width);
        NSMutableArray *itemPage = [self.iPages objectAtIndex:currentPageIndex];
        if (dragIndex < [itemPage count])
        {
 
          [itemPage insertObject:self.draggingItem atIndex:dragIndex];
          CWALauncherItem *item = self.draggingItem ;
          [iShortcutItems removeObject:item];
  
          [itemPage addObject:item];
         [self.iPagesScrollView addSubview:item];
          [UIView animateWithDuration:0.3
                         animations:
         ^{
           [self layoutItems];
         }];
        }
        else
        {
          CWALauncherItem *item = self.draggingItem;
          [iShortcutItems removeObject:item];
        
          [itemPage addObject:item];
          [self.iPagesScrollView addSubview:item];
          [UIView animateWithDuration:0.3
                         animations:
         ^{
            [self layoutItems];
          }];

        }
      
      
      
      }
    }
    else
    {
      NItemLocation sItemLocation = [self itemLocation];
      NSInteger page = sItemLocation.page;
      NSInteger sindex = sItemLocation.sindex;
      currentPageIndex = floor(self.iPagesScrollView.contentOffset.x/self.iPagesScrollView.frame.size.width);
      
      //当前页包含的所有图标数组
      NSMutableArray *itemPage = [self.iPages objectAtIndex:page];
      if(currentPageIndex != page && dragIndex >= [itemPage count])
      {
        dragIndex = 0;
      }
    
      if(sindex != dragIndex || (dragIndex == 0 && [itemPage count] == 1 && currentPageIndex != page))
      {
        if (dragIndex < [itemPage count])
        {
          CWALauncherItem *itemToMove = [itemPage objectAtIndex:dragIndex];
          if ([self itemMovable:itemToMove])
          {
            [itemPage removeObjectAtIndex:sindex];
            NSMutableArray *currentPage = [self.iPages objectAtIndex:currentPageIndex];
            if(dragIndex > currentPage.count)
            {
              dragIndex = currentPage.count;
              [currentPage insertObject:self.draggingItem atIndex:dragIndex];
              [self organizePages];
            }
            else
            {
              [currentPage insertObject:self.draggingItem atIndex:dragIndex];
              [self organizePages];
              [UIView animateWithDuration:0.3
                               animations:
                ^{
                   [self layoutItems];
                }];
            }
          }
        }
        else if([iShortcutItems containsObject:self.draggingItem])
        {
          [iShortcutItems removeObject:self.draggingItem];
          [itemPage addObject:self.draggingItem];
          [self organizePages];
         [self.iPagesScrollView addSubview:self.draggingItem];
          [UIView animateWithDuration:0.3
                         animations:
         ^{
            [self layoutItems];
						 [self layoutShortcutAreaWithItems:iShortcutItems];
          }];
        }
        else
        {
          NSLog(@"1212");
        }
      }
      else if([iShortcutItems containsObject:self.draggingItem])
      {
      
      NSLog(@"1111");
        NSMutableArray *itemPage = [self.iPages objectAtIndex:currentPageIndex];
      
        [iShortcutItems removeObject:self.draggingItem];
        [itemPage addObject:self.draggingItem];
        [self organizePages];
        [self.iPagesScrollView addSubview:self.draggingItem];
        [UIView animateWithDuration:0.3
                       animations:
         ^{
           [self layoutItems];
         }];

      }
    }
			
    //Moving Pages
    if(location.x + self.iPagesScrollView.contentOffset.x < self.iPagesScrollView.contentOffset.x + 20)
    {
      if(currentPageIndex > 0)
      {
        if(!self.movePagesTimer)
        {
          [self setMovePagesTimer:[NSTimer scheduledTimerWithTimeInterval:0.5
                                                                   target:self
                                                                 selector:@selector(movePagesTimer:)
                                                                 userInfo:@"left"
                                                                  repeats:NO]];
        }
      }
    }
    else if(location.x + self.iPagesScrollView.contentOffset.x > self.iPagesScrollView.contentOffset.x + self.iPagesScrollView.frame.size.width - 20)
    {
      if(!self.movePagesTimer)
      {
        [self setMovePagesTimer:[NSTimer scheduledTimerWithTimeInterval:0.5
                                                                 target:self
                                                               selector:@selector(movePagesTimer:)
                                                               userInfo:@"right"
                                                                repeats:NO]];
      }
    }
    else
    {
      [self.movePagesTimer invalidate];
      self.movePagesTimer = nil;
    }
  }
 }
}

-(void)movePagesTimer:(NSTimer*)timer
{
	self.movePagesTimer = nil;
	
	if([(NSString*)timer.userInfo isEqualToString:@"right"])
	{	
		CGFloat newX = self.iPagesScrollView.contentOffset.x + self.iPagesScrollView.frame.size.width;
		
		NSInteger currentPageIndex = floor(newX/self.iPagesScrollView.frame.size.width);
		if(currentPageIndex + 1 > self.iPages.count)
		{
			if(self.iPages.count <= maxPageCount)
			{
				[self.iPages addObject:[NSMutableArray array]];
				iLauncherPageControl.numberOfPages = self.iPages.count;
			}
		}
		iLauncherPageControl.currentPage = currentPageIndex;
		
		CGPoint offset = CGPointMake(newX, 0);
        [UIView animateWithDuration:0.3 animations:^{
            [self.iPagesScrollView setContentOffset:offset]; 
            self.draggingItem.frame = CGRectMake(self.draggingItem.frame.origin.x + self.iPagesScrollView.frame.size.width, 
                                                 self.draggingItem.frame.origin.y, 
                                                 self.draggingItem.frame.size.width, 
                                                 self.draggingItem.frame.size.height);
        }];	
	}
	else if([(NSString*)timer.userInfo isEqualToString:@"left"])
	{
		NSInteger currentPageIndex = floor(self.iPagesScrollView.contentOffset.x/self.iPagesScrollView.frame.size.width);
		iLauncherPageControl.currentPage = --currentPageIndex;
		CGFloat newX = self.iPagesScrollView.contentOffset.x - self.iPagesScrollView.frame.size.width;
		CGPoint offset = CGPointMake(newX, 0);
        [UIView animateWithDuration:0.3 animations:^{
            [self.iPagesScrollView setContentOffset:offset];
            self.draggingItem.frame = CGRectMake(self.draggingItem.frame.origin.x - self.iPagesScrollView.frame.size.width, 
                                                 self.draggingItem.frame.origin.y, 
                                                 self.draggingItem.frame.size.width, 
                                                 self.draggingItem.frame.size.height);
        }];
	}
}

-(NItemLocation)itemLocation
{
	NItemLocation i;
	
	int itemPage = 0;
	for (NSMutableArray *page in self.iPages)
	{
		int itemOrder = 0;
		for (CWALauncherItem *item in page)
		{
			if(item == self.draggingItem)
			{
				i.page = itemPage;
				i.sindex = itemOrder;
				return i;
			}
			itemOrder++;
		}
        
		itemPage++;
	}
	i.page = 0;
	i.sindex = 0;
	
	return i;
}

#pragma mark -
#pragma mark Editing Management

-(void)beginEditing
{
	if(editing)
  {
//    [self endEditing];
    return;
    
  }
		
	
	editing = YES;
	
	if(self.iPages.count <= maxPageCount)
	{
		[self.iPages addObject:[NSMutableArray array]];
		iLauncherPageControl.numberOfPages = self.iPages.count;
		self.iPagesScrollView.contentSize = CGSizeMake(self.iPages.count*self.iPagesScrollView.frame.size.width,
                                                      self.iPagesScrollView.frame.size.height);
	}
    
	[self animateItems];
	[[self delegate] launcherViewDidBeginEditing:self];
}

-(void)endEditing
{
  isPressLong = NO;
	editing = NO;
	self.iPagesScrollView.scrollEnabled = YES;
	
	for (int i = 0; i < self.iPages.count; ++i)
	{
		NSArray* itemPage = [self.iPages objectAtIndex:i];
		if(itemPage.count == 0)
		{
			[self.iPages removeObjectAtIndex:i];
			--i;
		}
		else
		{
			for (CWALauncherItem* item in itemPage)
				item.transform = CGAffineTransformIdentity;
		}
	}
  
  for(int i = 0; i < self.iShortcutItems.count; ++i)
  {
    CWALauncherItem* item = (CWALauncherItem *)[self.iShortcutItems objectAtIndex:i];
    item.iCloseButton.hidden = YES;
    item.transform = CGAffineTransformIdentity;
  
  }
	
	iLauncherPageControl.numberOfPages = self.iPages.count;
	self.iPagesScrollView.contentSize = CGSizeMake(self.iPagesScrollView.frame.size.width * self.iPages.count,
                                                  self.iPagesScrollView.frame.size.height);
	
	[self layoutItems];
	[self savePages];
	[[self delegate] launcherViewDidEndEditing:self];
}

-(void)animateItems
{
	static BOOL animatesLeft = NO;
	
	if (editing) 
	{
		CGAffineTransform animateUp = CGAffineTransformMakeRotation(0.05);
		CGAffineTransform animateDown = CGAffineTransformMakeRotation(-0.05);
		
		[UIView beginAnimations:nil context:nil];
		
		NSInteger i = 0;
		NSInteger animatingItems = 0;
		for (NSArray* itemPage in self.iPages)
		{
			for (CWALauncherItem* item in itemPage)
			{
				item.iCloseButton.hidden = !editing;
				if (item != self.draggingItem && [self itemMovable:item]) 
				{
					++animatingItems;
					if (i % 2) 
						item.transform = animatesLeft ? animateDown : animateUp;
					else 
						item.transform = animatesLeft ? animateUp : animateDown;
				}
				++i;
			}
		}
  
    for (CWALauncherItem* item in self.iShortcutItems)
    {
      item.iCloseButton.hidden = !editing;
      if (item != self.draggingItem && [self itemMovable:item])
      {
        ++animatingItems;
        if (i % 2)
          item.transform = animatesLeft ? animateDown : animateUp;
        else
          item.transform = animatesLeft ? animateUp : animateDown;
      }
    }

		
		if (animatingItems >= 1) 
		{
			[UIView setAnimationDuration:0.0001];
			[UIView setAnimationDelegate:self];
			[UIView setAnimationDidStopSelector:@selector(animateItems)];
			animatesLeft = !animatesLeft;
		} 
		else 
		{
			[NSObject cancelPreviousPerformRequestsWithTarget:self];
			[self performSelector:@selector(animateItems) withObject:nil afterDelay:0.01];
		}
		
		[UIView commitAnimations];
	}
}

-(void)didDeleteItem:(id)item
{
	CWALauncherItem *ditem = (CWALauncherItem*)item;
  
  
  if([self.iShortcutItems containsObject:ditem])
  {
    [self.iShortcutItems removeObject:ditem];
    [self layoutShortcutAreaWithItems:iShortcutItems];
  }
  else
  {
    for (NSMutableArray *page in self.iPages)
    {
      int i = 0;
      for (CWALauncherItem *aitem in page)
      {
        if(aitem == ditem)
        {
          if (i < numberOfImmovableItems)
          {
            numberOfImmovableItems--;
          }
          [page removeObjectAtIndex:i];
          [UIView animateWithDuration:0.3
                           animations:^{
                                     [self layoutItems]; 
                                 }];
          return;
        }
        i++;
      }
    }
  }
 
}

-(BOOL)itemMovable:(CWALauncherItem *)itemToSearch
{
  int count = 0;
  for (NSMutableArray *page in self.iPages)
  {
    if ([page containsObject:itemToSearch])
    {
      count = count + (int)[page indexOfObject:itemToSearch];
      if (count >= numberOfImmovableItems)
      {
        break;
      }
        return NO;
    }
    else
    {
      count = count + (int)[page count];
      if (count >= numberOfImmovableItems)
      {
        break;
      }
      if ([page count] < maxItemsPageCount)
      {
        numberOfImmovableItems = [page count];
        break;
      }
    }
  }
  return YES;
}

#pragma mark - myLauncher caching


- (NSDictionary *)chageToDicWithLauncherItem:(CWALauncherItem *)aLauncherItem
{
  NSMutableDictionary *itemToSave = [[NSMutableDictionary alloc] init];
  [itemToSave setObject:aLauncherItem.iTitle?aLauncherItem.iTitle:@"" forKey:@"title"];
  
  NSString *sData = nil;
  if([aLauncherItem.iImage isKindOfClass:[UIImage class]])
  {
    NSData *data;
    if (UIImagePNGRepresentation(aLauncherItem.iImage) == nil)
    {
      data = UIImageJPEGRepresentation(aLauncherItem.iImage, 1);
    }
    else
    {
      data = UIImagePNGRepresentation(aLauncherItem.iImage);
    }
    
    sData= [GTMBase64 stringByEncodingData:data];
  }
  else
  {
    sData = aLauncherItem.iImage;
  }
  
  [itemToSave setObject:sData?sData:@"" forKey:@"image"];
  
  [itemToSave setObject:[NSString stringWithFormat:@"%d", [aLauncherItem deletable]] forKey:@"deletable"];
  
  if(aLauncherItem.iOterInfoDic)
  {
    [itemToSave setObject:[aLauncherItem iOterInfoDic] forKey:@"oterinfodic"];
  }
  [itemToSave setObject:[NSNumber numberWithInt:2] forKey:@"myLauncherViewItemVersion"];
  return itemToSave;
}

-(void)savePages
{

  //保存非快捷操作区域的item
	NSMutableArray *pagesToSave = [[NSMutableArray alloc] init];
	
	for(NSArray *page in self.iPages)
	{
		NSMutableArray *pageToSave = [[NSMutableArray alloc] init];
		
		for(CWALauncherItem *item in page)
		{
      [pageToSave addObject:[self chageToDicWithLauncherItem:item]];
		}
		[pagesToSave addObject:pageToSave];
	}
	
	[self saveToUserDefaults:pagesToSave key:@"myLauncherView"];
  
  //保存快捷操作区域的item
  NSMutableArray *ShortCutAreasToSave = [[NSMutableArray alloc] init];
	
  for(CWALauncherItem *item in iShortcutItems)
  {
    [ShortCutAreasToSave addObject:[self chageToDicWithLauncherItem:item]];
  
  }
	
	[self saveToUserDefaults:ShortCutAreasToSave key:@"shortCutAreasToSave"];
  
  [self saveToUserDefaults:[NSNumber numberWithInteger:numberOfImmovableItems] key:@"myLauncherViewImmovable"];
  
}

-(void)saveToUserDefaults:(id)object key:(NSString *)key
{
  @synchronized(self)
  {
   [CWALauncherBnsHandler saveToUserDefaults:object key:key];
  }
}

@end
