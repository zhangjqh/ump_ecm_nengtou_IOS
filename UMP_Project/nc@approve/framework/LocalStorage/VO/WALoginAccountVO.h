/*!
 @header CWALoginAccountVO 登陆帐套vo 
 @abstract 
 @author Created by sunset 
 @version Copyright (c) 2012 __wa__. All rights reserved.1.00 12-8-17 Creation 
 */

#import "WABaseVO.h"
  //帐套vo key iGroupid
static NSString* const LOGIN_ACCOUNTS_GROUPID =@"iGroupid";
  //帐套vo key iGroupCode
static NSString* const LOGIN_ACCOUNTS_GROUPCODE =@"iGroupCode";
  //帐套vo key iGroupName
static NSString* const LOGIN_ACCOUNTS_GROUPNAME =@"iGroupName";

@interface CWALoginAccountVO : CWABaseVO
{
@private
  NSString *iGroupCode;
  NSString *iGroupName;
  NSString *iGroupid;
  NSString *iServiceCode;
}

/*!
 @property
 @abstract iGroupCode
 */
@property (copy,nonatomic) NSString *iGroupCode;
/*!
 @property
 @abstract iGroupCode
 */
@property (copy,nonatomic) NSString *iGroupName;
/*!
 @property
 @abstract iGroupid
 */
@property (copy,nonatomic) NSString *iGroupid;
/*!
 @property
 @abstract iServiceCode
 */
@property (copy,nonatomic) NSString *iServiceCode;
@end
