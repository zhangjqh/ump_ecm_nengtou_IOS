/*!
 @header DevInfoModel.h
 @abstract 设备信息类
 @discussion 
 @author huych
 @copyright UFIDA
 @version 
 */

#import <Foundation/Foundation.h>
#import "WABaseVO.h"

@interface CWADeviceInfoVO : CWABaseVO
{
  NSString *iPlatform;
  NSString *iOSversion;
  NSString *iImsi;
  NSString *iImei;
  NSString *iLanage;
  NSString *iOperator;
  NSString *iAppVersion;
  NSString *iMacAddress;
  NSString *isWifi;
  NSString *iDevicetype;
  NSString *iScreensi;
  NSString *iResolution;
}

/*!
 @property
 @abstract 设备类型
 */
@property(nonatomic,retain)NSString *iDevicetype;

/*!
 @property
 @abstract 屏幕尺寸
 */
@property(nonatomic,retain)NSString *iScreensi;

/*!
 @property
 @abstract 屏幕分辨率
 */
@property(nonatomic,retain)NSString *iResolution;
/*!
 @property
 @abstract 客户端平台
 */
@property(nonatomic,retain)NSString *iPlatform;

/*!
 @property
 @abstract 手机型号
 */
@property(nonatomic,retain)NSString *iOSversion;

/*!
 @property
 @abstract sim卡标识
 */
@property(nonatomic,retain)NSString *iImsi;

/*!
 @property
 @abstract 手机硬件识别号
 */
@property(nonatomic,retain)NSString *iImei;

/*!
 @property
 @abstract 语言
 */
@property(nonatomic,retain)NSString *iLanage;

/*!
 @property
 @abstract 运营商信息
 */
@property(nonatomic,retain)NSString *iOperator;

/*!
 @property
 @abstract ip
 */
@property(nonatomic,retain)NSString *iIp;

/*!
 @property
 @abstract 软件版本号
 */
@property(nonatomic,retain)NSString *iAppVersion;

/*!
 @property
 @abstract 设备的mac地址
 */
@property(nonatomic,retain)NSString *iMacAddress;

/*!
 @property
 @abstract 设备的mac地址
 */
@property(nonatomic,retain) NSString *isWifi;

@end
