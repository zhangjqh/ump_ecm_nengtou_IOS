#import "WALinkManNC63VO.h"

@implementation CWALinkManNC63VO
@synthesize iRemark;
@synthesize iIsradio;
@synthesize iLinkMans;

- (id)initWithDic:(NSDictionary *)aDic
{
  if ((self = [super init]))
  {
    iId = [[aDic objectForKey:@"id"] copy];
    iMark = [[aDic objectForKey:@"code"] copy];
    iName = [[aDic objectForKey:@"name"] copy];
    iRemark = [[aDic objectForKey:@"remark"] copy];
    iIsradio = [[aDic objectForKey:@"isradio"] copy];
  }
  return self;
}

@end
