/*!
 @header	WALauncherView.h
 @abstract	桌面类
 @discussion
 @author	huych
 @copyright	ufida
 @version	1.0 2014-05-29 12:34:58 Creation
 */


#import <UIKit/UIKit.h>
#import "WALauncherItem.h"
#import "WALauncherPageControl.h"
#import "WALauncherScrollView.h"
#import "WASudoKuBDView.h"

/*!
 	@protocol
 	@abstract	launcher界面委托
 	@discussion
 */
@protocol CWALauncherViewDelegate <NSObject>

/*!
 	@method
 	@abstract	item被点击
 	@discussion
 	@param 	item 	被点击的item
 	@result
 */
- (void)launcherViewItemSelected:(CWALauncherItem*)item;

/*!
 	@method
 	@abstract	界面开始编辑
 	@discussion
 	@param 	sender 消息发送者
 	@result
 */
- (void)launcherViewDidBeginEditing:(id)sender;

/*!
 	@method
 	@abstract	界面停止编辑
 	@discussion
 	@param 	sender 	消息发送者
 	@result
 */
- (void)launcherViewDidEndEditing:(id)sender;

@end

@interface CWALauncherView : UIView <UIScrollViewDelegate, CWALauncherItemDelegate>

{
  UIDeviceOrientation currentOrientation;
	BOOL iItemsAdded;//是否已添加item
	BOOL editing;//是否正在编辑
	BOOL dragging;//是否正在移动
  BOOL isPressLong;//是否长按过
  BOOL editingAllowed;//是否允许编辑
  BOOL isNeedSudoKuBd;//是否需要九宫格背景
	NSInteger numberOfImmovableItems;//可不可移动item的个数
  NSMutableArray *iShortcutItems;//快捷操作区域的item
	int columnCount;//默认列数
	int rowCount;//默认行数
	CGFloat itemWidth;//item长
	CGFloat itemHeight;//item高
  CGFloat minX;//第一个item的x轴
  CGFloat minY;//第一个item的y轴
  CGFloat paddingX;//x轴的空位置
  CGFloat paddingY;//y轴的空位置
  UIView *iShortcutAreaView;//快捷操作区域
  int iPortraitColumnCount;//可供设置的列数
  int iPortraitRowCount ;//可供设置的行数
}
/*!
 	@property
 	@abstract	iPortraitColumnCount	外部设置的列数
 */
@property (nonatomic,assign)  int iPortraitColumnCount;

/*!
 	@property
 	@abstract	iPortraitRowCount	外部设置的行数
 */
@property (nonatomic,assign)  int iPortraitRowCount;

/*!
 	@property
 	@abstract	editingAllowed	是否允许编辑
 */
@property (nonatomic,assign) BOOL editingAllowed;

/*!
 	@property
 	@abstract	isNeedSudoKuBd	是否需要九宫格背景
 */
@property (nonatomic,assign) BOOL isNeedSudoKuBd;

/*!
 	@property
 	@abstract	numberOfImmovableItems	不能移动的item的个数
 */
@property (nonatomic,assign) NSInteger numberOfImmovableItems;

/*!
 	@property
 	@abstract	delegate	委托
 */
@property (nonatomic, assign) id <CWALauncherViewDelegate> delegate;

/*!
 	@property
 	@abstract	iPagesScrollView	界面scroller
 */
@property (nonatomic, retain) CWALauncherScrollView *iPagesScrollView;

/*!
 	@property
 	@abstract	iShortcutAreaView	快捷操作区域
 */
@property (nonatomic, readonly) UIView *iShortcutAreaView;

/*!
 	@property
 	@abstract	iPages 数据界面
 */
@property (nonatomic, retain) NSMutableArray *iPages;

/*!
 	@property
 	@abstract	iShortcutItems	快捷区域的items
 */
@property (nonatomic, retain) NSMutableArray *iShortcutItems;

/*!
 	@method
 	@abstract	设置页面数据，更新界面
 	@discussion
 	@param 	pages 	页面数据
 	@param 	animated 	是否动画
 	@result
 */
-(void)setPages:(NSMutableArray *)pages animated:(BOOL)animated;

/*!
 	@method
 	@abstract	设置页面数据以及不可动的item的数量
 	@discussion
 	@param 	pages 界面数据
 	@param 	items 不可动item的数量
 	@result
 */
-(void)setPages:(NSMutableArray *)pages numberOfImmovableItems:(NSInteger)items;

/*!
 	@method
 	@abstract	设置界面数据，不可动的item的数量以及是否需要动画
 	@discussion
 	@param 	pages 	界面数据
 	@param 	items 	不可动的item的数量
 	@param 	animated 	是否需要动画
 	@result
 */
-(void)setPages:(NSMutableArray *)pages numberOfImmovableItems:(NSInteger)items animated:(BOOL)animated;

/*!
 	@method
 	@abstract	保存页面数据
 	@discussion
 	@result
 */
-(void)savePages;

/*!
 	@method
 	@abstract	界面已经展现后的方法
 	@discussion
 	@param 	animated
 	@result
 */
-(void)viewDidAppear:(BOOL)animated;

/*!
 	@method
 	@abstract	设置横竖屏，目前无用
 	@discussion
 	@param 	newOrientation
 	@result
 */
-(void)setCurrentOrientation:(UIInterfaceOrientation)newOrientation;

/*!
 	@method
 	@abstract	重新布局界面,所在页数不变
 	@discussion
 	@result
 */
-(void)layoutLauncher;

/*!
 	@method
 	@abstract	刷新界面，所在页数变为0
 	@discussion	
 	@result
 */
- (void)reFreshUI;

/*!
 	@method
 	@abstract	重新布局界面
 	@discussion
 	@param 	animated 	是否动画
 	@result
 */
-(void)layoutLauncherAnimated:(BOOL)animated;

/*!
 	@method
 	@abstract	每页的最多item的个数
 	@discussion
 	@result
 */
-(int)maxItemsPerPage;

/*!
 	@method
 	@abstract	最大的页数
 	@discussion
 	@result
 */
-(int)maxPages;

/*!
 	@method
 	@abstract	移除所有的items
 	@discussion
 	@result
 */
- (void)removeAllItems;

/*!
 	@method
 	@abstract	重新组织页面数据
 	@discussion
 	@result	
 */
-(void)organizePages;

/*!
 	@method
 	@abstract	通过大小位置和是否需要背景
 	@discussion
 	@param 	frame 	大小位置
 	@param 	aIsNeedSudoKuBd 	是否需要背景
 	@result	
 */
- (id)initWithFrame:(CGRect)frame withNeedSudoKuBd:(BOOL)aIsNeedSudoKuBd;

@end
