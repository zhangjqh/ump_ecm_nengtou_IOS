/*!
 @header WASearchController.h 
 @abstract 可用量搜索的controller
 @author xiaomumu
 @version 1.00 2012/7/6 Creation 
 */

#import <Foundation/Foundation.h>
#import "WAPullingRefreshTableView.h"
#import "WAProgressViewManager.h"
#import "WAFileUtil.h"
#import "WALocalStorageHandler.h"
#import "WASearchDef.h"
#import "WASearchBnsHandler.h"

#pragma mark *************MWASearchControllerProtocol的定义************
/*!
 @protocol
 @abstract 这个MWASearchControllerProtocol
 @discussion 实现数据返回
 */
@protocol MWASearchControllerProtocol <NSObject>
@optional
/*!
 @method
 @abstract 供上层调用
 @author xiaomumu
 */
-(void)setSearchPos;

/*!
 @method
 @abstract 是否在当前界面搜索
 */
-(BOOL)getIsCurViewSearch;

/*!
 @method
 @abstract 是否取消按钮就是退出当前搜索界面
 */
-(BOOL)getIsCancelQuit;

/*!
 @mehtod
 @abstract 发送消息给子类
 */
-(void)sendStartEditSeartBar;

/*!
 @mehtod
 @abstract 获取历史记录缓冲文件名称
 */
-(NSString*)getHistoryCacheFileName;

/*!
 @method
 @abstract 取消搜索,以弹出搜索界面的情形
 */
-(void)cancelSearch;

#pragma mark 接口返回
/*!
 @method
 @abstract 开始搜索，不带页码的搜索
 */
-(void)startQueryWithCondition:(NSString*)aCondition;

#pragma mark 缓存相关的函数
/*!
 @method
 @abstract 显示历史记录
 */
-(void)showHistoryList;

/*!
 @method
 @abstract 隐藏历史记录
 */
-(void)hiddenHistoryList;

#pragma mark 如下这些操作可能会基于使用者的情况调用
/*!
 @mthod 
 @abstract 左侧按钮点击事件
 */
-(IBAction)leftBtAction:(id)sender;

/*!
 @mthod
 @abstract 右侧按钮点击事件
 */
-(IBAction)rightBtAction:(id)sender;

@end

#pragma mark *************CWASearchController的定义************

@class CWASearchViewController;
@protocol MWASearchViewControllerProtocol;
@protocol MWASearchControllerProtocol;

@interface CWASearchController : NSObject
{
  TWASEARCHBARSTYLE iSearchBarStyle;
@private
    CWASearchBnsHandler * iCWASearchBnsHandler;
 
}
@property(nonatomic,assign)TWASEARCHBARSTYLE iSearchBarStyle;
/*!
 @property
 @abstract searchController的委托
 */
@property(nonatomic,assign)id<MWASearchControllerProtocol> iSearchControllerDelegate;

/*!
 @method
 @abstract 开始编辑
 */
- (BOOL)searchBarShouldBeginEditing:(UISearchBar *)searchBar;

/*!
 @method
 @abstract 缓存文件路径
 */
-(NSString*)getHistoryCachePath;

/*!
 @method
 @abstract 获取历史记录的array
 */
-(NSMutableArray*)getHistoryArray;

/*!
 @method
 @abstract 取消按钮事件
 */
-(IBAction)cancelSearchBtAction:(id)sender;

@end

