#import "WAReminderContentRequestVO.h"
#import "WACommonInfoVO.h"

@implementation CWAReminderContentRequestVO

@synthesize iStatuscode;
@synthesize iStatuskey;
@synthesize iTaskid;


static NSString *WA_ADDCOMMODITYFAV_TASKID = @"taskid";
static NSString *WA_ADDCOMMODITYFAV_STATUSKEY = @"statuskey";
static NSString *WA_ADDCOMMODITYFAV_STATUSCODE = @"statuscode";


- (void)fillVoDictionary
{
  NSMutableDictionary *requestPara= [[NSMutableDictionary alloc] initWithObjectsAndKeys:
                                     self.iStatuscode?self.iStatuscode:@"",WA_ADDCOMMODITYFAV_STATUSCODE,
                                     self.iStatuskey?self.iStatuskey:@"",WA_ADDCOMMODITYFAV_STATUSKEY,
                                     self.iTaskid?self.iTaskid:@"",WA_ADDCOMMODITYFAV_TASKID,
                                     nil];
  
  NSDictionary * logObj= [CWACommonInfoVO getDefaultEmptyGroupIDAndUserID];
  
  [requestPara addEntriesFromDictionary:logObj];
  self.voDictionary = requestPara;
}
@end
