#import <UIKit/UIKit.h>

/*!
 *	@header	WAAnnularView.h
 *	@abstract	环形旋转视图
 *	@discussion	
 *	@author	huych
 *	@copyright	ufida
 *	@version	1.0 2012-07-09 09:19:32 Creation
 */
@interface CWAAnnularView : UIView

{
   float iProgress;
}

/*!
 *	@property
 *	@abstract	iProgress	转过的弧度
 */
@property (nonatomic,assign,setter = setIProgress:) float iProgress;
/*!
 *	@method
 *	@abstract	开始旋转
 *	@discussion	
 */
- (void)startTimer;

/*!
 *	@method
 *	@abstract	结束旋转
 *	@discussion	
 */
- (void)stopTimer;

@end
