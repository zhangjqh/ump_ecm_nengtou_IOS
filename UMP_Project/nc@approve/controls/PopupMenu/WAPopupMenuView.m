/*!
 @header 	WAPopupMenuView.m
 @abstract	弹出菜单VIEW
 @discussion
 @author	chenrh1
 @copyright	yonyou
 @version	1.0 2013-11-23 11:53:17 Creation
 */
#import "WAPopupMenuView.h"
#import "WAUFTool.h"
const CGFloat  ARROWSIZE = 10.f;
@implementation CWAPopupMenuView
@synthesize iContentView;
@synthesize iMenuItems;
@synthesize iBaseView;

@synthesize iArrowDirection;
@synthesize iArrowPosition;


#pragma mark init
- (id)init
{
  self = [super initWithFrame:CGRectZero];
  if(self) {
    
    self.backgroundColor = [UIColor clearColor];
    self.opaque = YES;
    self.alpha = 0;
    iMenuItems = [[NSArray alloc]init];
    
    self.layer.shadowOpacity = 0.5;
    self.layer.shadowOffset = CGSizeMake(2, 2);
    self.layer.shadowRadius = 2;
  }
  
  return self;
}


#pragma mark 菜单尖角的大小
- (CGFloat)getArrowsize
{
  CGFloat arrowsize =  [CWAPopupMenu sharedMenu].iArrowSize;
  if (!arrowsize)
  {
    arrowsize = ARROWSIZE;
  }
  return arrowsize;
}

#pragma mark 设置菜单的frame
- (void) setupFrameInView:(UIView *)view
                 fromRect:(CGRect)fromRect
{
  
  CGFloat arrowsize = [self getArrowsize];
  // 菜单的大小
  const CGSize contentSize = iContentView.frame.size;
  //当前view的宽度
  const CGFloat outerWidth = view.bounds.size.width;
  //当前view的高度
  const CGFloat outerHeight = view.bounds.size.height;
  //X0 = 按钮的X
  const CGFloat rectX0 = fromRect.origin.x;
  //X1 = 按钮的X + 按钮的宽度 按钮右边缘的横坐标
  const CGFloat rectX1 = fromRect.origin.x + fromRect.size.width;
  // XM = 按钮的X + 按钮的宽度的一半 按钮中间位置的横坐标
  const CGFloat rectXM = fromRect.origin.x + fromRect.size.width * 0.5f;
  
  const CGFloat rectY0 = fromRect.origin.y;
  const CGFloat rectY1 = fromRect.origin.y + fromRect.size.height;
  const CGFloat rectYM = fromRect.origin.y + fromRect.size.height * 0.5f;;
  
  const CGFloat widthPlusArrow = contentSize.width + arrowsize;
  const CGFloat heightPlusArrow = contentSize.height + arrowsize;
  //菜单一半宽
  const CGFloat widthHalf = contentSize.width * 0.5f;
  const CGFloat heightHalf = contentSize.height * 0.5f;
  
  const CGFloat kMargin = 5.f;
  //高度：从屏幕的0开始
  //如果 菜单下边缘的高度 < 按钮下边缘的高度
  //那么  尖角朝上 菜单的横坐标 =
  
  
  if (heightPlusArrow < (outerHeight - rectY1))
  {
    
    iArrowDirection = PopMenuViewArrowDirectionUp;
    CGPoint point = (CGPoint)
    {
      
      rectXM - widthHalf,
      rectY1
    };
    
    if (point.x < kMargin)
      point.x = kMargin;
    
    if ((point.x + contentSize.width + kMargin) > outerWidth)
      point.x = outerWidth - contentSize.width - kMargin;
    
    iArrowPosition = rectXM - point.x;
    //_arrowPosition = MAX(16, MIN(_arrowPosition, contentSize.width - 16));
    iContentView.frame = (CGRect){0, arrowsize, contentSize};
    
    self.frame = (CGRect)
    {
      
      point,
      contentSize.width,
      contentSize.height + arrowsize
    };
    
  }
  else if (heightPlusArrow < rectY0)
  {
    
    iArrowDirection = PopMenuViewArrowDirectionDown;
    CGPoint point = (CGPoint)
    {
      rectXM - widthHalf,
      rectY0 - heightPlusArrow
    };
    
    if (point.x < kMargin)
      point.x = kMargin;
    
    if ((point.x + contentSize.width + kMargin) > outerWidth)
      point.x = outerWidth - contentSize.width - kMargin;
    
    iArrowPosition = rectXM - point.x;
    iContentView.frame = (CGRect){CGPointZero, contentSize};
    
    self.frame = (CGRect)
    {
      
      point,
      contentSize.width,
      contentSize.height+ arrowsize
    };
    
  }
  else if (widthPlusArrow < (outerWidth - rectX1))
  {
    
    iArrowDirection = PopMenuViewArrowDirectionLeft;
    CGPoint point = (CGPoint)
    {
      rectX1,
      rectYM - heightHalf
    };
    
    if (point.y < kMargin)
      point.y = kMargin;
    
    if ((point.y + contentSize.height + kMargin) > outerHeight)
      point.y = outerHeight - contentSize.height - kMargin;
    
    iArrowPosition = rectYM - point.y;
    iContentView.frame = (CGRect){arrowsize, 0, contentSize};
    
    self.frame = (CGRect)
    {
      
      point,
      contentSize.width + arrowsize,
      contentSize.height
    };
    
  }
  else if (widthPlusArrow < rectX0)
  {
    
    iArrowDirection = PopMenuViewArrowDirectionRight;
    CGPoint point = (CGPoint)
    {
      rectX0 - widthPlusArrow,
      rectYM - heightHalf
    };
    
    if (point.y < kMargin)
      point.y = kMargin;
    
    if ((point.y + contentSize.height + 5) > outerHeight)
      point.y = outerHeight - contentSize.height - kMargin;
    
    iArrowPosition = rectYM - point.y;
    iContentView.frame = (CGRect){CGPointZero, contentSize};
    
    self.frame = (CGRect)
    {
      
      point,
      contentSize.width  + arrowsize,
      contentSize.height
    };
    
  }
  else
  {
    
    iArrowDirection = PopMenuViewArrowDirectionNone;
    
    self.frame = (CGRect)
    {
      
      (outerWidth - contentSize.width)   * 0.5f,
      (outerHeight - contentSize.height) * 0.5f,
      contentSize,
    };
  }
}

