#import "WAActivityVO.h"

@implementation CWAActivityVO

@synthesize iActivityid;
@synthesize iUsrids;

static NSString *WA_ACTION_ACTIVITYID = @"activityid";
static NSString *WA_ACTION_USRIDS = @"usrids";


-(void)fillVoDictionary
{
    NSMutableDictionary *requestPara= [[NSMutableDictionary alloc] initWithObjectsAndKeys:
                                       self.iActivityid?self.iActivityid:@"" ,WA_ACTION_ACTIVITYID,
                                       self.iUsrids?self.iUsrids:@"" ,WA_ACTION_USRIDS,
                                       nil];
    
    self.voDictionary = requestPara;
}


@end

