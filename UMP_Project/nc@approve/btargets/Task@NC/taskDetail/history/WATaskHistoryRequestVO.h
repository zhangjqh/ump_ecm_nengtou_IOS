/*!
 @header WATaskHistoryRequestVO.h
 @abstract 消息审批历史的请求vo
 @author dequan
 @copyright ufida
 @version 1.00 2012/05/26 Creation 
 */

#import "WABaseVO.h"

@interface CWATaskHistoryRequestVO : CWABaseVO

/*!
 @method
 @abstract 初始化方法
 @discussion 初始化vo对象
 @param aDic用来初始化vo的成员变量
 @result 返回CWALinkManRequestVO的not owned对象
 */
- (id)initWithDic:(NSMutableDictionary *)aDic;

@end
