/*!
 	@header	WALauncherViewController.h
 	@abstract	九宫格界面
 	@discussion
 	@author	huych
 	@copyright	ufida
 	@version	1.0 2014-05-29 10:31:34 Creation
 */
#import <UIKit/UIKit.h>
#import "WALauncherView.h"
#import "WALauncherItem.h"
@interface CWALauncherViewController : UIViewController <CWALauncherViewDelegate, UINavigationControllerDelegate>
{

  UINavigationController *iLauncherNavigationController;
  CWALauncherView *iLauncherView;
  NSMutableDictionary *iAppControllers;
  BOOL isNeedReloadData;
  int iPortraitColumnCount;
  int iPortraitRowCount ;
}

/*!
 	@property
 	@abstract	iLauncherNavigationController	导航
 */
@property (nonatomic, retain) UINavigationController *iLauncherNavigationController;

/*!
 	@property
 	@abstract	iLauncherView	首页九宫格界面
 */
@property (nonatomic, retain) CWALauncherView *iLauncherView;

/*!
 	@property
 	@abstract	iAppControllers	九宫格点击以后对应的controllers目前已无用
 */
@property (nonatomic, retain) NSMutableDictionary *iAppControllers;

/*!
 	@property
 	@abstract	iPortraitColumnCount	每页的列数
 */
@property (nonatomic,assign)  int iPortraitColumnCount;

/*!
 	@property
 	@abstract	iPortraitRowCount	每页的行数
 */
@property (nonatomic,assign)  int iPortraitRowCount;

/*!
 	@property
 	@abstract	isNeedReloadData	当界面展现时，是否需要重新加载数据
 */
@property (nonatomic,assign)  BOOL isNeedReloadData;

/*!
 	@method
 	@abstract	通过标题初始化界面
 	@discussion
 	@param 	aTitle 	标题
 	@result
 */
-(id)initWithTitle:(NSString *)aTitle;

/*!
 	@method
 	@abstract	是否已经存在保存的items
 	@discussion
 	@result
 */
- (BOOL)hasSavedLauncherItems;

/*!
 	@method
 	@abstract	清楚保存的所有items
 	@discussion
 	@result
 */
- (void)clearSavedLauncherItems;

/*!
 	@method
 	@abstract	获取保存的快捷区域的items
 	@discussion
 	@result	
 */
- (NSMutableArray *)savedShortCutAreasItems;

/*!
 	@method
 	@abstract	获取保存到的非快捷区域的items
 	@discussion
 	@result
 */
- (NSMutableArray *)savedLauncherItems;


/*!
 	@method
 	@abstract	图标点击事件处理，提供给子类重写
 	@discussion
 	@param 	item 	添加的图标
 	@result
 */
- (void)launcherViewItemSelected:(CWALauncherItem*)item;

/*!
 	@method
 	@abstract	关闭界面时候的动画处理，暂时没有调用
 	@discussion
 	@result
 */
- (void)closeView;

/*!
 	@method
 	@abstract	重新加载界面
 	@discussion	
 	@result
 */
- (void)reloadData;


@end
