/*!
 @header	WAPopupMenu.m
 @abstract	弹出菜单控件
 @discussion 弹出菜单控件
 @author	chenrh1
 @copyright	ufida
 @version	1.0 2013-07-17 17:58:52 Creation
 */
#import "WAPopupMenuView.h"

static CWAPopupMenu *gMenu;
static UIColor      *gTintColor;
static UIFont       *gTitleFont;

@implementation CWAPopupMenu
{
  CWAPopupMenuView    *iMenuView;
  BOOL                iObserving;
}
@synthesize iMarginX;
@synthesize iMarginY;
@synthesize iMinMenuItemHeight;
@synthesize iMinMenuItemWidth;
@synthesize iMenuFrame;
@synthesize iMenuBgImageName;
@synthesize iBgImage;
@synthesize iArrowSize;
@synthesize iShaDeFrame;
@synthesize iMenuItemSelectBgImage;

@synthesize iToTop;
@synthesize iToLeft;
@synthesize iToDown;
@synthesize iToRight;
@synthesize iCenter;

@synthesize isEqualMargin;
@synthesize iLineMage;
@synthesize iMargin;
@synthesize iBreakLineColor;
@synthesize iBreakLineHeight;
@synthesize iBreakLineMarginHeight;

#pragma mark 菜单项单例 **********************************************************
+ (instancetype)sharedMenu
{
  static dispatch_once_t onceToken;
  
  dispatch_once(&onceToken, ^{
    gMenu = [[CWAPopupMenu alloc] init];
  });
  return gMenu;
}

#pragma mark dealloc **********************************************************
- (void)dealloc
{
  if (iObserving)
  {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
  }
}

#pragma mark 显示菜单的实例方法 **********************************************************
- (void)showMenuInView  :(UIView *)view
        menuItems      :(NSArray *)menuItems
{
//  NSParameterAssert(view);
//  NSParameterAssert(menuItems.count);
  
  if (iMenuView)
  {
    [iMenuView dismissMenu:NO];
    iMenuView = nil;
  }
  
  if (!iObserving)
  {
    iObserving = YES;
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(orientationWillChange:)
                                             name    :UIApplicationWillChangeStatusBarOrientationNotification
                                             object  :nil];
  }
  
  iMenuView = [[CWAPopupMenuView alloc] init];
  
  [iMenuView showMenuInView:view
       menuItems           :menuItems
       kMinMenuItemHeight  :self.iMinMenuItemHeight
       kMinMenuItemWidth   :self.iMinMenuItemWidth
       kMarginX            :self.iMarginX
       kMarginY            :self.iMarginY];
}

#pragma mark 隐藏菜单 **********************************************************
- (void)dismissMenu
{
  if (iMenuView)
  {
    [iMenuView dismissMenu:NO];
    iMenuView = nil;
  }
  
  if (iObserving)
  {
    iObserving = NO;
    [[NSNotificationCenter defaultCenter] removeObserver:self];
  }
}

#pragma mark 显示菜单 类方法 需要响应点击事件控件的frame *******************************************
+ (void) showMenuInView:(UIView *)view
               fromRect:(CGRect)rect
              menuItems:(NSArray *)menuItems
{
  [[self sharedMenu] showMenuInView:view fromRect:rect menuItems:menuItems];
}

#pragma mark 横竖屏、上下屏切换
- (void)orientationWillChange:(NSNotification *)n
{
  [self dismissMenu];
}

#pragma mark 类方法 显示菜单 知道菜单的frame
+ (void)showMenuInView  :(UIView *)view
        menuItems      :(NSArray *)menuItems
{
  [[self sharedMenu] showMenuInView:view menuItems:menuItems];
}

#pragma mark 实例方法 显示菜单 知道响应点击事件的控件frame
- (void) showMenuInView:(UIView *)view
               fromRect:(CGRect)rect
              menuItems:(NSArray *)menuItems
{
  if (iMenuView)
  {
    
    [iMenuView dismissMenu:NO];
    iMenuView = nil;
  }
  
  if (!iObserving)
  {
    
    iObserving = YES;
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(orientationWillChange:)
                                                 name:UIApplicationWillChangeStatusBarOrientationNotification
                                               object:nil];
  }
  iMenuView = [[CWAPopupMenuView alloc] init];
  [iMenuView showMenuInView:view fromRect:rect menuItems:menuItems];
}

#pragma mark 隐藏按钮 类方法
+ (void)dismissMenu
{
  [[self sharedMenu] dismissMenu];
}

#pragma mark 常用属性的 取值赋值方法们
+ (UIColor *)tintColor
{
  return gTintColor;
}

+ (void)setTintColor:(UIColor *)tintColor
{
  if (tintColor != gTintColor)
  {
      gTintColor = tintColor;
  }
}

+ (UIFont *)titleFont
{
  return gTitleFont;
}

+ (void)setTitleFont:(UIFont *)titleFont
{
  if (titleFont != gTitleFont)
  {
    gTitleFont = titleFont;
  }
}

@end