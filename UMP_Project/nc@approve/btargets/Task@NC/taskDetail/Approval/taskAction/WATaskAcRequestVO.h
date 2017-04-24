/*!
 @header CWATaskAcRequestVO.h
 @abstract 任务行为界面请求数据vo
 @author dequan 
 @copyright ufida
 @version 1.00 2012/05/11 Creation 
 */

#import <Foundation/Foundation.h>
#import "WABaseVO.h"

@interface CWATaskAcRequestVO : CWABaseVO
{
  @private
  //用户标识
  NSString *iUsrid;
  //任务标识
  NSString *iTaskid;
  //意见
  NSString *iNote;
  //加签用户标识集合
  NSArray *iUserids;
  //人工活动标识
  NSArray *iNodeid;
  //人员标识集合
  NSArray *iPsnids;
}

/*!
 @property 
 @abstract 用户标识
 */
@property (nonatomic, readonly) NSString *iUsrid;

/*!
 @property 
 @abstract 任务标识
 */
@property (nonatomic, readonly) NSString *iTaskid;

/*!
 @property 
 @abstract 意见
 */
@property (nonatomic, readonly) NSString *iNote;

/*!
 @property 
 @abstract 加签用户标识集合
 */
@property (nonatomic, retain) NSArray *iUserids;

/*!
 @property 
 @abstract 人工活动标识
 */
@property (nonatomic, retain) NSArray *iNodeid;

/*!
 @property 
 @abstract 人员标识集合
 */
@property (nonatomic, retain) NSArray *iPsnids;

/*!
 @method
 @abstract 初始化方法
 @discussion 初始化vo对象
 @param aDic用来初始化vo的成员变量
 @result 返回CWATaskAcRequestVO的not owned对象
 */
- (id)initWithDic:(NSMutableDictionary *)aDic;
@end