- (void)showMenuInView:(UIView *)view
              fromRect:(CGRect)rect
             menuItems:(NSArray *)menuItems
{
  CGFloat arrowsize = [self getArrowsize];
  self.iMenuItems = menuItems;
  self.iContentView = [self mkContentView];
  UIImage *aimage = [CWAPopupMenu sharedMenu].iBgImage;
  [self setupFrameInView:view fromRect:rect];
  
  //如果有背景图片，添加背景
  if (aimage)
  {
    CWAPopupMenu *amenu = [CWAPopupMenu sharedMenu];
    CGFloat aWdth = self.iContentView.frame.size.width;
    CGFloat aHeight = self.iContentView.frame.size.height;
    aWdth += amenu.iMargin.size.height;
    aHeight += arrowsize+amenu.iMargin.size.width;
    CGRect aFrame = CGRectMake(0, 0, aWdth, aHeight);
    UIImageView *abgview =[[UIImageView alloc]initWithFrame:aFrame];
    abgview.image = aimage;
    [self addSubview:abgview];
    iContentView.frame = CGRectMake(amenu.iMargin.origin.y, amenu.iMargin.origin.x,iContentView.frame.size.width,arrowsize+iContentView.frame.size.height);
    self.frame = CGRectMake(self.frame.origin.x-amenu.iMargin.origin.y,
                            self.frame.origin.y-amenu.iMargin.origin.x,
                            self.frame.size.width,
                            self.frame.size.height
                            );
    
  }
  //添加菜单
  [self addSubview:iContentView];
  //遮罩
  CGRect aShadeFrame = view.bounds;
  CGRect userShadeFrame = [CWAPopupMenu sharedMenu].iShaDeFrame;
  //如果使用者更改遮罩的frame
  if (userShadeFrame.size.width>0)
  {
    aShadeFrame = userShadeFrame;
  }
  CWAPopMenuBaseView *overlay = [[CWAPopMenuBaseView alloc] initWithFrame:aShadeFrame];
  [overlay addSubview:self];
  [view addSubview:overlay];
  
  self.iContentView.hidden = YES;
  const CGRect toFrame = self.frame;
  self.frame = (CGRect){self.arrowPoint, 1, 1};
  
  [UIView animateWithDuration:0.2
                   animations:^(void)
   {
     
     self.alpha = 1.0f;
     self.frame = toFrame;
     
   }
                   completion:^(BOOL completed)
   {
     iContentView.hidden = NO;
     
   }
   ];
  
}
- (CGPoint) arrowPoint
{
  CGPoint point;
  
  if (iArrowDirection == PopMenuViewArrowDirectionUp)
  {
    
    point = (CGPoint){ CGRectGetMinX(self.frame) + iArrowPosition, CGRectGetMinY(self.frame) };
    
  }
  else if (iArrowDirection == PopMenuViewArrowDirectionDown)
  {
    
    point = (CGPoint){ CGRectGetMinX(self.frame) + iArrowPosition, CGRectGetMaxY(self.frame) };
    
  }
  else if (iArrowDirection == PopMenuViewArrowDirectionLeft)
  {
    
    point = (CGPoint){ CGRectGetMinX(self.frame), CGRectGetMinY(self.frame) + iArrowPosition  };
    
  } else if (iArrowDirection == PopMenuViewArrowDirectionRight)
  {
    
    point = (CGPoint){ CGRectGetMaxX(self.frame), CGRectGetMinY(self.frame) + iArrowPosition  };
    
  }
  else
  {
    
    point = self.center;
  }
  
  return point;
}

