/*!
 @header     WACacheTableViewHandler.m
 @abstract   CacheTableView的实现
 @discussion 
 
 @author     yangrui
 @version    1.00 2012/7/27 Creation 
 */

#import "WACacheTableViewHandler.h"
#import "WALocalStorageHandler.h"

@interface CWACacheTableViewHandler()

#pragma mark 插入操作
/*!
 @method
 @abstract 检查是否可以插入
 @param objectsInsert:要插入的数据，可以以NSMutableArray形式传入
 @param aRange:插入的位置,以及数目，数目和objectsInsert数目一致。
 @result 返回值是TWASuppliesFromType类型
 */
-(TWAInsertResultType)insertCheck:(NSMutableArray*)objectsInsert 
                            Range:(WAListCacheRange)aRange;
/*!
 @method
 @abstract 插入一个array
 @param objectsInsert:要插入的数据，可以以NSMutableArray形式传入
 @result 返回值是TWASuppliesFromType类型
 */
-(TWAInsertResultType)insertArray:(NSMutableArray*)objectsInsert
                            Range:(WAListCacheRange)aRange isRightAdd:(BOOL)aBool;

#pragma mark 删除操作
/*!
 @method
 @abstract 检测是否可以删除
 */
-(TWADeleteResultType)deleteCheck:(WAListCacheRange)aRange;

/*!
 @method
 @abstract 删除所有的objects
 @result 返回为空
 */
-(void)deleteAllObjects;

#pragma mark 查询操作
/*!
 @method
 @abstract 检测是否可以查询
 @result 返回值TWAGetResultType
 */
-(TWAGetResultType)getObjectsCheck:(WAListCacheRange)aRange;

/*!
 @method
 @abstract 获取当前列表的范围
 */
-(WAListCacheRange)getCacheRange;

@end

@implementation CWACacheTableViewHandler
@synthesize managedObjectContext = __managedObjectContext;
@synthesize managedObjectModel = __managedObjectModel;
@synthesize persistentStoreCoordinator = __persistentStoreCoordinator;
@synthesize fetchedResultsController = __fetchedResultsController;
@synthesize iCacheFileName;

-(id)initCacheFileName:(NSString*)aCacheFileName
{
    //默认是真实数据的第-1个位置. 表示没有数据
    iObjectStart = -1;
    //默认是真实数据的第-1个位置
    iObjectEnd   = -1;
    //存储文件名称
    self.iCacheFileName = aCacheFileName;
    //删除所有的数据,有可能程序退出，未正常删除
    [self deleteAllObjects];
    
    return self;
}

- (void)saveContext
{
    NSError *error = nil;
    NSManagedObjectContext *managedObjectContext = self.managedObjectContext;
    if (managedObjectContext != nil)
    {
        if ([managedObjectContext hasChanges] && ![managedObjectContext save:&error]) 
        {
            NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
        } 
    }
}

#pragma mark - Core Data stack

// Returns the managed object context for the application.
// If the context doesn't already exist, it is created and bound to the persistent store coordinator for the application.
- (NSManagedObjectContext *)managedObjectContext
{
    if (__managedObjectContext != nil) 
    {
        return __managedObjectContext;
    }
    
    NSPersistentStoreCoordinator *coordinator = [self persistentStoreCoordinator];
    if (coordinator != nil)
    {
        __managedObjectContext = [[NSManagedObjectContext alloc] init];
        [__managedObjectContext setPersistentStoreCoordinator:coordinator];
    }
    return __managedObjectContext;
}

// Returns the managed object model for the application.
// If the model doesn't already exist, it is created from the application's model.
- (NSManagedObjectModel *)managedObjectModel
{
    if (__managedObjectModel != nil)
    {
        return __managedObjectModel;
    }
    NSURL *modelURL = [[NSBundle mainBundle] URLForResource:@"WACacheTableView" withExtension:@"momd"];
    __managedObjectModel = [[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL];
    return __managedObjectModel;
}

// Returns the persistent store coordinator for the application.
// If the coordinator doesn't already exist, it is created and the application's store added to it.
- (NSPersistentStoreCoordinator *)persistentStoreCoordinator
{
    if (__persistentStoreCoordinator != nil) 
    {
        return __persistentStoreCoordinator;
    }
    NSString * fileName =
        [NSString stringWithFormat:@"%@ListCache.wacf",self.iCacheFileName];
    NSURL *storeURL = [[self applicationDocumentsDirectory] URLByAppendingPathComponent:fileName];
    
    NSError *error = nil;
    __persistentStoreCoordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[self managedObjectModel]];
    if (![__persistentStoreCoordinator addPersistentStoreWithType:NSBinaryStoreType configuration:nil URL:storeURL options:nil error:&error]) 
    {
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
    }    
    
    return __persistentStoreCoordinator;
}

