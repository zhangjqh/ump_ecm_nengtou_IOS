#import "WABaseVO.h"

@interface CWAActivityVO : CWABaseVO
{
  NSString *iActivityid;
  NSMutableArray *iUsrids;
}

@property (nonatomic,copy)NSString *iActivityid;
@property (nonatomic,retain) NSMutableArray *iUsrids;

@end
