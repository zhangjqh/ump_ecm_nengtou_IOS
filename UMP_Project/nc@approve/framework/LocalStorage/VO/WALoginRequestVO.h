/*!
 @header CWALoginRequestVO.h
 @abstract 请求数据VO
 @author huych 
 @copyright ufida
 @version 1.00 2012/04/18 Creation 
 */

#import <UIKit/UIKit.h>
#import "WABaseVO.h"
#import "WADeviceInfoVO.h"

@interface CWALoginRequestVO : CWABaseVO
{
  @private
  NSString *iUserName;
  NSString *iPassword;
  CWADeviceInfoVO *iDeviceInfoVO;
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
 @abstract 设备信息
 */
@property(nonatomic,retain)CWADeviceInfoVO *iDeviceInfoVO;;
@end
