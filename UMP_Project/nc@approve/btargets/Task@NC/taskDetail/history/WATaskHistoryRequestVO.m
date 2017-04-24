/*!
 @header WATaskHistoryRequestVO.m
 @abstract 消息审批历史的请求vo
 @author dequan
 @copyright ufida
 @version 1.00 2012/05/26 Creation 
 */

#import "WATaskHistoryRequestVO.h"

@implementation CWATaskHistoryRequestVO

//初始化方法
- (id)initWithDic:(NSMutableDictionary *)aDic
{
  if ((self = [super init])) 
  {
    [self setVoDictionary:aDic];
  }
  return self;
}
@end
