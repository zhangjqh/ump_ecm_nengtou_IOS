
#import "WAAttachMentUpRequestsVO.h"
#import "WACommonInfoVO.h"

@implementation CWAAttachMentsUpRequestsVO

@synthesize iActioncode;
@synthesize iTaskID;
@synthesize iAttachList;


static NSString *WA_ATTACHMENT_ACTIONCODE = @"actioncode";
static NSString *WA_ATTACHMENT_TASKID= @"taskid";
static NSString *WA_ATTACHMENT_FILELIST = @"filelist";

- (void)fillVoDictionary
{
  NSMutableDictionary *requestPara= [[NSMutableDictionary alloc] initWithObjectsAndKeys:
                                     self.iActioncode?self.iActioncode:@"",WA_ATTACHMENT_ACTIONCODE,
                                     self.iTaskID?self.iTaskID:@"",WA_ATTACHMENT_TASKID,
                                     self.iAttachList?self.iAttachList:@"",WA_ATTACHMENT_FILELIST,
                                     nil];
  
  NSDictionary * logObj= [CWACommonInfoVO getDefaultEmptyGroupIDAndUserID];
  
  [requestPara addEntriesFromDictionary:logObj];
  self.voDictionary = requestPara;
}

@end
