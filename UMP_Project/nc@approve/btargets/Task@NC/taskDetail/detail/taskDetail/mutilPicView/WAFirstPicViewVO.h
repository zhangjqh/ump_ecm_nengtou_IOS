#import "WABaseVO.h"

@interface CWAFirstPicViewVO : CWABaseVO
{
  NSString *iTitle;
  NSString *iFirstpic;
  NSString *iFirstpicdesc;
  NSArray *iRestpiclist;
}

@property (nonatomic,copy)NSString *iTitle;
@property (nonatomic,copy)NSString *iFirstpic;
@property (nonatomic,copy)NSString *iFirstpicdesc;
@property (nonatomic,retain)NSArray *iRestpiclist;

@end
