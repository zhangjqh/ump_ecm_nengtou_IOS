/*
 @WALinkManVO.m
 @abstract 请求人员列表返回vo
 @author dequan 
 @copyright ufida
 @version 1.00 2012/05/11 Creation 
 */

#import "WALinkManVO.h"

@implementation CWALinkManVO
@synthesize iId;
@synthesize iMark;
@synthesize iName;
@synthesize isSelect;

- (id)initWithDic:(NSDictionary *)aDic
{
  if ((self = [super init])) 
  {
    iId = [[aDic objectForKey:@"id"] copy];
    iMark = [[aDic objectForKey:@"code"] copy];
    iName = [[aDic objectForKey:@"name"] copy];
  }
  return self;
}
@end
