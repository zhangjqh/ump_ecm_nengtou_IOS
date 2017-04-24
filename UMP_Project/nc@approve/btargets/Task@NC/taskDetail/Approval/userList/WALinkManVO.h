/*!
 @header CWALinkManVO.h
 @abstract 请求人员列表返回vo
 @author dequan 
 @copyright ufida
 @version 1.00 2012/05/11 Creation 
 */

#import <Foundation/Foundation.h>
#import "WABaseVO.h"

@interface CWALinkManVO : CWABaseVO
{
  //记录行
  NSString *iId;
  //标识
  NSString *iMark;
  //名字
  NSString *iName;
  BOOL isSelect;
}

/*!
 @property 
 @abstract 记录行
 */
@property (nonatomic, readonly) NSString *iId;

/*!
 @property 
 @abstract 标识
 */
@property (nonatomic, copy) NSString *iMark;

/*!
 @property 
 @abstract 名字
 */
@property (nonatomic, readonly) NSString *iName;
@property (nonatomic, assign) BOOL isSelect;

/*!
 @method
 @abstract 初始化方法
 @discussion 初始化vo对象
 @param aDic用来初始化vo的成员变量
 @param aRequestVO传入数据决定查询条件等
 @result 返回CWALinkManVO的not owned对象
 */
- (id)initWithDic:(NSDictionary *)aDic;
@end
