#import "WABaseVO.h"

@interface CWADoActionRequstVO : CWABaseVO
{
  NSString *iTaskid;
  NSString *iStatuskey;
  NSString *iStatuscode;
  NSString *iActioncode;
  NSString *iNote;
  NSArray *iUserids;
  NSString *iBsignaltype;
  NSArray *iBsignalusers;
  NSString *iAsignaltype;
  NSArray *iAsignalusers;
  NSArray *iCcusers;
  NSString *iPostil;
  NSArray *iActivityids;
  NSArray *iRejectmarks;
}

@property (nonatomic,copy) NSString *iTaskid;
@property (nonatomic,copy) NSString *iStatuskey;
@property (nonatomic,copy) NSString *iStatuscode;
@property (nonatomic,copy) NSString *iActioncode;
@property (nonatomic,copy) NSString *iNote;
@property (nonatomic,retain) NSArray *iUserids;
@property (nonatomic,copy) NSString *iBsignaltype;
@property (nonatomic,retain) NSArray *iBsignalusers;
@property (nonatomic,copy) NSString *iAsignaltype;
@property (nonatomic,retain) NSArray *iAsignalusers;
@property (nonatomic,retain) NSArray *iActivityids;
@property (nonatomic,retain) NSArray *iRejectmarks;
@property (nonatomic,retain) NSArray *iCcusers;
@property (nonatomic,copy) NSString *iPostil;
@end