//构造菜单项
- (UIView *) mkContentView
{
  for (UIView *v in self.subviews)
  {
    [v removeFromSuperview];
  }
  
  if (!iMenuItems.count)
    return nil;
  
  CGFloat kMarginX = 10.f;
  CGFloat kMarginY = 5.f;
  CWAPopupMenu *aMenu = [CWAPopupMenu sharedMenu];
  if (aMenu.iMarginX > 0)
  {
    kMarginX = aMenu.iMarginX;
  }
  if (aMenu.iMarginY >0)
  {
    kMarginY = aMenu.iMarginY;
  }
  
  UIFont *titleFont = [CWAPopupMenu titleFont];
  if (!titleFont) titleFont = [UIFont boldSystemFontOfSize:16];
  
  CGFloat maxImageWidth = 0;
  CGFloat maxItemHeight = 0;
  CGFloat maxItemWidth = 0;
  
  
  for (CWAPopupMenuItem *menuItem in iMenuItems)
  {
    
    const CGSize imageSize = menuItem.iImage.size;
    //菜单项图片的宽度 = 最宽图片的宽度
    if (imageSize.width > maxImageWidth)
      maxImageWidth = imageSize.width;
  }
  
  
  CGFloat top = aMenu.iToTop;
  CGFloat left = aMenu.iToLeft;
  CGFloat center = aMenu.iCenter;
  CGFloat right = aMenu.iToRight;
  CGFloat down = aMenu.iToDown;
  BOOL eqaulmargin = aMenu.isEqualMargin;
  for (CWAPopupMenuItem *menuItem in iMenuItems)
  {
    
    const CGSize titleSize = [menuItem.iTitle sizeWithFont:titleFont];
    const CGSize imageSize = menuItem.iImage.size;
    //左右等间距 上下等间距 *****************************************
    
    //一个菜单项的高度 = 图片和标题高度最大值 + y轴边距*2
    CGFloat itemHeight = MAX(titleSize.height, imageSize.height) + kMarginY * 2;
    
    //一个菜单项的宽度 = （图片？图片的宽度+x轴边距 ：0）+ 文字的宽度 +X轴边距*4
    CGFloat itemWidth = (menuItem.iImage ? maxImageWidth + kMarginX : 0) + titleSize.width + kMarginX * 4;
    
    //左右不等间距 上下不等间距 *****************************************
    if(eqaulmargin)
    {
      if (top>=0&&down>=0)
      {
        itemHeight = MAX(titleSize.height, imageSize.height) + top +down;
      }
      
      if (left>=0&&right>=0&&center>=0)
      {
        itemWidth = left + (menuItem.iImage ? maxImageWidth+center  : 0)
        + titleSize.width + right;
        
      }
      
    }
    //每个菜单项的宽度和高度 为所有菜单项宽度和高度的最大值
    if (itemHeight > maxItemHeight)
      maxItemHeight = itemHeight;
    
    if (itemWidth > maxItemWidth)
      maxItemWidth = itemWidth;
  }
  //每个菜单项的宽度和高度 为所有菜单项宽度和高度的最大值和调用者指定的值的最大值
  //maxItemWidth  = MAX(maxItemWidth, kMinMenuItemWidth);
  //maxItemHeight = MAX(maxItemHeight, kMinMenuItemHeight);
  //文字的坐标  = X边距 * 2 + 图片？（图片的宽度+x轴边距）：0
  CGFloat titleX = kMarginX * 2 + (maxImageWidth > 0 ? maxImageWidth + kMarginX : 0);
  //文字的宽度 = 菜单项宽度 - X 轴坐标 - X轴边距
  CGFloat titleWidth = maxItemWidth - titleX - kMarginX;
  
  //文字的 横坐标 宽度
  if (eqaulmargin)
  {
    titleX = left + (maxImageWidth > 0 ? maxImageWidth + center : 0);
    titleWidth = maxItemWidth - titleX-right;
  }
  
  //选中的背景图片
  
  UIImage *selectedImage = [CWAPopupMenuView selectedImage:(CGSize){maxItemWidth, maxItemHeight + 2}];
  if (aMenu.iMenuItemSelectBgImage)
  {
    selectedImage = aMenu.iMenuItemSelectBgImage;
  }
  //分割线
  UIImage *gradientLine = [CWAPopupMenuView gradientLine: (CGSize){maxItemWidth - kMarginX * 4, 1}];
  
  UIView *contentView = [[UIView alloc] initWithFrame:CGRectZero];
  contentView.autoresizingMask = UIViewAutoresizingNone;
  contentView.backgroundColor = [UIColor clearColor];
  contentView.opaque = NO;
  
  CGFloat itemY = kMarginY * 2;
  CGFloat X = 0;
  if (eqaulmargin)
  {
    itemY = top;
    X = 0;
    
    
  }
  NSUInteger itemNum = 0;
  //菜单项的frame = (0,Y*2,宽，高）
  for (CWAPopupMenuItem *menuItem in iMenuItems)
  {
    
    const CGRect itemFrame = (CGRect){X, itemY, maxItemWidth, maxItemHeight};
    
    UIView *itemView = [[UIView alloc] initWithFrame:itemFrame];
    itemView.autoresizingMask = UIViewAutoresizingNone;
    itemView.backgroundColor = [UIColor clearColor];
    itemView.opaque = NO;
    
    [contentView addSubview:itemView];
    //菜单项可以点击************* itemview 贴个按钮吧
    if (menuItem.enabled)
    {
      UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
      button.tag = itemNum;
      button.frame = itemView.bounds;
      button.enabled = menuItem.enabled;
      button.backgroundColor = [UIColor clearColor];
      button.opaque = NO;
      button.autoresizingMask = UIViewAutoresizingNone;
      [button addTarget:self
                 action:@selector(performAction:)
       forControlEvents:UIControlEventTouchUpInside];
      [button setBackgroundImage:selectedImage forState:UIControlStateHighlighted];
      [itemView addSubview:button];
    }
    //菜单项有文字
    if (menuItem.iTitle.length)
    {
      CGRect titleFrame;
      //不可点击并且没图片
      if (!menuItem.enabled && !menuItem.iImage)
      {
        titleFrame = (CGRect)
        {
          kMarginX * 2,                     //x*2
          kMarginY,                         //y
          maxItemWidth - kMarginX * 4,      //宽-x*4
          maxItemHeight - kMarginY * 2     //高-Y*2
        };
      }
      //有图片 或者可点击
      else
      {
        
        titleFrame = (CGRect)
        {
          titleX,                         //x
          kMarginY,                       //y
          titleWidth,                     //宽
          maxItemHeight - kMarginY * 2    //高-Y*2
        };
        
      }
      if (eqaulmargin)
      {
        titleFrame = (CGRect)
        {
          titleX,                         //x
          top,                            //y
          titleWidth,                     //宽
          maxItemHeight - top -down                 //高
        };
      }
      // title Label
      UILabel *titleLabel = [[UILabel alloc] initWithFrame:titleFrame];
      titleLabel.text = menuItem.iTitle;
      titleLabel.font = titleFont;
      titleLabel.textAlignment = menuItem.iAalignment;
      titleLabel.textColor = menuItem.iFforeColor ? menuItem.iFforeColor : [UIColor whiteColor];
      titleLabel.backgroundColor = [UIColor clearColor];
      titleLabel.autoresizingMask = UIViewAutoresizingNone;
      //titleLabel.backgroundColor = [UIColor greenColor];
      [itemView addSubview:titleLabel];
    }
    
    if (menuItem.iImage)
    {
      //图片的frame:x*2,Y,图片宽，高-Y*2
      CGRect imageFrame = {kMarginX * 2, kMarginY, maxImageWidth, maxItemHeight - kMarginY * 2};
      if (eqaulmargin)
      {
        imageFrame = CGRectMake(left,top,maxImageWidth,maxItemHeight - top - down);
      }
      UIImageView *imageView = [[UIImageView alloc] initWithFrame:imageFrame];
      imageView.image = menuItem.iImage;
      imageView.clipsToBounds = YES;
      imageView.contentMode = UIViewContentModeCenter;
      imageView.autoresizingMask = UIViewAutoresizingNone;
      [itemView addSubview:imageView];
    }
    
    CGFloat breaklineHeight = 1;
    if (aMenu.iBreakLineHeight>0)
    {
      breaklineHeight = aMenu.iBreakLineHeight;
    }
    if (itemNum < iMenuItems.count - 1)
    {
      UIImageView *gradientView = [[UIImageView alloc] init];
      
      gradientView.frame = (CGRect){kMarginX * 2, maxItemHeight + breaklineHeight, gradientLine.size};
      
      if (eqaulmargin)
      {
        gradientView.frame = (CGRect){left, maxItemHeight + breaklineHeight, maxItemWidth-right, breaklineHeight};
        if (aMenu.iBreakLineColor)
        {
          gradientView.backgroundColor = aMenu.iBreakLineColor;
        }
        
        if (aMenu.iLineMage)
        {
          gradientView.image = aMenu.iLineMage;
        }
        
      }
      else
      {
        gradientView.image = gradientLine;
        gradientView.contentMode = UIViewContentModeLeft;
      }
      
      [itemView addSubview:gradientView];
      CGFloat marginBreaklineH = 1;
      if (aMenu.iBreakLineMarginHeight >1)
      {
        marginBreaklineH = aMenu.iBreakLineMarginHeight;
      }
      itemY += breaklineHeight+marginBreaklineH;
    }
    
    itemY += maxItemHeight+top;
    ++itemNum;
  }
  
  contentView.frame = (CGRect){0, 0, maxItemWidth, itemY + kMarginY * 2};
  if (eqaulmargin)
  {
    contentView.frame = (CGRect){0, 0, maxItemWidth, itemY+down};
  }
  
  return contentView;
}