#pragma mark - 数据存放位置

// Returns the URL to the application's Documents directory.
- (NSURL *)applicationDocumentsDirectory
{
    //保存最近5条数据
    NSString *path = [CWALocalStorageHandler
                      createDirOfLastLoginUserWithBtarget:@"SearchListCache"];
    //获取url形式的path
    NSString *urlPath = [NSString stringWithFormat:@"file://localhost%@",path];
    //编码
    NSString *urlEscapePath = 
    [urlPath stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    //获取最终的目录路径
    NSURL * urlFinal = [NSURL URLWithString:urlEscapePath];
    
    return urlFinal;
}

- (NSFetchedResultsController *)fetchedResultsController
{
    if (__fetchedResultsController != nil) 
    {
        return __fetchedResultsController;
    }
    
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    // Edit the entity name as appropriate.
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Event" inManagedObjectContext:self.managedObjectContext];
    [fetchRequest setEntity:entity];
    
    // Set the batch size to a suitable number.
    [fetchRequest setFetchBatchSize:20];
    
    // Edit the sort key as appropriate.
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"index" ascending:YES];
    NSArray *sortDescriptors = [NSArray arrayWithObjects:sortDescriptor, nil];
    
    [fetchRequest setSortDescriptors:sortDescriptors];
    
    // Edit the section name key path and cache name if appropriate.
    // nil for section name key path means "no sections".
    NSString * fileName =
    [NSString stringWithFormat:@"%@ListCacheMaster",self.iCacheFileName];
  
    NSFetchedResultsController *aFetchedResultsController = [[NSFetchedResultsController alloc] initWithFetchRequest:fetchRequest managedObjectContext:self.managedObjectContext sectionNameKeyPath:nil cacheName:fileName];
    aFetchedResultsController.delegate = self;
    self.fetchedResultsController = aFetchedResultsController;
    
	NSError *error = nil;
	if (![self.fetchedResultsController performFetch:&error]) 
    {
	    NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
	}
    return __fetchedResultsController;
}   

#pragma mark coredata协议
- (void)controllerWillChangeContent:(NSFetchedResultsController *)controller
{
}

- (void)controller:(NSFetchedResultsController *)controller didChangeSection:(id <NSFetchedResultsSectionInfo>)sectionInfo
           atIndex:(NSUInteger)sectionIndex forChangeType:(NSFetchedResultsChangeType)type
{
    switch(type) 
    {
        case NSFetchedResultsChangeInsert:
            break;
            
        case NSFetchedResultsChangeDelete:
            break;
    }
}

- (void)controller:(NSFetchedResultsController *)controller didChangeObject:(id)anObject
       atIndexPath:(NSIndexPath *)indexPath forChangeType:(NSFetchedResultsChangeType)type
      newIndexPath:(NSIndexPath *)newIndexPath
{
    switch(type) {
        case NSFetchedResultsChangeInsert:
            break;
            
        case NSFetchedResultsChangeDelete:
            break;
            
        case NSFetchedResultsChangeUpdate:
            break;
            
        case NSFetchedResultsChangeMove:
            break;
    }
}

- (void)controllerDidChangeContent:(NSFetchedResultsController *)controller
{
}

