
/*!
 @header	WAPopupMenu.h
 @abstract	弹出菜单控件
 @discussion 弹出菜单控件
 
 如果上下间隔等距，左右间隔等距>>
 *菜单项高度=文字的高度>图片的高度？文字的高度：图片的高度+Y方向距外边框的距离*2
 *菜单项宽度 = 有图片？图片的宽度+X方向距外边框间距：0+文字的宽度+X方向距外边框间距*4
 比如：图片宽为 iX ， 文字宽为 tX 则宽为:X+iX+X+X+X+tX+X
 
 如果不等间距>>>>
 高度 = 文字的高度>图片的高度？文字的高度：图片的高度+上边距+下边距
 宽度 = 左边距 + 有图片？（图片的宽度+中间间隔） ：0 + 文字的宽度 + 右边距
 
 1、引入WAPopupMenu.h
 2、在需要显示弹出菜单的按钮的点击事件里:
 (1)创建菜单项:调用+ (instancetype) createMenuItemWithTitle:(NSString *) title
 image:(UIImage *) image
 target:(id)target
 action:(SEL) action;
 (2)给CWAPopupMenuItem属性赋值，调用get，set
 (3)菜单显示:调用 + (void) showMenuInView:(UIView *)view
 fromRect:(CGRect)rect
 menuItems:(NSArray *)menuItems;
 
 @author	chenrh1
 @copyright	ufida
 @version	1.0 2013-07-17 17:58:52 Creation
 
*/
 
 
#import <Foundation/Foundation.h>

@interface CWAPopupMenu : NSObject
{
  CGFloat iMinMenuItemHeight;
  CGFloat iMinMenuItemWidth;
  CGFloat iMarginX;//左右
  CGFloat iMarginY;//上下
  CGRect iMenuFrame;
  NSString *iMenuBgImageName;
  UIImage *iBgImage;
  CGFloat iArrowSize;
  CGRect iShaDeFrame;
  UIImage *iMenuItemSelectBgImage;
  
  CGFloat iToTop;
  CGFloat iToLeft;
  CGFloat iToDown;
  CGFloat iToRight;
  CGFloat iCenter;

  BOOL isEqualMargin;
  UIImage *iLineMage;
  CGRect iMargin;
  UIColor *iBreakLineColor;
  CGFloat iBreakLineHeight;
  CGFloat iBreakLineMarginHeight;
  
}



/*!
 @property
 @abstract	kMinMenuItemHeight	菜单项的最小高度
 */
@property(nonatomic)CGFloat iMinMenuItemHeight;

/*!
 @property
 @abstract	kMinMenuItemWidth	菜单项的最小宽度
 */
@property(nonatomic)CGFloat iMinMenuItemWidth;

/*!
 @property
 @abstract	kMarginX	 x轴外边框间距
 */
@property(nonatomic)CGFloat iMarginX;

/*!
 @property
 @abstract	kMarginY	 y轴外边框间距
 */
@property(nonatomic)CGFloat iMarginY;
/*!
 @property
 @abstract	iMenuFrame	菜单的frame;
 */
@property (nonatomic, assign) CGRect iMenuFrame;

/*!
 @property
 @abstract	iMenuBgImageName	菜单的背景图片
 */
@property (nonatomic, copy) NSString *iMenuBgImageName;
/*!
 	@property
 	@abstract	iArrowSize	菜单尖儿的高度
 */
@property(nonatomic) CGFloat iArrowSize;
/*!
 	@property
 	@abstract	iBgImage	 背景图片
 创建图片的方法建议如下
 UIEdgeInsets insets = UIEdgeInsetsMake(20.0f,10.0f,20.0f,10.0f);
 UIImage *targetImage = [[UIImage imageNamed:@"tab_popupmenu_bg_right"]resizableImageWithCapInsets:insets];
 
 */
@property(nonatomic,retain) UIImage *iBgImage;

/*!
 	@property
 	@abstract	iShaDeFrame	遮罩层的frame,默认为当前view.bounds
 */
