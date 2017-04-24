
#import <Foundation/Foundation.h>


/*!
 	@header	复选框控件
 	@abstract	
 	@discussion	
 	@author	huych
 	@copyright	ufida
 	@version	1.0 2013-03-18 13:42:38 Creation
 */
@interface CWACheckBox : UIButton {

	
	UIImage *iCheckedImage;//选中状态的图片
	UIImage *iUncheckedImage;  //没有选中状态的图片
	BOOL isChecked;
}

@property(nonatomic, readonly) BOOL isChecked;
@property(nonatomic, retain) UIImage *iCheckedImage;
@property(nonatomic, retain) UIImage *iUncheckedImage;


/*!
 	@method
 	@abstract	初始化方法
 	@discussion
 	@param 	theFrame 	位置坐标
 	@param 	aCheckedImageName 	选中的时候的图片
 	@param 	aUnCheckedImageName 	未选中时候的图片
 	@param 	aChecked 	初始化是的按钮状态
 	@result	
 */
- (id)initWithFrame:(CGRect)theFrame
withCheckedImageName:(NSString *)aCheckedImageName
withUnCheckedImageName:(NSString *)aUnCheckedImageName
       withChecked:(BOOL)aChecked;


/*!
 	@method
 	@abstract	设置复选框选中装填
 	@discussion
 	@param 	aChecked 	是否选中
 */
- (void)setIsChecked:(BOOL)aChecked;


@end
