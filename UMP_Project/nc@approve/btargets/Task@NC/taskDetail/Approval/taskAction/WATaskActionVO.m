/*
 @WATaskActionVO.m
 @abstract 任务行为界面请返回数据vo
 @author dequan 
 @copyright ufida
 @version 1.00 2012/05/11 Creation 
 */

#import "WATaskActionVO.h"

@implementation CWATaskActionVO
@synthesize iReturnFlag;
@synthesize iDesc;

//初始化方法
- (id)initWithDic:(NSDictionary *)aDic
{
  if ((self = [super init])) 
  {

  }
  return self;
}
@end
