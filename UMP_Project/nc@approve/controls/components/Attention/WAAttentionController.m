/*!
 @header WAAttentionController.m
 @abstract 关注视图的控制类
 @author dequan
 @copyright ufida
 @version 1.00 2012/09/11 Creation 
 */

#import "WAAttentionController.h"
#import "WALocalStorageHandler.h"
#import <objc/runtime.h>

static CWAAttentionController *sharedCWAAttentionController = nil;

@interface CWAAttentionController()
/*!
 	@property
 	@abstract	iFilePath	文件路径
 */
@property (nonatomic, copy) NSString *iFilePath;

@end


@implementation CWAAttentionController
@synthesize iFilePath;

//单例
+ (CWAAttentionController *)sharedCWAAttentionController
{
  if (!sharedCWAAttentionController) 
  {
    sharedCWAAttentionController = [[CWAAttentionController alloc] init];
  }
  return sharedCWAAttentionController;
}

//初始化方法
- (id)init
{
  if (self = [super init]) 
  {
    iFilePath = [[CWALocalStorageHandler createDirOfLastLoginUserWithBtarget:@"Attention"] copy];
    iAttentionDic = [[NSMutableDictionary alloc] initWithCapacity:1];
  }
  return self;
}

//清空内存
- (void)clearElements
{
  self.iFilePath = nil;
  
  [iAttentionDic removeAllObjects];
}

//归档
- (BOOL)archiveAObject:(id)aObject WithDestinationPath:(NSString *)aFilePath
{
  if (!iFilePath) 
  {
    self.iFilePath = [CWALocalStorageHandler createDirOfLastLoginUserWithBtarget:@"Attention"];
  }
  
  if ([iAttentionDic objectForKey:aFilePath]) 
  {
    NSMutableArray *attentionArr = [[NSMutableArray alloc] initWithArray:[iAttentionDic objectForKey:aFilePath]];
    for (id object in attentionArr) 
    {
      if ([object isEqual:aObject]) 
      {
        return NO;
      }
    }
    [attentionArr insertObject:aObject atIndex:0];
    if ([attentionArr count] > 50) 
    {
      [attentionArr removeLastObject];
    }
    [iAttentionDic setObject:attentionArr forKey:aFilePath];
    
    NSString *path = [iFilePath stringByAppendingPathComponent:aFilePath];
    NSData *attentionData = [NSKeyedArchiver archivedDataWithRootObject:attentionArr];
    BOOL isWriteSuccess = [attentionData writeToFile:path atomically:NO];
    return isWriteSuccess;
  }
  else 
  {
    NSString *path = [iFilePath stringByAppendingPathComponent:aFilePath];
    NSArray * tempArr = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    if (tempArr) 
    {
      [iAttentionDic setObject:tempArr forKey:aFilePath];
    }
    else 
    {
      [iAttentionDic setObject:[NSMutableArray arrayWithCapacity:1] forKey:aFilePath];
    }
    
    return [self archiveAObject:aObject WithDestinationPath:aFilePath];
  }
}

//反归档
- (NSArray *)unArchiveAObjectAtDestinationPath:(NSString *)aPath
{
  if (!iFilePath) 
  {
    self.iFilePath = [CWALocalStorageHandler createDirOfLastLoginUserWithBtarget:@"Attention"];
  }
  
  NSArray *attentionArr = [iAttentionDic objectForKey:aPath];
  if (attentionArr) 
  {
    return attentionArr;
  }
  else 
  {
    NSString *path = [iFilePath stringByAppendingPathComponent:aPath];
    attentionArr = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    if (attentionArr) 
    {
      [iAttentionDic setObject:attentionArr forKey:aPath];
      return attentionArr;
    }
    else 
    {
      return nil;
    }
  }
}

//删除关注
- (BOOL)deleteAObjectAtIndex:(NSInteger)aIndex WithDestinationPath:(NSString *)aPath
{
  
  if (!iFilePath) 
  {
    self.iFilePath = [CWALocalStorageHandler createDirOfLastLoginUserWithBtarget:@"Attention"];
  }
  
  BOOL isDeleteSuccess = YES;
  NSMutableArray *attentionArr = [[NSMutableArray alloc] initWithArray:[iAttentionDic objectForKey:aPath]];
  if (aIndex < 0 || aIndex > [attentionArr count]) 
  {
    isDeleteSuccess = NO;
  }
  else 
  {
    [attentionArr removeObjectAtIndex:aIndex];
    [iAttentionDic setObject:attentionArr forKey:aPath];
    
    NSData *attentionData = [NSKeyedArchiver archivedDataWithRootObject:attentionArr];
    NSString *path = [iFilePath stringByAppendingPathComponent:aPath];
    isDeleteSuccess = [attentionData writeToFile:path atomically:NO];
  }
  return isDeleteSuccess;
}