/*!
 	@method
 	@abstract
 	@discussion
 	@param 	view 	显示弹出菜单的View
 	@param 	menuItems 	菜单项数组
 	@param 	kMinMenuItemHeight 	菜单项的最小高度
 	@param 	kMinMenuItemWidth 	菜单项的最小宽度
 	@param 	kMarginX 	菜单项距左边缘的距离
 	@param 	kMarginY 	菜单项距上边缘的距离
 	@result
 */
- (void)showMenuInView      :(UIView *)view
         menuItems          :(NSArray *)menuItems
         kMinMenuItemHeight :(CGFloat)kMinMenuItemHeight
         kMinMenuItemWidth  :(CGFloat)kMinMenuItemWidth
         kMarginX           :(CGFloat)kMarginX
         kMarginY           :(CGFloat)kMarginY

{
  self.iMenuItems = menuItems;
  self.iContentView = [self mkContentViewkMinMenuItemHeight:kMinMenuItemWidth
                                       kMinMenuItemWidth   :kMinMenuItemWidth
                                       kMarginX            :kMarginX
                                       kMarginY            :kMarginY];
  //弹出菜单的frame
  CGRect   aframe = CGRectMake(192, 44, 128, 96);
  //ios7适配 弹出框y坐标下移20px
  if (WA_CURENT_OS_V >= 7.0f)
  {
    aframe = CGRectMake(192, 64, 128, 96);
  }
  iBaseView = [[CWAPopMenuBaseView alloc]initWithFrame:view.bounds];
  UIImageView *bgView = [[UIImageView alloc]initWithFrame:aframe];
  NSString *bgimageName = [CWAPopupMenu sharedMenu].iMenuBgImageName;
  if (!bgimageName)
  {
    bgimageName = @"popupmenu_bg";
  }
  
  bgView.image = [UIImage imageNamed:bgimageName];
  [self.iBaseView addSubview:bgView];
  
  CGRect contentViewFrame = CGRectMake(aframe.origin.x+16, aframe.origin.y+16,
                                       self.iContentView.frame.size.width+16, self.iContentView.frame.size.height+16);
  
  self.iContentView.frame = contentViewFrame;
  [self.iBaseView addSubview:self.iContentView];
  [view addSubview:iBaseView];
}

