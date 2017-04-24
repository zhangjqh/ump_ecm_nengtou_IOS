/*!
 @header     WACacheTableView.h
 @abstract   CacheTableView的实现
 @discussion 
                  
 @author     yangrui
 @version    1.00 2012/7/27 Creation 
 */

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "WACacheTableView.h"
#import "WAPullingRefreshTableView.h"
#import "WACacheTableViewHandler.h"


@interface CWACacheTableView : CWAPullingRefreshTableView
{
    CWACacheTableViewHandler * iCacheTableHandler;
}

/*!
 @method
 @abstract 初始化
 @param frame:尺寸大小
 @param aPullingDelegate:委托对象
 */
- (id)initWithFrame:(CGRect)frame 
    pullingDelegate:(id<PullingRefreshTableViewDelegate>)aPullingDelegate 
      cacheFileName:(NSString*)aCacheFileName;

#pragma mark 插入操作
/*!
 @method
 @abstract 获取当前列表的范围
 */
-(WAListCacheRange)getCacheRange;

/*!
 @method
 @abstract 插入objects
 @param objectsInsert:要插入的数据，可以以NSMutableArray形式传入
 @param aRange:插入的位置,以及数目，数目和objectsInsert数目一致。
 @result 返回值是TWASuppliesFromType类型
 */
- (TWAInsertResultType)insertNewObject:(NSMutableArray*)objectsInsert 
                                 Range:(WAListCacheRange)aRange;

#pragma mark 查询操作
/*!
 @method
 @abstract 获取缓存的数据
 @discussion 传入要获取的缓存的范围。
 @praram aRange:获取数据的范围。
 aRange.location:开始位置
 aRange.length  :数量
 @result 返回NSMutableArray
 */
-(NSMutableArray*)getObjects:(WAListCacheRange)aRange;

#pragma mark 删除操作
/*!
 @method
 @abstract 删除指定范围内的数据
 @param  aRange:删除的范围
 @result 返回TWADeleteResultType
 */
-(TWADeleteResultType)deletaObjectsAtRange:(WAListCacheRange)aRange;

/*!
 @method
 @abstract 删除所有的缓存数据
 */
-(void)deleteAllObjects;

/*!
 @method
 @abstract 
 @discussion 获取最后索引位置
 @result 返回int
 */
-(int)getLastIndex;

/*!
 @method
 @abstract 
 @discussion 获取第一个索引位置
 @result 返回int
 */
-(int)getFisrtIndex;

@end
