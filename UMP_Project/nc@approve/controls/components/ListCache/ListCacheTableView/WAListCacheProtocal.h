/*!
 @header WAListCacheProtocal.h
 @abstract 
 @author xiaomumu
 @version 1.00 2012/8/1 Creation 
 */

#pragma mark -
#pragma mark MWAListCacheProtocal的定义
/*!
 @protocol
 @abstract 这个WASearchView的一个protocol定义,子类必须实现
 @discussion 实现数据返回
 */
@protocol MWAListCacheProtocal <NSObject>
@optional
/*****************talbeview方面的协议******/
//搜索样式的tableview的初始化
/*!
 @method
 @abstract 初始化某一个cell的高度
 @param aViewType 当前是初始化搜索，还是初始化普通列表
 */
- (CGFloat)setCellHeight:(UITableView *)tableView 
 heightForRowAtIndexPath:(NSIndexPath *)indexPath;

@required
/*!
 @method
 @abstract 初始化某一个cell,cell需要用户初始化
 */
- (UITableViewCell *)setCell:(UITableView *)tableView 
       cellForRowAtIndexPath:(NSIndexPath *)indexPath;

/*!
 method
 @abstract 点击了tableView的一项
 */
- (void)selectCell:(UITableView *)tableView 
didSelectRowAtIndexPath:(NSIndexPath *)indexPath;

@optional
/*!
 method
 @abstract 设置列表是否可以编辑
 */
- (BOOL)setCellEdit:(UITableView *)tableView 
canEditRowAtIndexPath:(NSIndexPath *)indexPath;


/*!
 @method
 @abstract 设置分组列表的header
 */
- (UIView *)setHeader:(UITableView *)tableView
        viewForHeaderInSection:(NSInteger)section;

@optional
//普通列表的初始化
/*!
 @method
 @abstract 初始化某一个cell的高度
 @param aViewType 当前是初始化搜索，还是初始化普通列表
 */
- (CGFloat)setNormalCellHeight:(UITableView *)tableView 
       heightForRowAtIndexPath:(NSIndexPath *)indexPath;

/*!
 @method
 @abstract 初始化某一个cell,cell需要用户初始化
 */
- (UITableViewCell *)setNormalCell:(UITableView *)tableView 
             cellForRowAtIndexPath:(NSIndexPath *)indexPath;

/*!
 method
 @abstract 点击了tableView的一项
 */
- (void)selectNormalCell:(UITableView *)tableView 
 didSelectRowAtIndexPath:(NSIndexPath *)indexPath;

- (void)deselectCell:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath;


- (void)tableViewscrollViewWillBeginDragging:(UIScrollView *)scrollView;


/*!
 @mehtod
 @abstract 移动cell
 @param fromIndexPath 开始位置
 @param toIndexPath   目的位置
 */
- (BOOL)moveNormalCell:(UITableView *)tableView 
    moveRowAtIndexPath:(NSIndexPath *)fromIndexPath
           toIndexPath:(NSIndexPath *)toIndexPath;

/*!
 @method
 @abstract 删除普通列表里面的一个元素
 @param aIndexPath 删除元素的位置
 @result 如果子类删除成功返回YES，如果子类操作失败，返回NO
 */
-(BOOL)deleteANormalObject:(NSIndexPath*)aIndexPath;

/*!
 @method
 @abstract 删除搜索列表里面的一个元素
 @param aIndexPath 删除元素的位置
 @result 如果子类删除成功返回YES，如果子类操作失败，返回NO
 */
-(BOOL)deleteASearchObject:(NSIndexPath*)aIndexPath;


- (UITableViewCellEditingStyle)setTableView:tableView
              editingStyleForRowAtIndexPath:indexPath;

@end

#pragma mark -
#pragma mark MWAListCacheProtocal的定义

/*!
 @enum
 @abstract listCache 搜索类型
 @constant ELCSearchRefresh  //上拉刷新  
 @constant ELCSearchReload   //下拉加载
 */
typedef enum
{
    ELCSearchRefresh = 0,   //上拉刷新
    ELCSearchReload,        //下拉加载
}TWALCSearchType;

/*!
 @protocol
 @abstract 这个WASearchView的一个protocol定义,子类选择实现
 @discussion 实现数据返回
 */
@protocol MWALCCProtocal <NSObject>
@optional
/*!
 @method
 @abstract 开始搜索，这是没有分组的形式
 */
-(void)startSearch:(NSString*)searchText
          StartPos:(int)aStartPos 
           PageNum:(int)aPageNum 
      WithLoadType:(TWALCSearchType)aLoadType;

/*！
 @method
 @abstract 开始搜索，有分组时，调用下面的形式
 */
-(void)startSearchWithGroup:(NSString *)searchText 
                   StartPos:(int)aStartPos 
                    PageNum:(int)aPageNum 
               GroupBtIndex:(int)aIndex 
               GroupBtTitle:(NSString*)aBtTitle 
               WithLoadType:(TWALCSearchType)aLoadType;
/*!
 @method
 @abstract 左边按钮点击
 */
-(void)leftBtClick;

/*!
 @method
 @abstract 右边按钮点击
 */
-(void)rightBtClick;

/*!
 @method
 @abstract 开始编辑搜索条
 */
-(void)startEditSearchBar;

/*!
 @method
 @abstract 取消搜索界面
 */
-(void)cancelSearchStatus;

@end
