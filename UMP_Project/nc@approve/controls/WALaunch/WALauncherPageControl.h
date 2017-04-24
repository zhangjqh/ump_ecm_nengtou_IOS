
/*!
 	@header	WALauncherPageControl
 	@abstract	launcher界面多页显示界面类
 	@discussion
 	@author	huych
 	@copyright	ufida
 	@version	1.0 2014-05-29 14:07:48 Creation
 */
#import <UIKit/UIKit.h>
@interface CWALauncherPageControl : UIPageControl

{
	NSInteger currentPage;
	NSInteger numberOfPages;
  NSInteger maxNumberOfPages;
	BOOL hidesForSinglePage;
}

/*!
 	@property
 	@abstract	currentPage	当前的页码
 */
@property (nonatomic) NSInteger currentPage;

/*!
 	@property
 	@abstract	numberOfPages	总共的页码
 */
@property (nonatomic) NSInteger numberOfPages;

/*!
 	@property
 	@abstract	maxNumberOfPages	允许的最大页码数
 */
@property (nonatomic) NSInteger maxNumberOfPages;

/*!
 	@property
 	@abstract	hidesForSinglePage	只有一页时是否隐藏
 */
@property (nonatomic) BOOL hidesForSinglePage;

/*!
 	@property
 	@abstract	inactivePageColor	非活动页码的颜色
 */
@property (nonatomic, strong) UIColor *inactivePageColor;

/*!
 	@property
 	@abstract	activePageColor	活动页面的颜色
 */
@property (nonatomic, strong) UIColor *activePageColor;


@end
