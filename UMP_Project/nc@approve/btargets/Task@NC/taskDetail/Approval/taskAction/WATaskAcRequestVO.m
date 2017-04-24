/*
 @CWATaskAcRequestVO.m
 @abstract 任务行为界面请求数据vo
 @author dequan 
 @copyright ufida
 @version 1.00 2012/05/11 Creation 
 */

#import "WATaskAcRequestVO.h"

@implementation CWATaskAcRequestVO
@synthesize iUsrid;
@synthesize iNote;
@synthesize iTaskid;
@synthesize iNodeid;
@synthesize iPsnids;
@synthesize iUserids;

- (id)initWithDic:(NSMutableDictionary *)aDic
{
  if ((self = [super init])) 
  {
    [self setVoDictionary:aDic];
  }
  return self;
}

@end
