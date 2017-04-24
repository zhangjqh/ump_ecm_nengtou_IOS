/*ARightRequestVO.m
 @abstract 任务动作请求vo
 @author dequan
 @copyright ufida
 @version 1.00 2012/05/26 Creation 
 */


#import "WATaskAcListRequestVO.h"

@implementation CWATaskAcListRequestVO

- (void)dealloc
{
  //[super dealloc];
}

- (id)initWithDic:(NSMutableDictionary *)aDic
{
  if ((self = [super init])) 
  {
    [self setVoDictionary:aDic];
  }
  return self;
}
@end