@property(nonatomic)CGRect iShaDeFrame;
/*!
 	@property
 	@abstract	iMenuItemSelectBgImage	菜单项选中 的背景图片 默认  下面两个颜色渐变的图片
 
             0.216, 0.471, 0.871, 1,
             0.059, 0.353, 0.839, 1,
 
            创建图片建议如下
            UIEdgeInsets insets = UIEdgeInsetsMake(20.0f,10.0f,20.0f,10.0f);
            UIImage *targetImage = [[UIImage imageNamed:@"tab_popupmenu_bg_right"]resizableImageWithCapInsets:insets];
 
 */
@property(nonatomic,retain) UIImage *iMenuItemSelectBgImage;


/**
 菜单项里地控件距外边缘的间距 控件之间的间距
 */
/*!
 @property
 @abstract	iToTop	 上
 */
@property (nonatomic) CGFloat iToTop;

/*!
 @property
 @abstract	iToLeft	左
 */
@property (nonatomic) CGFloat iToLeft;

/*!
 @property
 @abstract	iToDown	下
 */
@property (nonatomic) CGFloat iToDown;

/*!
 	@property
 	@abstract	isEqualMargin	是否左右不等间距 上下不等间距
 */
@property (nonatomic) BOOL isEqualMargin;

/*!
 @property
 @abstract	iToRight	右
 */
@property (nonatomic) CGFloat iToRight;

/*!
 @property
 @abstract	iCenter	中
 */
@property (nonatomic) CGFloat iCenter;

/*!
 	@property
 	@abstract	iLineMage	分割线图片
 */
@property(nonatomic,retain) UIImage *iLineMage;

/*!
 	@property
 	@abstract	iMargin	菜单 整体边框距离 [上，左，下，右]
 */
@property(nonatomic) CGRect iMargin;

/*!
 	@property
 	@abstract	iBreakLineColor	分割线的背景颜色
 */
@property(nonatomic,copy) UIColor *iBreakLineColor;

/*!
 	@property
 	@abstract	iBreakLineHeight	分割线的高度
 */
@property(nonatomic) CGFloat iBreakLineHeight;
/*!
 	@property
 	@abstract	iBreakLineMarginHeight	分割线距相邻view的距离
 */
@property(nonatomic) CGFloat iBreakLineMarginHeight;





/*!
 @method
 @abstract
 @discussion	菜单单例
 @result
 */
+ (instancetype) sharedMenu;

/*!
 @method
 @abstract	点击按钮的时候弹出菜单
 @discussion 
           调用者知道展示的菜单的frame，需要调用[CWAPopupMenu sharedMenu]方法获得实例，给iMenuFrame赋值
           默认frame (210, 35, 114, 81)
           默认在导航栏的右barIten 弹出菜单 默认白色背景图片蓝色边框 
           更改背景图片 请给 iMenuBgImageName 赋值
           
 @param 	view 	显示菜单的view
 @param 	menuItems 	菜单项数组
 */
+ (void) showMenuInView:(UIView *)view
              menuItems:(NSArray *)menuItems;

/*!
 @method
 @abstract	点击按钮的时候弹出菜单
 @discussion 
              调用者不需计算菜单的frame,需要想响应点击事件弹出菜单控件的frame
              如果要设置菜单的背景，给iBgImage赋值，默认无背景图片
 @param 	view 	显示菜单的View
 @param 	rect 	响应点击事件的按钮的frame
 @param 	menuItems 	菜单项数组
 */
+ (void) showMenuInView:(UIView *)view
               fromRect:(CGRect)rect
              menuItems:(NSArray *)menuItems;


/*!
 @method
 @abstract	隐藏弹出菜单
 @discussion
 */
+ (void) dismissMenu;


/*!
 @method
 @abstract	菜单的背景颜色
 @discussion
 @result	 UIColor
 */
+ (UIColor *) tintColor;

/*!
 @method
 @abstract	设置菜单的背景颜色
 @discussion
 */
+ (void) setTintColor: (UIColor *) tintColor;


/*!
 @method
 @abstract	菜单的字体
 @discussion
 @result	 UIFont
 */
+ (UIFont *) titleFont;

/*!
 @method
 @abstract	设置菜单的字体
 @discussion
 */
+ (void) setTitleFont: (UIFont *) titleFont;


@end
