
#import "WABaseVO.h"

@interface CWAFirstPicContentRequestVO: CWABaseVO
{
  NSString *iTaskid;
  NSString *iId;
  NSString *iSizetype;
}

@property (nonatomic,copy) NSString *iTaskid;
@property (nonatomic,copy) NSString *iId;
@property (nonatomic,copy) NSString *iSizetype;

@end
