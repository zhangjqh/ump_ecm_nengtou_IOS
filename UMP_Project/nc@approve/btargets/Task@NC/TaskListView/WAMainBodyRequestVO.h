/*!
 	@header	正文内容请求VO
 	@abstract
 	@discussion
 	@author	huych
 	@copyright	ufida
 	@version	1.0 2013-05-11 14:22:42 Creation
 */
#import "WABaseVO.h"
@interface CWAMainBodyRequestVO : CWABaseVO
{
  NSString *iTaskid;
  NSString *iStatuskey;
  NSString *iStatuscode;
}

@property (nonatomic,copy)NSString *iTaskid;
@property (nonatomic,copy)NSString *iStatuskey;
@property (nonatomic,copy)NSString *iStatuscode;

@end
