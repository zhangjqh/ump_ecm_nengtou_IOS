/*bstract 任务中心列表VO
 */
#import "WATaskListVO.h"

@implementation CWATaskListVO
@synthesize iIconPath;
@synthesize iStatus ;
@synthesize iName;
@synthesize iTime;
@synthesize iTitle;
@synthesize iID;
@synthesize iServiceCode;

-(id)init
{
  self = [super init];
  if (self)
  {
        
  }
  return self;
}

@end
