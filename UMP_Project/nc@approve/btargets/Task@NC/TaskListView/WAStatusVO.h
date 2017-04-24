
/*!

 	@header	任务状态VO

 	@abstract	

 	@discussion

 	@author	huych

 	@copyright	ufida

 	@version	1.0 2013-05-08 11:18:10 Creation

 */

#import "WABaseVO.h"
@interface CWAStatusVO : CWABaseVO
{
  NSString *iID;
  NSString *iName;
}

@property (nonatomic,copy)NSString *iID;
@property (nonatomic,copy)NSString *iName;


@end
