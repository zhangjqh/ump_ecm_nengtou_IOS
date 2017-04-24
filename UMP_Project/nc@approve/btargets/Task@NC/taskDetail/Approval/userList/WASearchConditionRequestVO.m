/*
 @ CWASearchConditionRequestVO
 @abstract 收索列表界面的搜索条件请求vo
 @author dequan
 @copyright ufida
 @version 1.00 2012/05/22 Creation 
 */

#import "WASearchConditionRequestVO.h"

@implementation CWASearchConditionRequestVO


- (id)initWithDic:(NSMutableDictionary *)aDic
{
  if ((self = [super init])) 
  {
    [self setVoDictionary:aDic];
  }
  return self;
}
@end
