/*!
 @header WALocalDataController.m
 @abstract localdata控制器，单例
 @author yangrui
 @copyright yonyou
 @version 1.00 2012/07/13 Creation 
 */

#import "WALocalDataController.h"
#import "WALocalStorageHandler.h"
#import "WAViewHisMacro.h"

@interface CWALocalDataController()

/*!
 @property
 @abstract 文件名
 */
@property(nonatomic,retain)NSString *iFileName;

@end

@implementation CWALocalDataController
static CWALocalDataController *sharedInstance = nil;

@synthesize iFileName;

@synthesize iRecentContactArray;

/*!
 @method
 @abstract 单例实例获取
 @discussion 
 @result 最近查看数据控制器
 */
+(CWALocalDataController *)getLocalDataController
{
    @synchronized(self) 
    {
        if(sharedInstance == nil)
        sharedInstance = [[self alloc] init];
    }
    return sharedInstance;
}

/*!
 @method
 @abstract 初始化方法
 @discussion 判断是否本地存在plist文件，如不存在则创建，如存在将文件中的数据输出到内存中
 @result 最近查看数据控制器
 */
-(id)init
{
    if (self = [super init]) 
    {
        iRecentContactArray = nil;
        [self initDataFromFile];
    }
    return self;
}

+(void)resetData
{
    sharedInstance =nil;
}

//初始化数据
-(void)initDataFromFile
{
    //得到path
    NSString *path = [CWALocalStorageHandler
                      createDirOfLastLoginUserWithBtarget:@"ViewHistory"]; 
    self.iFileName = [path stringByAppendingPathComponent:@"WAViewHisLocalData.plist"];
    
    //得到文件指针，并初始化文件
    NSFileManager* fileManager=[NSFileManager defaultManager];
    //如果无此文件，则设立文件
    if(![fileManager fileExistsAtPath:iFileName])
    {
        [fileManager createFileAtPath:iFileName contents:nil attributes:nil];
        iRecentContactArray = [[NSMutableArray alloc] init];
        //将文件初始化为NSArray格式
        NSData * data  = [NSKeyedArchiver 
                          archivedDataWithRootObject:iRecentContactArray];//将s1序列化后,保存到NSData中
        [data writeToFile:iFileName atomically:NO];  //持久化保存成物理文件
        iRecentContactArray = nil;
    }
    //初始化用于读取和写入的数据
    NSData *data = [NSData dataWithContentsOfFile:iFileName];//读取文件	
    //先release
    iRecentContactArray = [NSKeyedUnarchiver unarchiveObjectWithData:data];//反序列化
    
    //本地文件是否为空
    if (0 == iRecentContactArray.count) 
    {
        iIsRecentContactEmpty = YES;
    } 
    else 
    {
        iIsRecentContactEmpty = NO;
    }
}

/*!
 @method
 @abstract 存储最近查看数据到内存数组
 @discussion 
 @result 是否保存数据成功
 */
- (void) setToRecentContact:(id)aObject
{
  //无法判断是否相同，上层自己判断
  if ([iRecentContactArray count] >= WA_AVAILQUANT_RECENTCONTACT_MAXAMOUNT_INT) 
  {
    [iRecentContactArray removeLastObject];
  }
  //判断是否相同
  if ([iRecentContactArray count]>0)
  {
      id object = [iRecentContactArray objectAtIndex:0];
      if ([object isEqual:aObject]) 
      {
          return;
      }
  }
  [iRecentContactArray insertObject:aObject atIndex:0];
  
  iIsRecentContactEmpty = NO;
  [self saveRecentContactToFile];
}

/*!
 @method
 @abstract 存储最近查看数据到本地
 @discussion 
 @result 是否保存数据成功
 */
- (BOOL) saveRecentContactToFile
{
    //将s1序列化后,保存到NSData中
    NSData	*data  = [NSKeyedArchiver 
                      archivedDataWithRootObject:iRecentContactArray];
    //持久化保存成物理文件
	BOOL isSucceed = [data writeToFile:iFileName atomically:NO];
    if(isSucceed)
    {
        iIsRecentContactEmpty = NO;
    }
    return isSucceed;
}

/*!
 @method
 @abstract 本地数据是否为空
 @discussion 
 @result 本地数据是否为空
 */
- (BOOL) isRecentContactEmpty
{
    return iIsRecentContactEmpty;
}

@end
