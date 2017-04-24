
#import <UIKit/UIKit.h>
#import "WAAnnularView.h"

/*!
 *	@header	
 *	@abstract	等待旋转视图
 *	@discussion	使用单例模式
 *	@author	huych
 *	@copyright	ufida
 *	@version	1.0 2012-06-29 14:45:23 Creation
 */
@interface CWASpinnerView : UIView
{
  CGSize iSize;
  UILabel *iLabel;
  NSString *iLabelText;
  CWAAnnularView *iShareAnnularView;
  UIWindow *iAlertLevelWindow;
  UIWindow *iPreviouseKeyWindow;
  BOOL isShow;
}

/*!
 *	@property
 *	@abstract	isShow	是否显示
 */
@property (nonatomic,assign)  BOOL isShow;

/*!
 *	@property
 *	@abstract	iLabelText	等待框旋转时显示的文字
 */
@property (nonatomic,copy,setter = setILabelText:)  NSString *iLabelText;

/*!
 *	@property
 *	@abstract	iLabelText	文字框
 */
@property (nonatomic,retain)  UILabel *iLabel;

/*!
 *	@property
 *	@abstract	iSize	尺寸
 */
@property (assign) CGSize iSize;


/*!
 *	@method
 *	@abstract	获取单例的等待框
 *	@discussion	使用的是单例模式，注意在使用之后请隐藏
 *	@result	单例的等待框
 */
+ (CWASpinnerView *)sharedCWASpinnerView;

/*!
 *	@method
 *	@abstract	显示框到windows中
 *	@discussion	
 *	@param 	isFullScreen 	是否全屏，否的话，不遮住状态栏和导航栏
 *	@param 	aText 	
 */
- (void)showInWindowsIsFullScreen:(BOOL)isFullScreen withShowingText:(NSString *)aText;

/*!
 *	@method
 *	@abstract	隐藏等待框
 *	@discussion	
 */
- (void)hiddenSpinnerView;

@end
