/*!
 @header CWAExpandGrowTextView.h
 @abstract 封装的可增长的uitextview
 @author dequan 
 @copyright ufida
 @version 1.00 2012/05/11 Creation 
 */

#import <UIKit/UIKit.h>
#import "WAGrowTextView.h"
@protocol MWAExpandGrowTextViewDelegate;

@interface CWAExpandGrowTextView : UIView<UITextViewDelegate>
{
  //textview用于输入
  CWAGrowTextView *iGrowTextView;
  //背景视图
  UIImageView *iTextViewBackgroundImage;
  //最小高度
  int iMinimumHeight;
  //最大高度
	int iMaximumHeight;
  //最大行数
  int iMaximumNumberOfLines;
  //最小行数
	int iMinimumNumberOfLines;
  //是否动画改变高度
	BOOL iAnimateHeightChange;
  //对齐
	NSTextAlignment iTextAlignment;
  //选择范围
	NSRange iSelectedRange;
  //是否可编辑
	BOOL iEditable;
  //textview的内容范围
	UIDataDetectorTypes iDataDetectorTypes;
  //return建的类型
	UIReturnKeyType iReturnKeyType;
  BOOL iForceSizeUpdate;
  //占位符
  NSString *iPlaceholder;
  //占位lable
  UILabel *placeholderLabel;
}

/*!
 @property
 @abstract 一个可增长textview的uitextview
 */
@property (nonatomic, retain) UITextView *iGrowTextView;

/*!
 @property
 @abstract 最大行数
 */
@property (nonatomic, assign) int iMaximumNumberOfLines;

/*!
 @property
 @abstract 最小行数
 */
@property (nonatomic, assign) int iMinimumNumberOfLines;

/*!
 @property
 @abstract 是否动态的改变高度
 */
@property (nonatomic, assign) BOOL iAnimateHeightChange;

/*!
 @property
 @abstract 自己的代理
 */
@property (nonatomic, assign) id<MWAExpandGrowTextViewDelegate> delegate;

/*!
 @property
 @abstract uitextveiw的text
 */
@property (nonatomic, assign) NSString *iText;

/*!
 @property
 @abstract uitextveiw的字体font
 */
@property (nonatomic, assign) UIFont *iFont;

/*!
 @property
 @abstract uitextveiw的字体颜色
 */
@property (nonatomic, assign) UIColor *iTextColor;

/*!
 @property
 @abstract uitextveiw的字体排版方式
 */
@property (nonatomic, readonly) NSTextAlignment iTextAlignment;

/*!
 @property
 @abstract uitextveiw选择范围
 */
@property (nonatomic, readonly) NSRange iSelectedRange;

/*!
 @property
 @abstract uitextveiw是否可编辑
 */
@property (nonatomic, getter=isEditable) BOOL iEditable;

/*!
 @property
 @abstract uitextveiw的内容数据类型
 */
@property (nonatomic, readonly) UIDataDetectorTypes iDataDetectorTypes __OSX_AVAILABLE_STARTING(__MAC_NA, __IPHONE_3_0);

/*!
 @property
 @abstract uitextveiw的键盘的return建的类型
 */
@property (nonatomic, readonly) UIReturnKeyType iReturnKeyType;

/*!
 @property
 @abstract 自己的背景颜色
 */
@property (nonatomic, retain) UIImageView *iTextViewBackgroundImage;

/*!
 @property
 @abstract uitextveiw的占位字符
 */
@property (nonatomic,copy) NSString *iPlaceholder;

/*!
 @method
 @abstract uitextview是否有字
 @discussion uitextview有字返回yes无返回no
 @result bool值有字为yes无则为no
 */
- (BOOL)hasText;

/*!
 @method
 @abstract uitextview滚动去可见的range
 @discussion uitextview滚动去可见的范围
 @param range要滚动的范围
 @result 返回void
 */
- (void)scrollRangeToVisible:(NSRange)range;

/*!
 @method
 @abstract 设置uitextview的text为空
 @discussion 设置uitextview的text为空
 @result void
 */
- (void)clearText;

@end

/*!
 @protocol
 @abstract 这个CWAExpandGrowTextView类的一个protocol
 @discussion 实现uitextview的代理事件
 */
@protocol MWAExpandGrowTextViewDelegate<NSObject>
@optional

/*!
 @method
 @abstract uitextview开始编辑调用此代理
 @discussion uitextview开始编辑调用此代理，并判读是否开始编辑
 @param expandingTextView触发事件的uitextview
 @result BOOL
 */
- (BOOL)expandingTextViewShouldBeginEditing:(CWAExpandGrowTextView *)expandingTextView;

/*!
 @method
 @abstract uitextview将要结束编辑调用吃方法
 @discussion  uitextview将要结束编辑调用吃方法，并判读视图结束编辑
 @param expandingTextView触发事件的uitextview
 @result BOOL
 */
- (BOOL)expandingTextViewShouldEndEditing:(CWAExpandGrowTextView *)expandingTextView;

/*!
 @method
 @abstract uitextview开始输入调用此方法
 @discussion uitextview开始输入调用此方法
 @param expandingTextView触发事件的uitextview
 @result void
 */
- (void)expandingTextViewDidBeginEditing:(CWAExpandGrowTextView *)expandingTextView;

/*!
 @method
 @abstract uitextview结束输入调用此方法
 @discussion uitextview结束输入调用此方法
 @param expandingTextView触发事件的uitextview
 @result void
 */
- (void)expandingTextViewDidEndEditing:(CWAExpandGrowTextView *)expandingTextView;

/*!
 @method
 @abstract uitextview的text改变使调用此方法
 @discussion uitextview的text改变使调用此方法
 @param expandingTextView触发事件的uitextview
 @param range要改变的范围
 @param text要改变成的字
 @result void
 */
- (BOOL)expandingTextView:(CWAExpandGrowTextView *)expandingTextView 
  shouldChangeTextInRange:(NSRange)range 
          replacementText:(NSString *)text;

/*!
 @method
 @abstract uitextview内容改变以后调用此方法
 @discussion uitextview内容改变以后调用此方法
 @param expandingTextView触发事件的uitextview
 @result void
 */
- (void)expandingTextViewDidChange:(CWAExpandGrowTextView *)expandingTextView;

/*!
 @method
 @abstract uitextview将要改变高度
 @discussion uitextview将要改变高度
 @param expandingTextView触发事件的uitextview
 @param height为uitextview要改变去的高度
 @result void
 */
- (void)expandingTextView:(CWAExpandGrowTextView *)expandingTextView willChangeHeight:(float)height;

/*!
 @method
 @abstract uitextview已经改变去高度height
 @discussion uitextview已经改变去高度height
 @param expandingTextView触发事件的uitextview
 @param height为现在uitextview的高度
 @result void
 */
- (void)expandingTextView:(CWAExpandGrowTextView *)expandingTextView didChangeHeight:(float)height;

/*!
 @method
 @abstract 改变选择区域
 @discussion 改变选择区域
 @param expandingTextView触发事件的uitextview
 @result void
 */
- (void)expandingTextViewDidChangeSelection:(CWAExpandGrowTextView *)expandingTextView;

/*!
 @method
 @abstract 按下return响应的事件
 @discussion 按下return响应的事件
 @param expandingTextView触发事件的uitextview
 @result void
 */
- (BOOL)expandingTextViewShouldReturn:(CWAExpandGrowTextView *)expandingTextView;

@end