#pragma mark 插入操作
//插入检测
-(TWAInsertResultType)insertCheck:(NSMutableArray*)objectsInsert 
                            Range:(WAListCacheRange)aRange
{
    TWAInsertResultType returnType = EInsertSec;
    if (![objectsInsert isKindOfClass:[NSMutableArray class]])
    {
        //传入数据类型错误
        returnType = EinsertTypeError;
    }
    else if([objectsInsert count]<=0)
    {
        //没有传入数据
        returnType = EInsertNoObject;
    }
    else if([objectsInsert count] != aRange.WAListCacheLength)
    {
        //range和NSMutableArray的数目不匹配
        returnType =  EInsertNotSameLength;
    }
    else 
    {
        //判断500个的情况
        int location = aRange.WAListCacheLocation;
        if (location >= WA_CACHETABLEVIE_MAXNUM) 
        {
            //此处已经表示，越界了，需要整理了。
        }
        
    }
    return returnType;
}

//插入数据
-(TWAInsertResultType)insertArray:(NSMutableArray*)objectsInsert 
                            Range:(WAListCacheRange)aRange isRightAdd:(BOOL)aBool
{
    TWAInsertResultType returnType = EInsertSec;
    
    //插入
    NSManagedObjectContext *context = [self.fetchedResultsController managedObjectContext];
    NSEntityDescription *entity = [[self.fetchedResultsController fetchRequest] entity];

    //循环插入的索引
    int indexMark = -1;
    
    //插入的数目
    int insertNum = [objectsInsert count];
    
    if (!aBool)
    {
        //左插入，需要改变已有的数据的索引
        indexMark = aRange.WAListCacheLocation;
    }
    else if(aBool)
    {
        //右插入,不用改变已有的数据的索引
        indexMark = iObjectEnd;
    }
NSLog(@"insert %d - %d ",aRange.WAListCacheLocation,aRange.WAListCacheLength);
    //循环插入
    for (int index = 0; index <insertNum; index++)
    {
        //计算索引位置
        indexMark ++;
        int indexFinalMark = indexMark;
        
        //开始插入数据
        NSManagedObject *newManagedObject = [NSEntityDescription insertNewObjectForEntityForName:[entity name] inManagedObjectContext:context];
        //设置时间戳，为了不会内部对比时，carsh
        NSNumber *marbleNumber = [NSNumber numberWithInt:indexFinalMark];
        [newManagedObject setValue:marbleNumber forKey:@"index"];
        //设置time
        [newManagedObject setValue:[NSDate date] forKey:@"timeStamp"];
        //设置是否被删除,false表示没有被删除
        NSNumber *statusNumber = [NSNumber numberWithInt:EOk];
        [newManagedObject setValue:statusNumber forKey:@"tstatus"];
        //设置数据
        id object = [objectsInsert objectAtIndex:index];
        NSData *data = [NSKeyedArchiver archivedDataWithRootObject:object];
        [newManagedObject setValue:data forKey:@"infoArray"];
    }
    
    //保存
    NSError *error = nil;
    if (![context save:&error])
    {
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
    }
    
    return returnType;
}

//插入数据
- (TWAInsertResultType)insertNewObject:(NSMutableArray*)objectsInsert 
                                 Range:(WAListCacheRange)aRange
{
    TWAInsertResultType returnType = [self insertCheck:objectsInsert Range:aRange];
    if (returnType == EInsertSec) 
    {
        int location = aRange.WAListCacheLocation;
        NSLog(@"loc:%d - start:%d end:%d",location,iObjectStart,iObjectEnd);
        if( location < iObjectStart)
        {
            //判断超过500条的情况
            int haveLength = iObjectEnd - iObjectStart + 1;
            int willLength = haveLength + aRange.WAListCacheLength;
            if (willLength >= WA_CACHETABLEVIE_MAXNUM)
            {
                //超过500条，要删除
                int intDiff = willLength - WA_CACHETABLEVIE_MAXNUM;
                //左侧要删除这些数据
                WAListCacheRange range;
                range.WAListCacheLocation = iObjectEnd - intDiff + 1;
                range.WAListCacheLength   = intDiff;
                //删除
                [self deleteObjects:range isRightAdd:NO];
                //删除之后的索引要改变
                iObjectEnd -= aRange.WAListCacheLength;
            }
            //左插入
            [self insertArray:objectsInsert Range:aRange isRightAdd:NO];
            //更新iObjectStart
            iObjectStart = aRange.WAListCacheLocation;
        }
        else if(location > iObjectEnd) 
        {
            if (iObjectStart == -1) 
            {
                iObjectStart = 0;
            }
            //判断超过500条的情况
            int haveLength = iObjectEnd - iObjectStart + 1;
            int willLength = haveLength + aRange.WAListCacheLength;
            if (willLength >= WA_CACHETABLEVIE_MAXNUM) 
            {
                //超过了500条
                //计算超过的差值
                int intDiff = willLength - WA_CACHETABLEVIE_MAXNUM;
                //左侧要删除这些数据
                WAListCacheRange range;
                range.WAListCacheLocation = iObjectStart;
                range.WAListCacheLength   = intDiff;
                //删除
                [self deleteObjects:range isRightAdd:YES];
                //删除之后的索引要改变
                iObjectStart += intDiff;
            }
            //右插入
            [self insertArray:objectsInsert Range:aRange isRightAdd:YES];
            
            //插入完成，更新索引
            iObjectEnd += [objectsInsert count];
        }
    }
    return returnType;
}

