
/*!
 	@header	附件上传请求VO
 	@abstract
 	@discussion
 	@author	huych
 	@copyright	ufida
 	@version	1.0 2013-05-30 16:00:45 Creation
 */
#import "WABaseVO.h"
@interface CWAAttachMentsUpRequestsVO : CWABaseVO
{
  NSString *iActioncode;
  NSString *iTaskID;
  NSMutableArray *iAttachList;
}

@property (nonatomic,copy) NSString *iActioncode;
@property (nonatomic,copy) NSString *iTaskID;
@property (nonatomic,retain) NSMutableArray *iAttachList;


@end
