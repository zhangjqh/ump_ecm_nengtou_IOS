
/*!
 	@header	WAOrgInfo.h
 	@abstract 组织信息管理类
 	@discussion
 	@author	huych
 	@copyright	ufida
 	@version	1.0 2014-05-29 10:07:26 Creation
 */
#import <Foundation/Foundation.h>
#import "WAOrgInfoVO.h"
@interface CWAOrgInfo : NSObject

{
  NSMutableDictionary *iOrgListDic;
}

/*!
 	@method
 	@abstract	单例模式
 	@discussion
 	@result
 */
+ (id)shareInstance;



/*!
 	@method
 	@abstract	设置组织信息
 	@discussion	一次只能设置一个组织信息，设置完以后，会先移除上一次设置的
 	@param 	aOrgInfoVO 	组织信息
 	@param 	aServiceCode 	服务器编码
 	@result
 */
- (void)setOrgInfoVO:(CWAOrgInfoVO *)aOrgInfoVO withServiceCode:(NSString *)aServiceCode;


/*!
 	@method
 	@abstract	通过服务器编码获取组织信息
 	@discussion
 	@param 	aServiceCode 	服务器编码
 	@result	组织信息
 */
- (CWAOrgInfoVO *)getOrgInfoWithServiceCode:(NSString *)aServiceCode;


/*!
 	@method
 	@abstract	清除内存中的所有数据
 	@discussion
 	@result
 */
- (void)clearAllDate;


/*!
 	@method
 	@abstract	获取组织信息,忽略servicecode
 	@discussion
 	@result
 */
- (CWAOrgInfoVO *)getOrgInfo;

@end
