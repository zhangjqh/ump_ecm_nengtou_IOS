#import "WADoActionRequstVO.h"
#import "WACommonInfoVO.h"

@implementation CWADoActionRequstVO

@synthesize iTaskid;
@synthesize iActioncode;
@synthesize iActivityids;
@synthesize iAsignaltype;
@synthesize iAsignalusers;
@synthesize iBsignaltype;
@synthesize iBsignalusers;
@synthesize iCcusers;
@synthesize iNote;
@synthesize iPostil;
@synthesize iStatuscode;
@synthesize iStatuskey;
@synthesize iUserids;
@synthesize iRejectmarks;


static NSString *WA_TASTACTION_TASKID = @"taskid";
static NSString *WA_TASTACTION_STATUSKEY= @"statuskey";
static NSString *WA_TASTACTION_STATUSCODE = @"statuscode";
static NSString *WA_TASTACTION_ACTIONCODE = @"actioncode";
static NSString *WA_TASTACTION_NOTE = @"note";
static NSString *WA_TASTACTION_USERIDS = @"userids";
static NSString *WA_TASTACTION_BSIGNALTYPE = @"bsignaltype";
static NSString *WA_TASTACTION_BSIGNALUSERS = @"bsignalusers";
static NSString *WA_TASTACTION_ASIGNALTYPE = @"asignaltype";
static NSString *WA_TASTACTION_ASIGNALUSERS = @"asignalusers";
static NSString *WA_TASTACTION_CCUSERS = @"ccusers";
static NSString *WA_TASTACTION_REJECTMARKS = @"rejectmarks";
static NSString *WA_TASTACTION_POSTIL = @"postil";
static NSString *WA_TASTACTION_ACTIVITYIDS = @"activityids";

- (void)fillVoDictionary
{
  NSMutableDictionary *requestPara= [[NSMutableDictionary alloc] initWithCapacity:1];
  
  if(self.iNote)
  {
    [requestPara setObject:self.iNote forKey:WA_TASTACTION_NOTE];
  }
  if(self.iPostil)
  {
    [requestPara setObject:self.iPostil forKey:WA_TASTACTION_POSTIL];
  }
  
  if(self.iStatuscode)
  {
    [requestPara setObject:self.iStatuscode forKey:WA_TASTACTION_STATUSCODE];
  }
  
  if(self.iStatuskey)
  {
    [requestPara setObject:self.iStatuskey forKey:WA_TASTACTION_STATUSKEY];
  }
  
  if(self.iTaskid)
  {
    [requestPara setObject:self.iTaskid forKey:WA_TASTACTION_TASKID];
  }
  
  if(self.iUserids)
  {
    [requestPara setObject:self.iUserids forKey:WA_TASTACTION_USERIDS];
  }
  
  if(self.iCcusers)
  {
    [requestPara setObject:self.iCcusers forKey:WA_TASTACTION_CCUSERS];
  }
  
  if(self.iBsignalusers)
  {
    [requestPara setObject:self.iBsignalusers forKey:WA_TASTACTION_BSIGNALUSERS];
  }
  
  if(self.iAsignalusers)
  {
    [requestPara setObject:self.iAsignalusers forKey:WA_TASTACTION_ASIGNALUSERS];
  }
  
  if(self.iActivityids)
  {
    [requestPara setObject:self.iActivityids forKey:WA_TASTACTION_ACTIVITYIDS];
  }
  
  if(self.iAsignaltype)
  {
    [requestPara setObject:self.iAsignaltype forKey:WA_TASTACTION_ASIGNALTYPE];
  }
  
  if(self.iActioncode)
  {
    [requestPara setObject:self.iActioncode forKey:WA_TASTACTION_ACTIONCODE];
  }
  
  if(self.iBsignaltype)
  {
    [requestPara setObject:self.iBsignaltype forKey:WA_TASTACTION_BSIGNALTYPE];
  }
  
  if(self.iRejectmarks)
  {
    [requestPara setObject:self.iRejectmarks forKey:WA_TASTACTION_REJECTMARKS];
  }
  
  self.voDictionary = requestPara;

}
@end