#pragma mark 删除操作
-(TWADeleteResultType)deleteCheck:(WAListCacheRange)aRange
{
    TWADeleteResultType deleteType = EDeleteSec;
    int intLength   = aRange.WAListCacheLength;
    int intLocation = aRange.WAListCacheLocation;
    
    if (intLocation < iObjectStart) 
    {
        //删除开始位置太小
        deleteType = EDeleteLocTooSmall;
    }
    else if(intLocation > iObjectEnd)
    {
        //删除开始位置太大
        deleteType = EDeleteLocTooBig;
    }
    else if(intLength > (iObjectEnd - intLocation + 1))
    {
        //删除范围超过了
        deleteType = EDeleteRangeError;
    }
    
    return deleteType;
}

//删除指定范围内的数据
-(TWADeleteResultType)deletaObjectsAtRange:(WAListCacheRange)aRange
{
    TWADeleteResultType deleteType = EDeleteSec;
    deleteType = [self deleteCheck:aRange];
    if (deleteType == EDeleteSec)
    {
        //删除操作
        int sectionNum = [[[self fetchedResultsController] sections] count];
        
        //查找对应位置的objective
        int location = aRange.WAListCacheLocation;
        int length   = aRange.WAListCacheLength;
        NSMutableArray * nsArray = [[NSMutableArray alloc] init];
        for (int index = location ; index<location + length; index++)
        {
            //coredata内部索引以0开始，要修正
            int intRealIndex = index - iObjectStart; //修正起始位置
            NSIndexPath *indexPath = [NSIndexPath indexPathForRow:intRealIndex inSection:sectionNum - 1];
            NSManagedObject *object = [[self fetchedResultsController] objectAtIndexPath:indexPath];
            [nsArray addObject:object];
        }
        
        int intSize = [nsArray count];
        for (int index =0 ; index <intSize; index++)
        {
            NSManagedObject *object = [nsArray objectAtIndex:index];
            NSManagedObjectContext *context = [self.fetchedResultsController managedObjectContext];
            NSNumber *statusNumber = [NSNumber numberWithInt:EDelete];
            [object setValue:statusNumber forKey:@"tstatus"];
            [context refreshObject:object mergeChanges:YES];
        }
        //不需要更新start，end坐标，因为，数据没有被删除
    }
    return deleteType;
}

//删除范围内的数据
-(TWADeleteResultType)deleteObjects:(WAListCacheRange)aRange isRightAdd:(BOOL)aBool
{
    TWADeleteResultType deleteType = EDeleteSec;
    deleteType = [self deleteCheck:aRange];
    if (deleteType == EDeleteSec)
    {
        //删除操作
        int sectionNum = [[[self fetchedResultsController] sections] count];
NSLog(@"delete %d - %d ",aRange.WAListCacheLocation,aRange.WAListCacheLength);
        //查找对应位置的objective
        int location = aRange.WAListCacheLocation;
        int length   = aRange.WAListCacheLength;
        NSMutableArray * nsArray = [[NSMutableArray alloc] init];
        for (int index = location ; index<location + length; index++)
        {
            //coredata内部索引以0开始，要修正
            int intRealIndex = 0; //修正起始位置
            if (aBool == YES)
            {
                //左侧删除
                intRealIndex = index - location;
            }
            else 
            {
                //右侧删除
                intRealIndex = index - iObjectStart;
            }
            
            NSIndexPath *indexPath = [NSIndexPath indexPathForRow:intRealIndex inSection:sectionNum - 1];
            NSManagedObject *object = [[self fetchedResultsController] objectAtIndexPath:indexPath];
            [nsArray addObject:object];
        }
        
        int intSize = [nsArray count];
        for (int index =0 ; index <intSize; index++)
        {
            NSManagedObject *object = [nsArray objectAtIndex:index];
            NSManagedObjectContext *context = [self.fetchedResultsController managedObjectContext];
            [context deleteObject:object];
        }
    }
    
    return deleteType;
}

