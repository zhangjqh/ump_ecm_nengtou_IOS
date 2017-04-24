/*!
 @header CWARightVO.m
 @abstract 动作列表vo
 @author dequan
 @copyright ufida
 @version 1.00 2012/05/26 Creation 
 */

#import "WATaskAcListVO.h"

@implementation CWATaskAcListVO
@synthesize iActionname;
@synthesize iActionCode;
@synthesize iActFlag;
@synthesize iServiceCode;

//动作编码key
static NSString *WA_TASKACTION_CODE = @"code";
//动作名字key
static NSString *WA_TASKACION_NAME = @"name";
//动作的审批表示的key
static NSString *WA_TASKACTION_ACTFLAT = @"actflag";

- (void)dealloc
{
//  [iActionCode release];
//  [iActionname release];
//  [iServiceCode release];
//  [super dealloc];
}

- (id)initWithDic:(NSDictionary *)aDic
{
  if ((self = [super init])) 
  {
    iActionCode = [[aDic objectForKey:WA_TASKACTION_CODE] copy];
    iActionname = [[aDic objectForKey:WA_TASKACION_NAME] copy];
    iActFlag = [[aDic objectForKey:WA_TASKACTION_ACTFLAT] intValue];
  }
  return self;
}
@end
