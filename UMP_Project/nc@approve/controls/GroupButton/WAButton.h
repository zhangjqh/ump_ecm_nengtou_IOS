
#import <UIKit/UIKit.h>
typedef enum
{
  ENORMAL = 0,
  EHIGHLIGHT
}TWAButtonStatus;
/*!
 *	@header	WAButton.h
 *	@abstract	groupbutton使用的自定义按钮
 *	@discussion
 *	@author	huych
 *	@copyright	ufida
 *	@version	1.0 2012-08-03 08:43:19 Creation
 */
@interface CWAButton : UIButton

{
  UIColor *iNormalStatusColor;
  UIColor *iHighLightStatusColor;
  
  UIColor *iNormalStatusShadowColor;
  UIColor *iHighLightStatusShadowColor;
  
  CGSize iNormalStatusShadowOffSize;
  CGSize iHighLightStatusShadowOffSize;
  
  NSString *iStatusCode;
  NSString *iServiceCode;
  NSString *iStatus;
  UIImage *iHighlightImage;
  UIImage *iNormalImage;
  NSString *iText;
  TWAButtonStatus iStatusType;
  BOOL iNoImgFlag;
  UIColor *iNormalBackColor;
  UIColor *iHighLightBackColor;
  CGFloat iButtonWidth;

}
/*!
 *	@property
 *	@abstract	iStatusCode	状态标志，用于保存后台传送过来的标识符
 */
@property (nonatomic,copy) NSString *iStatusCode;

/*!
 *	@property
 *	@abstract	iServiceCode	服务器编码
 */
@property (nonatomic,copy) NSString *iServiceCode;
/*!
 *	@property
 *	@abstract	iStatus	状态
 */
@property (nonatomic,copy) NSString *iStatus;

/*!
 *	@property
 *	@abstract	iHighlightImage	高亮状态时的图片
 */
@property (nonatomic,retain) UIImage *iHighlightImage;

/*!
 *	@property
 *	@abstract	iNormalImage	普通状态时的图片
 */
@property (nonatomic,retain) UIImage *iNormalImage;

/*!
 *	@property
 *	@abstract	iText	显示的文字
 */
@property (nonatomic,retain) NSString *iText;

@property (nonatomic, assign) TWAButtonStatus iStatusType;

@property (nonatomic, assign) BOOL iNoImgFlag;

@property (nonatomic, retain)UIColor *iNormalBackColor;

@property (nonatomic, retain) UIColor *iHighLightBackColor;

/*!
 	@property
 	@abstract	iButtonWidth	按钮宽度（ios7适配用颜色填充背景）
 */
@property (nonatomic, assign)CGFloat iButtonWidth;
/*!
 *	@method
 *	@abstract	初始化方法
 *	@discussion
 *	@param 	aHighlightImage 	高亮图片
 *	@param 	aNormalImage 	普通图片
 *	@param 	aText 	文字
 *	@param 	aStatusCode 	状态编码
 *	@param 	aServiceCode 	服务器编码
 *	@param 	aStatus 	状态
 *	@result
 */
- (id)initWithNormalImage:(UIImage *)aNormalImage
       withHighlightImage:(UIImage *)aHighlightImage
                 withText:(NSString *)aText
           withStatusCode:(NSString *)aStatusCode
          withServiceCode:(NSString *)aServiceCode
               withStatus:(NSString *)aStatus;

/*!
 *	@method
 *	@abstract	初始化方法
 *	@discussion
 *	@param 	aHighlightImage 	高亮图片
 *	@param 	aNormalImage 	普通图片
 *	@param 	aText 	文字
 *	@param 	aStatusCode 	状态编码
 *	@param 	aServiceCode 	服务器编码
 *	@param 	aStatus 	状态
 *	@result
 */
- (id)initWithNormalColor:(UIColor *)aNormalImage
       withHighlightColor:(UIColor *)aHighlightImage
                 withText:(NSString *)aText
           withStatusCode:(NSString *)aStatusCode
          withServiceCode:(NSString *)aServiceCode
               withStatus:(NSString *)aStatus
                withWidth:(NSInteger)aWidth;

/*!
 *	@method
 *	@abstract	为按钮的各个状态title修改字体和颜色
 *	@discussion
 *	@param 	aFont 	字体
 *	@param 	aColor 	颜色
 *	@param 	aStatus 	按钮状态
 *	@result
 */
- (void)setTitleWithFont:(UIFont *)aFont
               withColor:(UIColor *)aColor
              withStatus:(UIControlState)aStatus;

- (void)setShadowColor:(UIColor *)aShadowColor
     WithShadowOffSize:(CGSize)aShadowOffSize
            withStatus:(UIControlState)aStatus;
/*!
 *	@method
 *	@abstract	获取宽度
 *	@discussion	如果图片宽度不同，以最小的为宽度
 *	@result	获取图片的宽度
 */
- (CGFloat)getWidth;

/*!
 *	@method
 *	@abstract	获取高度
 *	@discussion	如果图片宽度不同，以最小的为高度
 *	@result	获取图片的高度
 */
- (CGFloat)getHeigth;

/*!
 *	@method
 *	@abstract	设置按钮状态
 *	@discussion
 *	@param 	aStatus
 */
- (void)setButtonStatus:(TWAButtonStatus)aStatus;

@end
