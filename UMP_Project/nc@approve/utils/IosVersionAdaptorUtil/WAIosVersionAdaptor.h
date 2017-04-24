

/*!
 	@header	WAIosVersionAdaptor.h
 	@abstract	ios版本适配器
 	@discussion
 	@author	huych
 	@copyright	ufida
 	@version	1.0 2014-02-28 08:52:21 Creation
 */
#import <Foundation/Foundation.h>
#import "WAUFTool.h"
@interface CWAIosVersionAdaptor : NSObject

/*!
 	@method
 	@abstract 适配tableview，通过设置contentinset
 	@discussion
 	@param 	aTable
 	@result
 */
+ (void)tableViewContentInset:(UITableView *)aTable;
/*!
 	@method
 	@abstract	适配导航控制器
 	@discussion
 	@param 	aNavBar
 	@result
 */
+ (void)adaptWithNavBar:(UINavigationBar *)aNavBar;
/*!
 	@method
 	@abstract	适配导航栏标题属性（字体、颜色）
 	@discussion
 	@param 	aNavBar
 	@result
 */
+ (void)adaptWithNavBarTitleAttributes:(UINavigationBar *)aNavBar;

/*!
 	@method
 	@abstract	适配导航栏左侧按钮位置（按钮居左对齐）
 	@discussion	
 	@param 	navItem
 	@param 	leftBarItem
 	@result
 */
+ (void)adaptNavigationItem:(UINavigationItem *)navItem withLeftBarItems:(UIBarButtonItem *)leftBarItem;
/*!
 @method
 @abstract	适配导航栏右侧按钮位置（按钮居右对齐）
 @discussion
 @param 	navItem
 @param 	leftBarItem
 @result
 */
+ (void)adaptNavigationItem:(UINavigationItem *)navItem withRightBarItems:(UIBarButtonItem *)rightBarItem;

/*!
 	@method
 	@abstract	适配ios7下view y坐标加20px
 	@discussion
 	@param 	aView
 	@result
 */
+ (void)adaptIOS6FrameWithView:(UIView *)aView;

/*!
 	@method
 	@abstract	适配ios7下tableview顶部空白区域
 	@discussion
 	@param 	aTableView
 	@result	
 */
+ (void)adaptIOS6HeaderBlankWithTableView:(UITableView *)aTableView;
/*!
 	@method
 	@abstract	适配cell
 	@discussion	统一cell背景色、选中后的背景色
 	@param 	cell
 	@result
 */
+ (void)adaptTableViewCell:(UITableViewCell *)cell;
/*!
 @method
 @abstract	适配cell
 @discussion	可指定cell背景色、选中后的背景色
 @param 	cell
 @result
 */
+ (void)adaptTableViewCell:(UITableViewCell *)cell
                 backColor:(UIColor *)bColor
             selectedColor:(UIColor *)sColor;

/*!
 	@method
 	@abstract	适配tableview底部无数据的cell分割线
 	@discussion
 	@param 	tableView
 	@result	
 */
+ (void)adaptTableViewNoDataCellSeparator:(UITableView *)tableView;

/*!
 @method
 @abstract	适配tableview底部无数据的cell分割线
 @discussion
 @param 	tableView
 @result
 */
+(void)tableViewSeparatorInset:(UITableView *)aTable;
/*!
 @method
 @abstract	适配导航栏左侧按钮
 @discussion
 @param
 @result
 */
+ (void)adaptWithLeftNavBtn:(UIButton *)aNavBtn;
/*!
 @method
 @abstract	适配导航栏右侧按钮
 @discussion
 @param
 @result
 */
+ (void)adaptWithRightNavBtn:(UIButton *)aNavBtn;
/*!
 @method
 @abstract	为tablview添加分割线
 @discussion
 @param
 @result
 */
+ (void)adaptIOS6SeperatorLineWithTableView:(UITableView *)aTableView;

/*!
 	@method
 	@abstract	分割线 & 颜色
 	@discussion
 	@param 	aTableView
 	@result
 */
+ (void)adaptSeperatorLineWithTableView:(UITableView *)aTableView;

+ (CGFloat)getIOS7FirstSecton;

/*!
 	@method
 	@abstract	适配导航栏
 	@discussion ios7时左右按钮适配、ios6时UE为ios7风格
 	@param 	aNavBar
 	@result
 */
+ (void)adaptWithNavBar:(UINavigationBar *)aNavBar
        withSpacerWidth:(NSInteger) aSpacerWidth;


/*!
 	@method
 	@abstract	适配背景色
 	@discussion
 	@param 	aViewController
 	@result
 */
+ (void)adaptIOS6BackgroudColorWithViewController:(UIViewController *)aViewController;

/*!
 	@method
 	@abstract	适配自动回弹
 	@discussion
 	@param 	aViewController
 	@result
 */
+ (void)adaptIOSAutoAdjustsScrollViewInsets:(UIViewController *)aViewController;


/*!
 	@method
 	@abstract	适配ios7下listCache标题
 	@discussion
 	@param 	aLabel
 	@result
 */
+ (void)adaptListCacheTitleLabel:(UILabel *)aLabel;

/*!
 	@method
 	@abstract	适配ios7下listCache搜索框
 	@discussion
 	@param 	aSearchBar
 	@result	
 */
+ (UISearchBar *)adaptListCacheSeachBar:(UISearchBar *)aSearchBar;
/*!
 @method
 @abstract	适配ios7、ios6下返回按钮图标(渠道拜访使用)
 @discussion
 @param
 @result
 */
+ (void)adaptChannelVisitNavBackButton:(UIButton *)aButton;
/*!
 @method
 @abstract	适配ios6图片背景色
 @discussion
 @param
 @result
 */
+ (void)adaptIOS6TableViewBackColor:(UITableView *)aTableView;
/*!
 	@method
 	@abstract	适配ios6下搜索框颜色
 	@discussion
 	@param 	aSearchBar
 	@result
 */
+ (void)adaptIOS6SearchBar:(UISearchBar *)aSearchBar;
/*!
 @method
 @abstract	适配tableview的sectionheader视图（给定背景图、plan样式适用）
 @discussion
 @param
 @result
 */
+ (UIView *)adaptTableViewSectionHeaderWithTitle:(NSString *)aTitle;

/*!
 @method
 @abstract	适配tableview的sectionheader视图（group样式适用）
 @discussion
 @param
 @result
 */
+ (UIView *)adaptTableViewGroupSectionHeaderWithTitle:(NSString *)aTitle;

+ (UIView *)adaptTableViewGroupSectionHeaderWithNilTitle:(NSString *)aTitle;

+ (void)adaptWithLeftNavBtn:(UIButton *)aNavBtn noTitle:(BOOL)flag;
@end