- (void)dismissMenuOld:(BOOL)animated
{
  [self.iBaseView removeFromSuperview];
}

- (void)performActionOld:(id)sender
{
  [self dismissMenuOld:YES];
  
  UIButton            *button = (UIButton *)sender;
  CWAPopupMenuItem    *menuItem = iMenuItems[button.tag];
  [menuItem performAction];
}

//隐藏菜单
- (void)dismissMenu:(BOOL) animated
{
  if (self.superview)
  {
    if (animated)
    {
      iContentView.hidden = YES;
      const CGRect toFrame = (CGRect)
      {
        self.arrowPoint, 1, 1
      };
      
      [UIView animateWithDuration:0.2
                       animations:^(void)
       {
         self.alpha = 0;
         self.frame = toFrame;
         
       }
                       completion:^(BOOL finished)
       {
         
         if ([self.superview isKindOfClass:[CWAPopMenuBaseView class]])
           [self.superview removeFromSuperview];
         [self removeFromSuperview];
       }];
      
    }
    else
    {
      
      if ([self.superview isKindOfClass:[CWAPopMenuBaseView class]])
        [self.superview removeFromSuperview];
      [self removeFromSuperview];
    }
  }
}

- (void)performAction:(id)sender
{
  [self dismissMenu:YES];
  
  UIButton *button = (UIButton *)sender;
  CWAPopupMenuItem *menuItem = iMenuItems[button.tag];
  [menuItem performAction];
}


