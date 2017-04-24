#import <UIKit/UIKit.h>
#import "WAButtonImagesArray.h"
#import "WAButton.h"
/*!
 *	@header	WAGroupButtonView.h
 *	@abstract	按钮组视图
 *	@discussion	所有的按钮中同时有且只有一个button被点击，所有的按钮一字排开
 *	@author	huych
 *	@copyright	ufida
 *	@version	1.0 2012-07-17 08:59:22 Creation
 */
@interface CWAGroupButtonView : UIView
{
  CWAButtonImagesArray *iButtonImageArray;
  CWAButton *currentButton;
  int currentHighlightIndex;
}
@property (nonatomic,retain) CWAButtonImagesArray *iButtonImageArray;

/*!
 *	@method
 *	@abstract	初始化按钮组界面
 *	@discussion
 *	@param 	aButtonImages 	按钮图片组
 *	@result	初始化的按钮组界面，需要释放，oewned
 */
- (id)initWithButtonImages:(CWAButtonImagesArray *)aButtonImages;

/*!
 *	@method
 *	@abstract	使用按钮个数等初始化界面
 *	@discussion
 *	@param 	aButtonCount 	按钮个数１-４个，否则无效
 *	@param 	aTitles 	所有按钮的名称
 *	@param 	aStatusCode 	状态编码
 *	@param 	aServiceCode 	服务器编码
 *	@param 	aStatus 	状态
 *	@result	初始化的按钮组界面，需要释放，oewned
 */
- (id)initWithaButtonCount:(int)aButtonCount
                 withTitle:(NSArray *)aTitles
            withStatusCode:(NSArray *)aStatusCode
           withServiceCode:(NSArray *)aServiceCode
                withStatus:(NSString *)aStatus;
/*!
 *	@method
 *	@abstract	使用按钮个数等初始化界面
 *	@discussion
 *	@param 	aButtonCount 	按钮个数１-４个，否则无效
 *	@param 	aTitles 	所有按钮的名称
 *	@param 	aStatusCode 	状态编码
 *	@param 	aServiceCode 	服务器编码
 *	@param 	aStatus 	状态
 *	@param 	aResourceBundleOrPath 	指定加载资源的bundle或者path
 *	@result	初始化的按钮组界面，需要释放，oewned
 */
- (id)initWithaButtonCount:(int)aButtonCount
                 withTitle:(NSArray *)aTitles
            withStatusCode:(NSArray *)aStatusCode
           withServiceCode:(NSArray *)aServiceCode
                withStatus:(NSString *)aStatus
  withResourceBundleOrPath:(NSString *)aResourceBundleOrPath;

/*!
 *	@method
 *	@abstract	设置界面字体和颜色
 *	@discussion
 *	@param 	aFont 	页面字的字体
 *	@param 	aColor 	页面字的颜色
 *	@param 	aStatus 	按钮的状态
 *	@result
 */
- (void)setTitleWithFont:(UIFont *)aFont
               withColor:(UIColor *)aColor
              withStatus:(UIControlState)aStatus;

- (void)setTitleWithShadowColor:(UIColor *)aColor
              withShadowOffSize:(CGSize)aShadowOffSize
                     withStatus:(UIControlState)aStatus;
/*!
 *	@method
 *	@abstract	获取对应索引的按钮，索引为图片在CWAButtonImagesArray中添加的位置
 *	@discussion	提供给外部程序添加其他的事件响应等
 *	@param 	aIndex 	图片在CWAButtonImagesArray中添加的位置
 *	@result	按钮
 */
- (CWAButton *)getButtonObjectOfIndex:(int)aIndex;

/*!
 *	@method
 *	@abstract	通过索引设置高亮按钮
 *	@discussion
 *	@param 	aIndex 	索引
 */
- (void) setHighlightButtonWithIndex:(int)aIndex;
/*!
 *	@method
 *	@abstract	获取当前的高亮按钮
 *	@discussion
 *	@result	不需释放
 */
- (CWAButton *)getCurrentHighlightButton;

/*!
 @method
 @abstract	获取当前的高亮按钮的索引
 @discussion
 @result
 */
- (int)getCurrentHighlightIndex;


@end
