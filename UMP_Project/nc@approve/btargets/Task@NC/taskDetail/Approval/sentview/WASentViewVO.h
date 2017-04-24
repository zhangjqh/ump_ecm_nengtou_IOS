

#import "WABaseVO.h"

@interface CWASentViewVO : CWABaseVO
{
  NSString *iServiceCode;
  NSString *iTaskID;
  NSArray *iSenters;
}
@property (nonatomic,copy)NSArray *iSenters;
@property (nonatomic,copy)NSString *iServiceCode;
@property (nonatomic,copy)NSString *iTaskID;
@end
