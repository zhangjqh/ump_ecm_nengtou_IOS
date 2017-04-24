/*!
 	@header	获取催办内容请求VO
 	@abstract
 	@discussion
 	@author	huych
 	@copyright	ufida
 	@version	1.0 2013-05-10 10:25:05 Creation
 */
#import "WABaseVO.h"
@interface CWAReminderContentRequestVO : CWABaseVO
{
  NSString *iTaskid;
  NSString *iStatuskey;
  NSString *iStatuscode;
}

@property (nonatomic,copy) NSString *iTaskid;
@property (nonatomic,copy) NSString *iStatuskey;
@property (nonatomic,copy) NSString *iStatuscode;

@end
