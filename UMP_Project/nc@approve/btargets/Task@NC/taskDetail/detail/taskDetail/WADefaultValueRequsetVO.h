
/*!

 	@header	动作默认值请求VO

 	@abstract

 	@discussion

 	@author	huych

 	@copyright	ufida

 	@version	1.0 2013-05-15 14:48:48 Creation

 */

#import "WABaseVO.h"
@interface CWADefaultValueRequsetVO : CWABaseVO
{
  NSString *iTaskid;
  NSString *iStatuskey;
  NSString *iStatuscode;
  NSString *iActioncode;
  NSString *iServiceCode;
}
@property (nonatomic,copy) NSString *iServiceCode;
@property (nonatomic,copy) NSString *iTaskid;
@property (nonatomic,copy) NSString *iStatuskey;
@property (nonatomic,copy) NSString *iStatuscode;
@property (nonatomic,copy) NSString *iActioncode;

@end
