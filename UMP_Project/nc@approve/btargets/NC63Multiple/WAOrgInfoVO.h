/*!
 	@header	WAOrgInfoVO.h
 	@abstract 组织信息类
 	@discussion
 	@author	huych
 	@copyright	ufida
 	@version	1.0 2014-05-29 10:14:42 Creation
 */
#import "WABaseVO.h"
@interface CWAOrgInfoVO : CWABaseVO

{
  NSString *iName;
  NSString *iID;
}

/*!
 	@property
 	@abstract	iName	组织名称
 */
@property (nonatomic,copy) NSString *iName;

/*!
 	@property
 	@abstract	iID	组织id
 */
@property (nonatomic,copy) NSString *iID;

@end
