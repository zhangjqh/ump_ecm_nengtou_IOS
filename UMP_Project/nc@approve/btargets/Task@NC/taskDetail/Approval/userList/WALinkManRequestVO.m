/*
 @CWALinkManRequestVO.m
 @abstract 请求人员列表vo
 @author dequan 
 @copyright ufida
 @version 1.00 2012/05/11 Creation 
 */

#import "WALinkManRequestVO.h"

@implementation CWALinkManRequestVO


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
