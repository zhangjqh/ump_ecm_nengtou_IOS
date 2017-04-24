#import "WANormallyNoteListRequestVO.h"
#import "WACommonInfoVO.h"

@implementation CWANormallyNoteListRequestVO

static NSString *WA_NOTELIST_ACTIONCODE = @"actioncode";
static NSString *WA_NOTELIST_TASKID = @"taskid";
static NSString *WA_NOTELIST_STATUSKEY = @"statuskey";
static NSString *WA_NOTELIST_STATUSCODE = @"statuscode";

@synthesize iActioncode;
@synthesize iStatuscode;
@synthesize iStatuskey;
@synthesize iTaskid;

- (void)fillVoDictionary
{
  NSMutableDictionary *requestPara= [[NSMutableDictionary alloc] initWithObjectsAndKeys:
                                     self.iActioncode?self.iActioncode:@"",WA_NOTELIST_ACTIONCODE,
                                     self.iStatuskey?self.iStatuskey:@"",WA_NOTELIST_STATUSKEY,
                                     self.iStatuscode?self.iStatuscode:@"",WA_NOTELIST_STATUSCODE,
                                     self.iTaskid?self.iTaskid:@"",WA_NOTELIST_TASKID,
                                     nil];
  
  NSDictionary * logObj= [CWACommonInfoVO getDefaultEmptyGroupIDAndUserID];
  
  [requestPara addEntriesFromDictionary:logObj];
  self.voDictionary = requestPara;
  
}

@end
