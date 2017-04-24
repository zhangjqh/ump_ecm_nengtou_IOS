/*!
 @header UILabel+WALabelCategory.h
 @abstract  UILabel Category
 @author 
 @version Copyright (c) 2013 __ma__. All rights reserved.1.00 on 13-4-9
 */

#import <UIKit/UIKit.h>

@interface UILabel (WALabelCategory)

/*!
 @method
 @abstract 根据给定的label高度和最小 font size，自动将内容展示到label中。展示原则：用尽量大的字体展示尽量多的内容
 @discussion 注意line number＝0 
 @param
 @result
 */
- (void)adjustFontSizeToFit;


/*!
 	@method
 	@abstract	最后一行到位置aLastLineWidth的时候，文字展现不下时，断尾处理
 	@discussion
 	@param 	aLastLineWidth 	最后一行的位置
 	@param 	aisOnlyWhenWrap 	是否仅仅当换行的时候才处理
 	@result
 */
- (void)lastLineWrapithLastLineWidth:(CGFloat)aLastLineWidth
                  WithIsOnlyWhenWrap:(BOOL)aisOnlyWhenWrap;



/*!
 	@method
 	@abstract	根据给定的label的宽度和lable的坐标，自动将内容展示到label中。展示原则：自动折行
 	@discussion	 
 	@param 	x 	label 横坐标
 	@param 	y   label 纵坐标
  @param  alableWidth lable的宽度
 */
- (void)adjustFontSizeToFitLineWrapWithLableWidth:(float) alableWidth andLablePointX:(float)x andLablePointY:(float)y;

/*!
 @method
 @abstract	 根据label的大小和字体的大小，算出一行最多能放下几个字符
 @discussion 一般用于需要自己截取字符串分多行显示
 @param 	 原始字符串
 */
- (NSInteger)adjustTextSizeToFitALineLabel:(NSString *)textString;
/*!
 	@method
 	@abstract	根据给定的label的size和给定的字体、文本，自动计算出相应label的合适size。展示原则：自动折行
 	@discussion
 	@param 	font
 	@param 	aSize label的初始大小
 	@param 	aText
 	@result	CGSize
 */
- (CGSize)getIOS7SizebyFont:(UIFont *)font
                       size:(CGSize)aSize
                       text:(NSString *)aText;

@end
