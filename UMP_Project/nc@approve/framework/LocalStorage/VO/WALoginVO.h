/*!
 @header CWALoginVO.h
 @abstract 登录界面参数VO
 @author huych 
 @copyright ufida
 @version 1.00 2012/04/18 Creation 
 */

#import <Foundation/Foundation.h>
#import "WABaseVO.h"
#import "WALoginAccountVO.h"
@interface CWALoginVO : CWABaseVO
{
  @private
  NSString *iUserName;
  NSString *iPassword;
  BOOL isAutoLogin;
  BOOL isForceLogin;
  NSArray *iAccountVOs;
  CWALoginAccountVO *iLoginAccountVO;
}

/*!
 @property
 @abstract 用户名
 */
@property(nonatomic,copy)NSString *iUserName;

/*!
 @property
 @abstract 密码
 */
@property(nonatomic,copy)NSString *iPassword;

/*!
 @property
 @abstract 是否自动登录
 */
@property(nonatomic,assign)BOOL isAutoLogin;

/*!
 	@property
 	@abstract	isForceLogin	是否强制登陆
 */
@property(nonatomic,assign)BOOL isForceLogin;


/*!
 @property
 @abstract 登陆时所使用的帐套vo（选中的帐套）
 */
@property(retain,nonatomic) CWALoginAccountVO *iLoginAccountVO;

/*!
 @property
 @abstract 当前用户的全部帐套
 */
@property(nonatomic,copy)NSArray* iAccountVOs;

@end
