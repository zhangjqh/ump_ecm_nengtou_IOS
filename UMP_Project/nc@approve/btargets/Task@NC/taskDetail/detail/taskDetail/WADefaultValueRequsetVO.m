
#import "WADefaultValueRequsetVO.h"
#import "WACommonInfoVO.h"

@implementation CWADefaultValueRequsetVO

@synthesize iActioncode;
@synthesize iStatuscode;
@synthesize iStatuskey;
@synthesize iTaskid;
@synthesize iServiceCode;

static NSString *WA_ADDCOMMODITYFAV_ACTIONCODE = @"actioncode";
static NSString *WA_ADDCOMMODITYFAV_STATUSCODE= @"statuscode";
static NSString *WA_ADDCOMMODITYFAV_STATUSKEY= @"statuskey";
static NSString *WA_ADDCOMMODITYFAV_TASKID= @"taskid";





- (void)fillVoDictionary
{
  NSMutableDictionary *requestPara= [[NSMutableDictionary alloc] initWithObjectsAndKeys:
                                     self.iActioncode?self.iActioncode:@"",WA_ADDCOMMODITYFAV_ACTIONCODE,
                                     self.iStatuskey?self.iStatuskey:@"",WA_ADDCOMMODITYFAV_STATUSKEY,
                                     self.iStatuscode?self.iStatuscode:@"",WA_ADDCOMMODITYFAV_STATUSCODE,
                                     self.iTaskid?self.iTaskid:@"",WA_ADDCOMMODITYFAV_TASKID,
                                     nil];
  
  NSDictionary * logObj= [CWACommonInfoVO getDefaultEmptyGroupIDAndUserID];
  
  [requestPara addEntriesFromDictionary:logObj];
  self.voDictionary = requestPara;
  
}
@end