/*!
 	@method
 	@abstract
 	@discussion
  @param 	kMinMenuItemHeight 	菜单项的最小高度
  @param 	kMinMenuItemWidth 	菜单项的最小宽度
  @param 	kMarginX 	菜单项距左边缘的距离
  @param 	kMarginY 	菜单项距上边缘的距离
 	@result
 */
- (UIView *)mkContentViewkMinMenuItemHeight :(CGFloat)kMinMenuItemHeight
            kMinMenuItemWidth               :(CGFloat)kMinMenuItemWidth
            kMarginX                        :(CGFloat)kMarginX
            kMarginY                        :(CGFloat)kMarginY

{
  for (UIView *v in self.subviews)
  {
    [v removeFromSuperview];
  }
  if (!iMenuItems.count)
  {
    return nil;
  }
  //设置默认值
  if (kMinMenuItemHeight <= 0.f)
  {
    kMinMenuItemHeight = 32.f;
  }
  if (kMinMenuItemWidth <= 0.f)
  {
    kMinMenuItemWidth = 96.f;
  }
  if (kMarginY <= 0.f)
  {
    kMarginY = 16.f;
  }
  
  UIFont *titleFont = [CWAPopupMenu titleFont];
  if (!titleFont)
  {
    titleFont = [UIFont boldSystemFontOfSize:16];
  }
  
  //计算菜单大小
  
  CGFloat maxImageWidth = 0;
  CGFloat maxItemHeight = 0;
  CGFloat maxItemWidth = 0;
  CGFloat maxImageHeight = 0;
  
  for (CWAPopupMenuItem *menuItem in iMenuItems)
  {
    const CGSize imageSize = menuItem.iImage.size;
    
    if (imageSize.width > maxImageWidth)
    {
      maxImageWidth = imageSize.width;
    }
    
    if (imageSize.height > maxItemHeight)
    {
      maxImageHeight = imageSize.height;
    }
  }
  

  if (maxImageWidth ==0)
  {
    kMinMenuItemWidth = 96.0f;
  }
  
  UIView  *contentView = [[UIView alloc] initWithFrame:CGRectZero];
  contentView.autoresizingMask = UIViewAutoresizingNone;
  contentView.backgroundColor = [UIColor clearColor];
  contentView.opaque = NO;
  
  CGFloat     itemY = kMarginY;
  NSUInteger  itemNum = 0;
  itemY = 0;
  kMarginX = 0;
  maxItemWidth = 96;
  maxItemHeight = 32;
  CGFloat updown = 0;
   //开始构造菜单
  for (CWAPopupMenuItem *menuItem in iMenuItems)
  {
    itemY = itemY +updown*itemNum;
    const CGRect itemFrame = (CGRect) {kMarginX, itemY, maxItemWidth, maxItemHeight};
    
    UIView *itemView = [[UIView alloc] initWithFrame:itemFrame];
    itemView.autoresizingMask = UIViewAutoresizingNone;
    itemView.backgroundColor = [UIColor clearColor];
    itemView.opaque = NO;
    
    [contentView addSubview:itemView];
    
    if (menuItem.enabled)
    {
      UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
      button.tag = itemNum;
      button.frame = itemView.bounds;
      button.enabled = menuItem.enabled;
      button.backgroundColor = [UIColor clearColor];
      button.opaque = NO;
      button.autoresizingMask = UIViewAutoresizingNone;
      
      [button addTarget:self
       action          :@selector(performActionOld:)
       forControlEvents:UIControlEventTouchUpInside];
      [itemView addSubview:button];
    }
    
    if (menuItem.iTitle.length)
    {
      CGRect  titleFrame = CGRectMake(maxImageWidth, 0, kMinMenuItemWidth, kMinMenuItemHeight);
      UILabel *titleLabel = [[UILabel alloc] initWithFrame:titleFrame];
      titleLabel.text = menuItem.iTitle;
      titleLabel.font = titleFont;
      titleLabel.textAlignment = menuItem.iAalignment ? menuItem.iAalignment : NSTextAlignmentCenter;
      titleLabel.textColor = menuItem.iFforeColor ? menuItem.iFforeColor :[UIColor whiteColor];
      titleLabel.backgroundColor = [UIColor clearColor];
      titleLabel.autoresizingMask = UIViewAutoresizingNone;
      // titleLabel.backgroundColor = [UIColor greenColor];
      [itemView addSubview:titleLabel];
    }
    
    if (menuItem.iImage)
    {
      const CGRect    imageFrame = {0, 0, maxImageWidth, maxImageHeight};
      UIImageView     *imageView = [[UIImageView alloc] initWithFrame:imageFrame];
      imageView.image = menuItem.iImage;
      imageView.clipsToBounds = YES;
      imageView.contentMode = UIViewContentModeCenter;
      imageView.autoresizingMask = UIViewAutoresizingNone;
      [itemView addSubview:imageView];
    }
    
    itemY += maxItemHeight;
    ++itemNum;
  }
  
  contentView.frame = (CGRect) {0, 0, maxItemWidth, itemY};
  
  return contentView;
}

