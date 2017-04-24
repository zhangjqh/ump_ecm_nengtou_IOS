
#import "WAFirstPicContentRequestVO.h"
#import "WACommonInfoVO.h"

@implementation CWAFirstPicContentRequestVO
@synthesize iId;
@synthesize iSizetype;
@synthesize iTaskid;

static NSString *WA_PIC_TASKID = @"taskid";
static NSString *WA_PIC_ID = @"id";
static NSString *WA_PIC_SIZETYPE = @"sizetype";



- (void)fillVoDictionary
{
  NSMutableDictionary *requestPara= [[NSMutableDictionary alloc] initWithObjectsAndKeys:
                                     self.iId?self.iId:@"",WA_PIC_ID,
                                     self.iSizetype?self.iSizetype:@"",WA_PIC_SIZETYPE,
                                     self.iTaskid?self.iTaskid:@"",WA_PIC_TASKID,
                                     nil];
  
  NSDictionary * logObj= [CWACommonInfoVO getDefaultEmptyGroupIDAndUserID];
  
  [requestPara addEntriesFromDictionary:logObj];
  self.voDictionary = requestPara;

}


@end
