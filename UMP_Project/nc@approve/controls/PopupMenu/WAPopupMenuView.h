
/*!
 @header	WAPopupMenuView.h
 @abstract	弹出菜单VIEW
 @discussion
 @author	chenrh1
 @copyright	yonyou
 @version	1.0 2013-11-23 11:53:17 Creation
 */
#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>

#import "WAPopupMenuItem.h"
#import "WAPopupMenu.h"
#import "WAPopMenuBaseView.h"


/*!
 @enum
 @abstract	弹出菜单尖角的方向
 @discussion
 @constant
 PopMenuViewArrowDirectionNone	没有尖
 @constant
 PopMenuViewArrowDirectionUp	上
 @constant
 PopMenuViewArrowDirectionDown	下
 @constant
 PopMenuViewArrowDirectionLeft	左
 @constant
 PopMenuViewArrowDirectionRight	右
 */
typedef enum
{
  PopMenuViewArrowDirectionNone,
  PopMenuViewArrowDirectionUp,
  PopMenuViewArrowDirectionDown,
  PopMenuViewArrowDirectionLeft,
  PopMenuViewArrowDirectionRight,
} TWAPopuMenuViewArrowDirection;

@interface CWAPopupMenuView : UIView


{
  TWAPopuMenuViewArrowDirection    iArrowDirection;
  CGFloat                     iArrowPosition;
  UIView  *iContentView;
  NSArray *iMenuItems;
  CWAPopMenuBaseView  *iBaseView;
  
}


/*!
 	@property
 	@abstract	iContentView	菜单项容器VIEW
 */
@property(nonatomic,retain) UIView    *iContentView;

/*!
 	@property
 	@abstract	iBaseView	遮罩VIEW
 */
@property(nonatomic,retain) CWAPopMenuBaseView    *iBaseView;

/*!
 	@property
 	@abstract	iMenuItems	菜单项数组
 */
@property(nonatomic,retain) NSArray   *iMenuItems;

/*!
 	@property
 	@abstract	iArrowDirection	菜单尖角的方向
 */
@property(nonatomic,assign) TWAPopuMenuViewArrowDirection    iArrowDirection;

/*!
 	@property
 	@abstract	iArrowPosition	
 */
@property(nonatomic,assign) CGFloat                     iArrowPosition;


/*!
 	@method
 	@abstract	隐藏方法
 	@discussion
 */
- (void)dismissMenu:(BOOL) animated;

/*!
 	@method
 	@abstract	显示菜单
 	@discussion
 	@param 	view
 	@param 	menuItems 	
 */
- (void)showMenuInView:(UIView *)view
             menuItems:(NSArray *)menuItems
    kMinMenuItemHeight:(CGFloat) kMinMenuItemHeight
     kMinMenuItemWidth:(CGFloat)  kMinMenuItemWidth
              kMarginX:(CGFloat)  kMarginX
              kMarginY:(CGFloat)  kMarginY;

/*!
 	@method
 	@abstract	显示菜单
 	@discussion
 	@param 	view
 	@param 	rect
 	@param 	menuItems 	
 */
- (void)showMenuInView:(UIView *)view
              fromRect:(CGRect)rect
             menuItems:(NSArray *)menuItems;

@end