+ (UIImage *)selectedImage:(CGSize)size
{
  const CGFloat   locations[] = {0, 1};
  const CGFloat   components[] =
  {
    0.216, 0.471, 0.871, 1,
    0.059, 0.353, 0.839, 1,
  };
  
  return [self gradientImageWithSize:size locations:locations components:components count:2];
}

+ (UIImage *) gradientLine: (CGSize) size
{
  const CGFloat locations[5] = {0,0.2,0.5,0.8,1};
  
  const CGFloat R = 0.44f, G = 0.44f, B = 0.44f;
  
  const CGFloat components[20] =
  {
    R,G,B,0.1,
    R,G,B,0.4,
    R,G,B,0.7,
    R,G,B,0.4,
    R,G,B,0.1
  };
  
  return [self gradientImageWithSize:size locations:locations components:components count:5];
}



+ (UIImage *)   gradientImageWithSize   :(CGSize)size
                locations               :(const CGFloat[])locations
                components              :(const CGFloat[])components
                count                   :(NSUInteger)count
{
  UIGraphicsBeginImageContextWithOptions(size, NO, 0);
  CGContextRef context = UIGraphicsGetCurrentContext();
  
  CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
  CGGradientRef   colorGradient = CGGradientCreateWithColorComponents(colorSpace, components, locations, 2);
  CGColorSpaceRelease(colorSpace);
  CGContextDrawLinearGradient(context, colorGradient, (CGPoint) {0, 0}, (CGPoint) {size.width, 0}, 0);
  CGGradientRelease(colorGradient);
  
  UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  return image;
}
- (void) drawRect:(CGRect)rect
{
  [self drawBackground:self.bounds
             inContext:UIGraphicsGetCurrentContext()];
  
}

