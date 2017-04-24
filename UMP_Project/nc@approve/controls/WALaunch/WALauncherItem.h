/*!
 @header	WALauncherItem.h
 @abstract	launcher界面上
 @discussion
 @author	huych
 @copyright	ufida
 @version	1.0 2014-05-29 14:22:49 Creation
 */

#import <UIKit/UIKit.h>


@class CWACustomBadge;

/*!
 	@protocol
 	@abstract	item委托
 	@discussion
 */
@protocol CWALauncherItemDelegate <NSObject>

-(void)didDeleteItem:(id)item;
@end

@interface CWALauncherItem : UIControl

{
	BOOL iDragging;
	BOOL iDeletable;
  BOOL iTitleBoundToBottom;
  UIButton *iCloseButton;
  NSDictionary *iOterInfoDic;
}

@property (nonatomic, assign) id iDelegate;
@property (nonatomic, retain) NSString *iTitle;
@property (nonatomic, retain) id iImage;
@property (nonatomic,readonly,retain)UIButton *iCloseButton;
@property (nonatomic, readonly) NSDictionary *iOterInfoDic;

@property (nonatomic, strong,readonly) CWACustomBadge *iBadge;

/*!
 	@method
 	@abstract 初始化方法
 	@discussion
 	@param 	aTitle 	标题
 	@param 	aImage 	图片
 	@param 	aDeletable 	是否可删除
 	@param 	aOtherInfoDic 	其他信息
 	@result
 */
- (id)initWithTitle:(NSString *)aTitle
          WithImage:(UIImage *)aImage
      WithDeletable:(BOOL)aDeletable
   WithOtherInfoDic:(NSDictionary *)aOtherInfoDic;


/*!
 	@method
 	@abstract	初始化方法
 	@discussion
 	@param 	aTitle 	标题
 	@param 	aImage 	图标
 	@param 	aDeletable 	是否能够删除
 	@result
 */
- (id)initWithTitle:(NSString *)aTitle
              image:(UIImage *)aImage
          deletable:(BOOL)aDeletable;



/*!
 	@method
 	@abstract	布局item
 	@discussion
 	@result
 */
- (void)layoutItem;

/*!
 	@method
 	@abstract	设置是否移动状态
 	@discussion
 	@param 	flag 是否移动状态
 	@result
 */
- (void)setDragging:(BOOL)flag;

/*!
 	@method
 	@abstract	获取是否移动状态
 	@discussion
 	@result
 */
- (BOOL)dragging;

/*!
 	@method
 	@abstract	是否能够删除
 	@discussion
 	@result
 */
- (BOOL)deletable;


/*!
 	@method
 	@abstract	获取文字是否在底部
 	@discussion
 	@result
 */
- (BOOL)titleBoundToBottom;

/*!
 	@method
 	@abstract	设置文字是否在底部
 	@discussion
 	@param 	bind 	位置是否在底部
 	@result
 */
- (void)setTitleBoundToBottom:(BOOL)bind;


/*!
 	@method
 	@abstract	获取界面上的文字
 	@discussion
 	@result
 */
- (NSString *)badgeText;

/*!
 	@method
 	@abstract	设置界面上的文字
 	@discussion
 	@param 	text 	文字
 	@result
 */
- (void)setBadgeText:(NSString *)text;

/*!
 	@method
 	@abstract	设置角标属性
 	@discussion
 	@param 	customBadge 	角标属性
 	@result
 */
- (void)setCustomBadge:(CWACustomBadge *)customBadge;


@end
