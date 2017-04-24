#import <Foundation/Foundation.h>
#import "WABaseVO.h"
/*!

 *	@header	WAButtonVO.h

 *	@abstract	按钮VO

 *	@discussion	

 *	@author	huych

 *	@copyright	ufida

 *	@version	1.0 2012-07-26 09:05:13 Creation

 */

@interface CWAButtonVO :CWABaseVO
{
  NSString *iCode;
  NSString *iName;
  NSString *iServiceCode;
}

/*!
 *	@property
 *	@abstract	iCode	编码
 */
@property (nonatomic,copy) NSString *iCode;

/*!
 *	@property
 *	@abstract	iName	名称
 */
@property (nonatomic,copy) NSString *iName;

/*!
 *	@property
 *	@abstract	iServiceCode	服务编码
 */
@property (nonatomic,copy) NSString *iServiceCode;


@end
