#import "WADoActionRequstsVO.h"
#import "WACommonInfoVO.h"

@implementation CWADoActionRequstsVO

@synthesize iActiondes;


static NSString *WA_TASKCENTER_ACTIONCODE_ACTIONDES = @"actiondes";

- (void)fillVoDictionary
{
  NSMutableDictionary *requestPara= [[NSMutableDictionary alloc] initWithObjectsAndKeys:
                                     self.iActiondes?self.iActiondes:@"",WA_TASKCENTER_ACTIONCODE_ACTIONDES,
                                                                      nil];
  
  NSDictionary * logObj= [CWACommonInfoVO getDefaultEmptyGroupIDAndUserID];
  
  [requestPara addEntriesFromDictionary:logObj];
  self.voDictionary = requestPara;
  
}
@end
