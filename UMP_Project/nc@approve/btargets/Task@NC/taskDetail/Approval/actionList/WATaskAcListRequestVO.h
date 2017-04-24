/*!
 @header CWARightRequestVO.h
 @abstract 任务动作请求vo
 @author dequan
 @copyright ufida
 @version 1.00 2012/05/26 Creation 
 */

#import <Foundation/Foundation.h>
#import "WABaseVO.h"

@interface CWATaskAcListRequestVO : CWABaseVO
{
}

/*!
 @method
 @abstract 初始化方法
 @discussion 初始化返回数据
 @param aDic一个用于初始化对象的字典
 @result 返回一个CWARightRequestVO的对象
 */
- (id)initWithDic:(NSMutableDictionary *)aDic;
@end
