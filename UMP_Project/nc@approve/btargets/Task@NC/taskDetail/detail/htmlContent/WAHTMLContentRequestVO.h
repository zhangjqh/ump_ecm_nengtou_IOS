/*!
 	@header	html正文请求VO
 	@abstract
 	@discussion
 	@author	huych
 	@copyright	ufida
 	@version	1.0 2013-05-13 16:04:25 Creation
 */
#import "WABaseVO.h"
@interface CWAHTMLContentRequestVO : CWABaseVO
{
  NSString *iTaskid;
  NSString *iStatuskey;
  NSString *iStatuscode;
  NSString *iID;
  NSString *iDownflag;
}

@property (nonatomic,copy)NSString *iTaskid;
@property (nonatomic,copy)NSString *iStatuskey;
@property (nonatomic,copy)NSString *iStatuscode;
@property (nonatomic,copy)NSString *iID;
@property (nonatomic,copy)NSString *iDownflag;


@end
