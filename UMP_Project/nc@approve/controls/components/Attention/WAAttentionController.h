/*!
 @header WAAttentionController.h
 @abstract 关注视图的控制类
 @author dequan
 @copyright ufida
 @version 1.00 2012/09/11 Creation 
 */

#import <Foundation/Foundation.h>
#import "WAAttentionDef.h"

@interface CWAAttentionController : NSObject
{
  NSMutableDictionary *iAttentionDic;
  NSString *iFilePath;
}

/*!
 @method
 @abstract 单例方法
 @discussion  
 @result 返回一个CWAAttentionController的单例
 */
+ (CWAAttentionController *)sharedCWAAttentionController;

/*!
 @method
 @abstract	清空关注元素
 @discussion	
 */
- (void)clearElements;

/*!
 @method
 @abstract 添加数据
 @discussion 
 @param aObject要存储的对象
 @param aFilePath存储的文件名
 @result void
 */
- (BOOL)archiveAObject:(id)aObject WithDestinationPath:(NSString *)aFilePath;
/*!
 @method
 @abstract 到出数据
 @discussion  
 @param aPath导出数据的文件的名字
 @result 返回owned的数据源
 */
- (NSArray *)unArchiveAObjectAtDestinationPath:(NSString *)aPath;
/*!
 @method
 @abstract 删除一条关注
 @discussion 
 @param aIndex删除的索引
 @param aPath删除的路径
 @result 返回删除是否成功
 */
- (BOOL)deleteAObjectAtIndex:(NSInteger)aIndex WithDestinationPath:(NSString *)aPath;

/*!
 	@method
 	@abstract	更具key和value删除一条记录
 	@discussion	
 	@param 	aObject 要删除的对象
 	@param 	aPath 	要删除对象的路径
 	@result	返回是否删除成功
 */
- (BOOL)deleteAObject:(id)aObject DestinationPath:(NSString *)aPath;

/*!
 @method
 @abstract 改变关注的顺序
 @discussion  
 @param aFromIndex 开始的索引
 @param aToIndex 结束的索引
 @param aPath 文件的路径
 @result 返回交换是否成功
 */
- (BOOL)exchangeFromIndex:(NSInteger)aFromIndex toIndex:(NSInteger)aToIndex withPaht:(NSString *)aPath;

/*!
 @method
 @abstract 在文件的key下，看是否存在相同的对象
 @discussion  
 @param aKey 被关注的字段的vo的key
 @param aValue 被关注的对象的关键值
 @param aPath 文件的路径
 @result 文件是否被关注
 */
- (BOOL)isHaveTheSameObjectWithkey:(NSString *)aKey andValue:(NSString *)aValue atPath:(NSString *)aPath; 
@end
