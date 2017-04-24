/*!
 	@header	正文界面VO
 	@abstract
 	@discussion	
 	@author	huych
 	@copyright	ufida
 	@version	1.0 2013-05-11 14:35:42 Creation
 */
#import "WABaseVO.h"
@interface CWAMainBodyViewVO : CWABaseVO
{
  NSString *iMainbodyid;
  NSString *iContenttype;
  NSString *iFilesize;
  NSString *iFillename;
  NSString *iDownflag;
}

@property (nonatomic,copy) NSString *iMainbodyid;
@property (nonatomic,copy) NSString *iContenttype;
@property (nonatomic,copy) NSString *iFilesize;
@property (nonatomic,copy) NSString *iFillename;
@property (nonatomic,copy) NSString *iDownflag;



@end
