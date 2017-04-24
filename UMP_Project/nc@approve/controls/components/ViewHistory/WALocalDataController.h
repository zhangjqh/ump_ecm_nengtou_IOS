/*!
 @header WALocalDataController.h
 @abstract localdata控制器，单例
 @author yangrui
 @copyright yonyou
 @version 1.00 2012/07/13 Creation 
 */

#import <Foundation/Foundation.h>

@interface CWALocalDataController : NSObject
{
  BOOL iIsRecentContactEmpty;
  NSString *iFileName;
  NSMutableArray *iRecentContactArray;
}

/*!
 @property
 @abstract 最近查看数据存储数组
 */
@property (retain, nonatomic, readonly) NSMutableArray *iRecentContactArray;

/*!
 @method
 @abstract 单例实例获取
 @discussion 
 @result 最近查看数据控制器
 */
+(CWALocalDataController *)getLocalDataController;

/*!
 @method
 @abstract 重置
 */
+(void)resetData;

/*!
 @property
 @abstract 初始化数据
 */
-(void)initDataFromFile;

/*!
 @method
 @abstract 存储最近查看数据到内存数组
 @discussion 
 @result 是否保存数据成功
 */
- (void) setToRecentContact:(id)aObject;

/*!
 @method
 @abstract 本地数据是否为空
 @discussion 
 @result 本地数据是否为空
 */
- (BOOL) isRecentContactEmpty;

@end
