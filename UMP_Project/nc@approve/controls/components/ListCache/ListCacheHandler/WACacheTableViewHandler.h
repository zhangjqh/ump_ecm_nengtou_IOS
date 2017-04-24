/*!
 @header     WACacheTableViewHandler.h
 @abstract   CacheTableView的实现
 @discussion 
 
 @author     yangrui
 @version    1.00 2012/7/30 Creation 
 */

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "WACacheTableDef.h"

#pragma mark 类型定义
/*!
 @abstract 缓存列表范围
 */
typedef struct 
{
    int WAListCacheLocation; //起点位置
    int WAListCacheLength;   //长度
} WAListCacheRange;

/*!
 @enum
 @abstract 插入的返回类型类型
 @constant EInsertSec       插入成功
 @constant EinsertTypeError 传入类型错误
 @constant EInsertNoObject  传入数据为空
 @constant EInsertFailed    插入失败，未知错误
 */
typedef enum 
{
    EInsertSec = 0,        //插入成功
    EinsertTypeError,      //传入类型不对
    EInsertNoObject,       //传入数据为空
    EInsertNotSameLength,  //插入的数据，长度不一致
    EInsertRangeError,     //插入范围错误
    EInsertLeftRangeError, //左插入范围错误
    EInsertRightRangeError,//右插入范围错误
    EInsertFailed          //插入失败，未知原因
} TWAInsertResultType;

/*!
 @enum
 @abstract 删除的返回类型类型
 @constant EGetSec        删除成功
 @constant EGetRangeError 删除范围错误
 */
typedef enum
{
    EDeleteSec = 0,    //可以删除
    EDeleteLocTooSmall,//删除开始位置太小
    EDeleteLocTooBig,  //删除开始位置太大
    EDeleteRangeError  //删除范围错误
} TWADeleteResultType;

/*!
 @enum
 @abstract 获取的返回类型类型
 @constant EGetSec        获取成功
 @constant EGetRangeError 获取范围错误
 */
typedef enum
{
    EGetSec = 0,   //可以获取
    EGetRangeError //获取范围错误
} TWAGetResultType;

/*!
 @enum
 @abstract 获取的返回类型类型
 @constant EGetSec        获取成功
 @constant EGetRangeError 获取范围错误
 */
typedef enum
{
    EOk = 0,       //正常状态，可以读取
    EDelete = 1    //数据已经被删除
} TWADataStatus;

@interface CWACacheTableViewHandler : NSObject<NSFetchedResultsControllerDelegate>
{
    //当前缓存列表的起点位置，在真实数据的位置
    int iObjectStart;
    //当前缓存列表的终点位置，在真实数据的位置
    int iObjectEnd;
    //存储的本地文件名称
    NSString * iCacheFileName;
}

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (nonatomic,copy)NSString * iCacheFileName;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

#pragma mark 

/*!
 @method
 @abstract 初始化函数
 */
-(id)initCacheFileName:(NSString*)aCacheFileName;

#pragma mark 插入操作

/*!
 @method
 @abstract 插入objects
 @param objectsInsert:要插入的数据，可以以NSMutableArray形式传入
 @param aRange:插入的位置,以及数目，数目和objectsInsert数目一致。
 @result 返回值是TWASuppliesFromType类型
 */
- (TWAInsertResultType)insertNewObject:(NSMutableArray*)objectsInsert 
                                 Range:(WAListCacheRange)aRange;

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
 @abstract 删除所有的objects
 @result 返回为空
 */
-(void)deleteAllObjects;

#pragma mark 查询操作

/*!
 @method
 @abstract 获取缓存的数据
 @discussion 传入要获取的缓存的范围。
 @praram aRange:获取数据的范围。
 aRange.location:开始位置
 aRange.length  :数量
 @result 返回NSMutableArray,如果某个数据的status是EDelete，则返回@“”
 */
-(NSMutableArray*)getObjects:(WAListCacheRange)aRange;

/*!
 @method
 @abstract 获取当前列表的范围
 */
-(WAListCacheRange)getCacheRange;

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

