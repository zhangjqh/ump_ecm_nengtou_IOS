/*!
 @header WACacheTableView.h
 @abstract CacheTableView的实现
 @author yangrui
 @version 1.00 2012/7/27 Creation 
 */

#import "WACacheTableView.h"
//#import "WASearchResultVo.h"

@implementation CWACacheTableView

- (id)initWithFrame:(CGRect)frame 
    pullingDelegate:(id<PullingRefreshTableViewDelegate>)aPullingDelegate 
      cacheFileName:(NSString*)aCacheFileName
{
    self = [self initWithFrame:frame style:UITableViewStylePlain];
    iCacheTableHandler = nil;
    if (self) 
    {
        self.pullingDelegate = aPullingDelegate;
        //初始化缓存handler
        iCacheTableHandler   = [[[CWACacheTableViewHandler alloc] init] 
                                initCacheFileName:aCacheFileName];
    }
    return self;
}

#pragma mark 插入，获取操作
//获取当前列表范围
-(WAListCacheRange)getCacheRange
{
    WAListCacheRange range = [iCacheTableHandler getCacheRange];
    return range;
}

//插入数据
- (TWAInsertResultType)insertNewObject:(NSMutableArray*)objectsInsert 
                                 Range:(WAListCacheRange)aRange
{
    TWAInsertResultType resultType = [iCacheTableHandler insertNewObject:objectsInsert
                                                                Range:aRange];
    return resultType;
}

//获取缓存数据
-(NSMutableArray*)getObjects:(WAListCacheRange)aRange
{
    NSMutableArray * resultArray = [iCacheTableHandler getObjects:aRange];
    return resultArray;
}

//删除指定范围内的数据
-(TWADeleteResultType)deletaObjectsAtRange:(WAListCacheRange)aRange
{
    TWADeleteResultType resultType = [iCacheTableHandler deletaObjectsAtRange:aRange];
    return resultType;
}

//删除所有的缓存数据
-(void)deleteAllObjects
{
    [iCacheTableHandler deleteAllObjects];
}

//获取最后一个位置的索引
-(int)getLastIndex
{
    int lastIndex = [iCacheTableHandler getLastIndex];
    return lastIndex;
}

//获取第一个位置的索引
-(int)getFisrtIndex
{
    int firstIndex = [iCacheTableHandler getFisrtIndex];
    return  firstIndex;
}

@end
