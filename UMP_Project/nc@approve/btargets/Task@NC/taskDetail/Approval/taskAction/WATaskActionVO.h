/*!
 @header CWATaskActionVO.h
 @abstract 任务行为界面请返回数据vo
 @author dequan 
 @copyright ufida
 @version 1.00 2012/05/11 Creation 
 */

#import <Foundation/Foundation.h>
#import "WABaseVO.h"

@interface CWATaskActionVO : CWABaseVO
{
  //返回标识
  NSInteger iReturnFlag;
  //描述
  NSString *iDesc;
}

/*!
 @property 
 @abstract 标识
 */
@property (nonatomic, assign) NSInteger iReturnFlag;

/*!
 @property 
 @abstract 描述
 */
@property (nonatomic, copy) NSString *iDesc;


/*!
 @method
 @abstract 初始化方法
 @discussion 初始化vo对象
 @param aDic用来初始化vo的成员变量
 @result 返回CWATaskActionVO的not owned对象
 */
- (id)initWithDic:(NSDictionary *)aDic;
@end
