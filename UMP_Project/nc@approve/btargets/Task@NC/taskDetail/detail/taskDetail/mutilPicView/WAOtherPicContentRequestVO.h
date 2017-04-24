

#import "WABaseVO.h"

@interface CWAOtherPicContentRequestVO : CWABaseVO
{
  NSString *iTaskid;
  NSString *iInfopicid;
  NSString *iSizetype;
}

@property (nonatomic,copy) NSString *iTaskid;
@property (nonatomic,copy) NSString *iInfopicid;
@property (nonatomic,copy) NSString *iSizetype;

@end
