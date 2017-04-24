/*!
 @header CWASearchConditionRequestVO.h
 @abstract 收索列表界面的搜索条件请求vo
 @author dequan
 @copyright ufida
 @version 1.00 2012/05/22 Creation 
 */

#import "WABaseVO.h"

@interface CWASearchConditionRequestVO : CWABaseVO
{
  
}

/*!
 @method
 @abstract 初始化方法
 @discussion 初始化vo对象
 @param aDic用来初始化vo的成员变量
 @result 返回CWAViewHisRequestVO的not owned对象
 */
- (id)initWithDic:(NSMutableDictionary *)aDic;
@end
