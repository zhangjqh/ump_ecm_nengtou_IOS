

#import "WAOtherPicContentRequestVO.h"
#import "WACommonInfoVO.h"

@implementation CWAOtherPicContentRequestVO

@synthesize iTaskid;
@synthesize iInfopicid;
@synthesize iSizetype;

static NSString *WA_PIC_TASKID = @"taskid";
static NSString *WA_PIC_ID = @"infopicid";
static NSString *WA_PIC_SIZETYPE = @"sizetype";

- (void)fillVoDictionary
{
  NSMutableDictionary *requestPara= [[NSMutableDictionary alloc] initWithObjectsAndKeys:
                                     self.iInfopicid?self.iInfopicid:@"",WA_PIC_ID,
                                     self.iSizetype?self.iSizetype:@"",WA_PIC_SIZETYPE,
                                     self.iTaskid?self.iTaskid:@"",WA_PIC_TASKID,
                                     nil];
  
  NSDictionary * logObj= [CWACommonInfoVO getDefaultEmptyGroupIDAndUserID];
  
  [requestPara addEntriesFromDictionary:logObj];
  self.voDictionary = requestPara;
}

@end
