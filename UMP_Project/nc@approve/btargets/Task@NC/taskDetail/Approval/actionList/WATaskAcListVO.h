/*!
 @header CWARightVO.h
 @abstract 动作列表vo
 @author dequan
 @copyright ufida
 @version 1.00 2012/05/26 Creation 
 */

#import <Foundation/Foundation.h>
#import "WABaseVO.h"

@interface CWATaskAcListVO : CWABaseVO
{
  //动作编码
  NSString *iActionCode;
  //动作名称
  NSString *iActionname;
  //任务动作flag
  NSInteger iActFlag;
  
  NSString *iServiceCode;
}

@property (nonatomic, assign) NSInteger iActFlag;
/*!
 @property
 @abstract 动作代码
 */
@property (nonatomic, readonly) NSString *iActionCode;

/*!
 @property
 @abstract 动作名字
 */
@property (nonatomic, readonly)  NSString *iActionname;

/*!
 @property
 @abstract 服务器编码
 */
@property (nonatomic, copy)  NSString *iServiceCode;

/*!
 @method
 @abstract  初始化方法
 @discussion 初始化方法
 @param aDic 要传入的参数
 @result void
 */
- (id)initWithDic:(NSDictionary *)aDic;
@end