//画箭头
- (void)drawBackground:(CGRect)frame
             inContext:(CGContextRef) context
{
  
  CGFloat arrowsize = [self getArrowsize];
  CGFloat alpha = 1;
  //有背景图片，不设置渐变！
  if ([CWAPopupMenu sharedMenu].iBgImage)
  {
    alpha = 0;
  }
  CGFloat R0 = 0.267, G0 = 0.303, B0 = 0.335;
  CGFloat R1 = 0.040, G1 = 0.040, B1 = 0.040;
  
  UIColor *tintColor = [CWAPopupMenu tintColor];
  if (tintColor)
  {
    
    CGFloat a;
    [tintColor getRed:&R0 green:&G0 blue:&B0 alpha:&a];
  }
  
  CGFloat X0 = frame.origin.x;
  CGFloat X1 = frame.origin.x + frame.size.width;
  CGFloat Y0 = frame.origin.y;
  CGFloat Y1 = frame.origin.y + frame.size.height;
  
  // render arrow
  
  UIBezierPath *arrowPath = [UIBezierPath bezierPath];
  
  // fix the issue with gap of arrow's base if on the edge
  const CGFloat kEmbedFix = 3.f;
  //箭头朝上
  if (iArrowDirection == PopMenuViewArrowDirectionUp)
  {
    
    const CGFloat arrowXM = iArrowPosition;
    const CGFloat arrowX0 = arrowXM - arrowsize;
    const CGFloat arrowX1 = arrowXM + arrowsize;
    const CGFloat arrowY0 = Y0;
    const CGFloat arrowY1 = Y0 + arrowsize + kEmbedFix;
    
    [arrowPath moveToPoint:    (CGPoint){arrowXM, arrowY0}];
    [arrowPath addLineToPoint: (CGPoint){arrowX1, arrowY1}];
    [arrowPath addLineToPoint: (CGPoint){arrowX0, arrowY1}];
    [arrowPath addLineToPoint: (CGPoint){arrowXM, arrowY0}];
    
    [[UIColor colorWithRed:R0 green:G0 blue:B0 alpha:alpha] set];
    
    Y0 += arrowsize;
    
  }
  //箭头朝下
  else if (iArrowDirection == PopMenuViewArrowDirectionDown)
  {
    
    const CGFloat arrowXM = iArrowPosition;
    const CGFloat arrowX0 = arrowXM - arrowsize;
    const CGFloat arrowX1 = arrowXM + arrowsize;
    const CGFloat arrowY0 = Y1 - arrowsize - kEmbedFix;
    const CGFloat arrowY1 = Y1;
    
    [arrowPath moveToPoint:    (CGPoint){arrowXM, arrowY1}];
    [arrowPath addLineToPoint: (CGPoint){arrowX1, arrowY0}];
    [arrowPath addLineToPoint: (CGPoint){arrowX0, arrowY0}];
    [arrowPath addLineToPoint: (CGPoint){arrowXM, arrowY1}];
    
    [[UIColor colorWithRed:R1 green:G1 blue:B1 alpha:alpha] set];
    
    Y1 -= arrowsize;
    
  }
  //箭头朝左
  else if (iArrowDirection == PopMenuViewArrowDirectionLeft)
  {
    
    const CGFloat arrowYM = iArrowPosition;
    const CGFloat arrowX0 = X0;
    const CGFloat arrowX1 = X0 + arrowsize + kEmbedFix;
    const CGFloat arrowY0 = arrowYM - arrowsize;;
    const CGFloat arrowY1 = arrowYM + arrowsize;
    
    [arrowPath moveToPoint:    (CGPoint){arrowX0, arrowYM}];
    [arrowPath addLineToPoint: (CGPoint){arrowX1, arrowY0}];
    [arrowPath addLineToPoint: (CGPoint){arrowX1, arrowY1}];
    [arrowPath addLineToPoint: (CGPoint){arrowX0, arrowYM}];
    
    [[UIColor colorWithRed:R0 green:G0 blue:B0 alpha:alpha] set];
    
    X0 += arrowsize;
    
  }
  //箭头朝右
  else if (iArrowDirection == PopMenuViewArrowDirectionRight)
  {
    
    const CGFloat arrowYM = iArrowPosition;
    const CGFloat arrowX0 = X1;
    const CGFloat arrowX1 = X1 - arrowsize - kEmbedFix;
    const CGFloat arrowY0 = arrowYM - arrowsize;;
    const CGFloat arrowY1 = arrowYM + arrowsize;
    
    [arrowPath moveToPoint:    (CGPoint){arrowX0, arrowYM}];
    [arrowPath addLineToPoint: (CGPoint){arrowX1, arrowY0}];
    [arrowPath addLineToPoint: (CGPoint){arrowX1, arrowY1}];
    [arrowPath addLineToPoint: (CGPoint){arrowX0, arrowYM}];
    
    [[UIColor colorWithRed:R1 green:G1 blue:B1 alpha:alpha] set];
    
    X1 -= arrowsize;
  }
  
  [arrowPath fill];
  
  // render body
  
  const CGRect bodyFrame = {X0, Y0, X1 - X0, Y1 - Y0};
  
  UIBezierPath *borderPath = [UIBezierPath bezierPathWithRoundedRect:bodyFrame
                                                        cornerRadius:8];
  
  const CGFloat locations[] = {0, 1};
  const CGFloat components[] =
  {
    R0, G0, B0, alpha,
    R1, G1, B1, alpha,
  };
  
  CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
  CGGradientRef gradient = CGGradientCreateWithColorComponents(colorSpace,
                                                               components,
                                                               locations,
                                                               sizeof(locations)/sizeof(locations[0]));
  CGColorSpaceRelease(colorSpace);
  
  [borderPath addClip];
  
  CGPoint start, end;
  
  if (iArrowDirection == PopMenuViewArrowDirectionLeft ||
      iArrowDirection == PopMenuViewArrowDirectionRight)
  {
    
    start = (CGPoint){X0, Y0};
    end = (CGPoint){X1, Y0};
    
  }
  else
  {
    
    start = (CGPoint){X0, Y0};
    end = (CGPoint){X0, Y1};
  }
  
  CGContextDrawLinearGradient(context, gradient, start, end, 0);
  
  CGGradientRelease(gradient);
}

@end


