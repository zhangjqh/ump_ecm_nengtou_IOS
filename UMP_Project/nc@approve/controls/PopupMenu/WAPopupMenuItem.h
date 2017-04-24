/*!
 @header	 WAPopupMenuItem.h
 @abstract	 菜单项
 @discussion
 @author	chenrh1
 @copyright	yonyou
 @version	1.0 2013-11-23 11:27:02 Creation
 */

#import <Foundation/Foundation.h>


@interface CWAPopupMenuItem : NSObject

{
  UIImage *iImage;
  NSString *iTitle;
  SEL iAction;
  UIColor *iFforeColor;
  NSTextAlignment iAalignment;
  NSMutableDictionary *iOtherAttribute;
  int iTag;
  int iSupertag;
  

  
}

/*!
 @property
 @abstract	image	菜单项图标
 */
@property (nonatomic, retain) UIImage *iImage;
/*!
 @property
 @abstract	title	菜单项名称
 */
@property (nonatomic, copy) NSString *iTitle;
/*!
 @property
 @abstract	target	响应事件的类
 */
@property (nonatomic, assign) id iTarget;
/*!
 @property
 @abstract	action	菜单项动作
 */
@property (nonatomic) SEL iAction;
/*!
 @property
 @abstract	foreColor	菜单项颜色
 */
@property (nonatomic, retain) UIColor *iFforeColor;
/*!
 @property
 @abstract	alignment	菜单项内容对齐方式
 */
@property (nonatomic) NSTextAlignment iAalignment;

/*!
 @property
 @abstract	otherAttribute	菜单项的其它自定义属性
 */
@property(nonatomic,retain)NSMutableDictionary *iOtherAttribute;
/*!
 @property
 @abstract	iTag	菜单项item的tag
 */
@property (nonatomic) int iTag;

/*!
 @property
 @abstract	iSupertag	响应弹出菜单事件的tag
 */
@property (nonatomic) int iSupertag;




/*!
 @method
 @abstract	构造一个菜单项
 @discussion	target,image和action可以为空
 @param  title 菜单项标题
 @param  image 菜单项图片
 @param 	target 响应点击事件的类
 @param  action 菜单项点击的动作
 @result	一个菜单项
 */
+ (instancetype) createMenuItemWithTitle:(NSString *) title
                                   image:(UIImage *) image
                                  target:(id)target
                                  action:(SEL) action;

/*!
 @method
 @abstract	创建菜单项
 @discussion
 @param  title 菜单项标题
 @param  image 菜单项图片
 @param 	target 响应点击事件的类
 @param 	tag 菜单项item的tag
 @param 	supertag 响应弹出菜单事件的tag
 @result	一个菜单项
 */
+ (instancetype) menuItem:(NSString *) title
                    image:(UIImage *) image
                   target:(id)target
                   action:(SEL) action
                      tag:(int)tag
                 supertag:(int)supertag;


/*!
 @method
 @abstract	菜单项点击的时候
 @discussion
 */
- (void) performAction;

/*!
 @method
 @abstract 判断菜单项是否可以点击
 @discussion
 @result
 */
- (BOOL) enabled;


@end
