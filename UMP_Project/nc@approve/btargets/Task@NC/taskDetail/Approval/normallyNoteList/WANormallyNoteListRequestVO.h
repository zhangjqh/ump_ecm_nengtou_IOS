
/*!
 	@header	获取界面数据请求VO
 	@abstract	
 	@discussion
 	@author	huych
 	@copyright	ufida
 	@version	1.0 2013-05-23 16:30:37 Creation
 */
#import "WABaseVO.h"
@interface CWANormallyNoteListRequestVO : CWABaseVO
{
  NSString *iTaskid;
  NSString *iStatuskey;
  NSString *iStatuscode;
  NSString *iActioncode;
}

@property (nonatomic,copy) NSString *iTaskid;
@property (nonatomic,copy) NSString *iStatuskey;
@property (nonatomic,copy) NSString *iStatuscode;
@property (nonatomic,copy) NSString *iActioncode;


@end
