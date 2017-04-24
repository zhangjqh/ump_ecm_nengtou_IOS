#import "WAHTMLContentRequestVO.h"
#import "WACommonInfoVO.h"

@implementation CWAHTMLContentRequestVO

@synthesize iDownflag;
@synthesize iID;
@synthesize iStatuscode;
@synthesize iStatuskey;
@synthesize iTaskid;


static NSString *WA_ADDCOMMODITYFAV_DOWNLOADFLAG = @"downflag";
static NSString *WA_ADDCOMMODITYFAV_ID= @"id";
static NSString *WA_ADDCOMMODITYFAV_STATUSCODE= @"statuscode";
static NSString *WA_ADDCOMMODITYFAV_STATUSKEY= @"statuskey";
static NSString *WA_ADDCOMMODITYFAV_TASKID= @"taskid";


- (void)fillVoDictionary
{
  NSMutableDictionary *requestPara= [[NSMutableDictionary alloc] initWithObjectsAndKeys:
                                     self.iDownflag?self.iDownflag:@"",WA_ADDCOMMODITYFAV_DOWNLOADFLAG,
                                     self.iID?self.iID:@"",WA_ADDCOMMODITYFAV_ID,
                                     self.iStatuscode?self.iStatuscode:@"",WA_ADDCOMMODITYFAV_STATUSCODE,
                                      self.iStatuskey?self.iStatuskey:@"",WA_ADDCOMMODITYFAV_STATUSKEY,
                                      self.iTaskid?self.iTaskid:@"",WA_ADDCOMMODITYFAV_TASKID,
                                     nil];
  
  NSDictionary * logObj= [CWACommonInfoVO getDefaultEmptyGroupIDAndUserID];
  
  [requestPara addEntriesFromDictionary:logObj];
  self.voDictionary = requestPara;
}

@end