-(void)deleteAllObjects
{
    NSManagedObjectContext *context = [self.fetchedResultsController managedObjectContext];
    int sectionNum = [[[self fetchedResultsController] sections] count];
    id <NSFetchedResultsSectionInfo> sectionInfo = [[self.fetchedResultsController sections] objectAtIndex:sectionNum - 1];
    int rowNum = [sectionInfo numberOfObjects];
    
    //循环删除
    for (int index =0 ; index <rowNum; index++)
    {
        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:index inSection:sectionNum - 1];
        NSManagedObject *object = [[self fetchedResultsController] objectAtIndexPath:indexPath];
        [context deleteObject:object];
    }
    
    // Save the context.
    NSError *error = nil;
    if (![context save:&error])
    {
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
    }
    
    //默认是真实数据的第-1个位置. 表示没有数据
    iObjectStart = -1;
    //默认是真实数据的第-1个位置
    iObjectEnd   = -1;
}

#pragma mark 获取操作
//获取检测
-(TWAGetResultType)getObjectsCheck:(WAListCacheRange)aRange
{
    TWAGetResultType resultType = EGetSec;
    int location = aRange.WAListCacheLocation;
    int length   = aRange.WAListCacheLength;
    if ((location < iObjectStart || location >iObjectEnd) //索引范围错误
        || (iObjectEnd - location + 1 < length)//长度错误
        || location < 0) //起始位置错误
    {
        resultType = EGetRangeError;
    }
    return resultType;
}

//获取缓存范围
-(WAListCacheRange)getCacheRange
{
    WAListCacheRange range;
    range.WAListCacheLocation = iObjectStart;
    if (iObjectStart == iObjectEnd && iObjectEnd == -1) 
    {
        //当没有数据，且为-1是，表示没有数据
        range.WAListCacheLength = 0;
    }
    else 
    {
        //表示有数据
        range.WAListCacheLength   = iObjectEnd - iObjectStart + 1;
    }
    
    return range;
}

//获取最后一个索引位置
-(int)getLastIndex
{
    return iObjectEnd;
}

//获取第一个索引位置
-(int)getFisrtIndex
{
    return  iObjectStart;
}

//获取
-(NSMutableArray*)getObjects:(WAListCacheRange)aRange
{
    NSMutableArray *markers = nil;
    markers = [[NSMutableArray alloc] init];
    
    TWAGetResultType resultType = [self getObjectsCheck:aRange];
    
    if (resultType == EGetSec) 
    {
        int sectionNum = [[[self fetchedResultsController] sections] count];
        
        //查找对应位置的objective
        int location = aRange.WAListCacheLocation;
        int length   = aRange.WAListCacheLength;
        for (int index = location ; index<location + length; index++)
        {
            //coredata内部索引以0开始，要修正
            int intRealIndex = index - iObjectStart; //修正起始位置
            
            NSIndexPath *indexPath = [NSIndexPath indexPathForRow:intRealIndex inSection:sectionNum - 1];
            NSManagedObject *object = [[self fetchedResultsController] objectAtIndexPath:indexPath];
            NSData * data = [object valueForKey:@"infoArray"];
            NSNumber * status = [object valueForKey:@"tstatus"];
            id unarchiverObject = nil;
            switch ([status intValue])
            {
                case EOk: //正常
                {
                    unarchiverObject = [NSKeyedUnarchiver unarchiveObjectWithData:data];
                }
                    break;
                case EDelete: //删除
                {
                    unarchiverObject = @"";
                }
                default:
                    break;
            }
            //解析数据
        if (unarchiverObject)
        {
          [markers addObject:unarchiverObject];
        }
        
        }
    }
    
    return markers;
}


@end
