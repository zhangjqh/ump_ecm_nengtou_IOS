

#import "WALinkManVO.h"

@interface CWALinkManNC63VO : CWALinkManVO
{
	NSString *iRemark;
	NSString *iIsradio;
	NSMutableArray *iLinkMans;
}

@property (nonatomic,copy)NSString *iRemark;
@property (nonatomic,copy)NSString *iIsradio;
@property (nonatomic,retain)NSMutableArray *iLinkMans;
@end