- (BOOL)deleteAObject:(id)aObject DestinationPath:(NSString *)aPath
{
  if (!iFilePath) 
  {
    self.iFilePath = [CWALocalStorageHandler createDirOfLastLoginUserWithBtarget:@"Attention"];
  }
  
  if ([iAttentionDic objectForKey:aPath]) 
  {
    NSMutableArray *attentionArr = [[NSMutableArray alloc] initWithArray:[iAttentionDic objectForKey:aPath]];
    for (id object in attentionArr) 
    {
      if ([object isEqual:aObject]) 
      {
        [attentionArr removeObject:object];
        [iAttentionDic setObject:attentionArr forKey:aPath];
        
        NSString *path = [iFilePath stringByAppendingPathComponent:aPath];
        NSData *attentionData = [NSKeyedArchiver archivedDataWithRootObject:attentionArr];
        BOOL isSuccess = [attentionData writeToFile:path atomically:NO];
        return isSuccess;
      }
    }
    return NO;
  }
  else 
  {
    NSString *path = [iFilePath stringByAppendingPathComponent:aPath];
    NSArray * tempArr = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    if (tempArr) 
    {
      [iAttentionDic setObject:tempArr forKey:aPath];
    }
    else 
    {
      [iAttentionDic setObject:[NSMutableArray arrayWithCapacity:1] forKey:aPath];
    }
    
    return [self deleteAObject:aObject DestinationPath:aPath];
  }
}

//交换关注顺序
- (BOOL)exchangeFromIndex:(NSInteger)aFromIndex toIndex:(NSInteger)aToIndex withPaht:(NSString *)aPath
{
  if (!iFilePath) 
  {
    self.iFilePath = [CWALocalStorageHandler createDirOfLastLoginUserWithBtarget:@"Attention"];
  }
  
  BOOL isExchangeSuccess = YES;
  NSMutableArray *attentionArr = [[NSMutableArray alloc] initWithArray:[iAttentionDic objectForKey:aPath]];
  if (aToIndex < 0 || aToIndex > [attentionArr count] || aToIndex < 0 ||aToIndex > [attentionArr count]) 
  {
    isExchangeSuccess = NO;
  }
  else 
  {
    NSObject *object = [attentionArr objectAtIndex:aFromIndex];
    [attentionArr insertObject:object atIndex:aToIndex];
    if (aFromIndex > aToIndex) 
    {
      [attentionArr removeObjectAtIndex:aFromIndex+1];
    }
    else 
    {
      [attentionArr removeObjectAtIndex:aFromIndex];
    }
    [iAttentionDic setObject:attentionArr forKey:aPath];
    
    NSData *attentionData = [NSKeyedArchiver archivedDataWithRootObject:attentionArr];
    NSString *path = [iFilePath stringByAppendingPathComponent:aPath];
    isExchangeSuccess = [attentionData writeToFile:path atomically:NO];
  }
  return isExchangeSuccess;
}

//文件是否被关注
- (BOOL)isHaveTheSameObjectWithkey:(NSString *)aKey andValue:(NSString *)aValue atPath:(NSString *)aPath 
{
  if (!iFilePath) 
  {
    self.iFilePath = [CWALocalStorageHandler createDirOfLastLoginUserWithBtarget:@"Attention"];
  }
  
  NSArray *attentionArr = [iAttentionDic objectForKey:aPath];
  if (attentionArr) 
  {
    for (id object in attentionArr) 
    {
      id value = nil;
      //object_getInstanceVariable(object, [aKey cStringUsingEncoding:NSUTF8StringEncoding],(void *)&value);
      if ([value isEqual:aValue]) 
      {
        return YES;
      }
    }
    return NO;
  }
  else 
  {
    NSString *path = [iFilePath stringByAppendingPathComponent:aPath];
    NSArray * tempArr = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    if (tempArr) 
    {
      [iAttentionDic setObject:tempArr forKey:aPath];
    }
    else 
    {
      [iAttentionDic setObject:[NSMutableArray arrayWithCapacity:1] forKey:aPath];
    }
    return [self isHaveTheSameObjectWithkey:aKey andValue:aValue atPath:aPath];
  }
}
@end
