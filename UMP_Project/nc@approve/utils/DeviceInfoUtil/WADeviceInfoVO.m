/*!
 @class
 @abstract 设备信息类
 */

#import "WADeviceInfoVO.h"
#import "WADeviceDef.h"
@implementation CWADeviceInfoVO
@synthesize iPlatform;
@synthesize iOSversion;
@synthesize iImsi;
@synthesize iImei;
@synthesize iLanage;
@synthesize iOperator;
@synthesize iIp;
@synthesize iAppVersion;
@synthesize iMacAddress;
@synthesize isWifi;
@synthesize iScreensi;
@synthesize iDevicetype;
@synthesize iResolution;

#pragma mark 利用字典初始化
-(id)initWithDictionary:(NSDictionary *)aDic
{
  self = [super initWithDictionary:aDic];
  if (self)
  {
    self.fileName = [NSString stringWithFormat:@"%@.plist",WA_DEVICE_INFO_VO];
  }
  return self;
}
@end
