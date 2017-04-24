/*!
 @class
 @abstract 设备操作类
 */


#import "WADeviceInfoUtil.h"
#import "WAUFTool.h"
#import "WAFileUtil.h"
#import "WAJSONParserUtils.h"
#import "WAStringUtil.h"
#import <UMIOSControls/Reachability.h>

@implementation CWADeviceInfoUtil

#pragma mark 从文件获取VO，不存在的话就获取以后再序列化，然后返回
+(CWADeviceInfoVO *)getDeviceInfo
{
  
  NSString *home = [CWAFileUtil getCachesPath];
  
  NSString * fileName = [[CWADeviceInfoVO class] description];
  
  NSString *saveParentPath = [CWAFileUtil addSubPath:@"deviceinfo" toPath:home];
  
//  NSString *savePath = [CWAFileUtil addSubPath:saveParentPath toPath:saveParentPath];
  
  NSString *saveFilePath = [CWAFileUtil addSubPath:fileName toPath:saveParentPath];
  
  CWADeviceInfoVO *deviceInfoVO = [[CWADeviceInfoVO alloc] init];
  
  BOOL fileExists = [CWAFileUtil fileExistsAtPath:saveFilePath];
  
  //文件存在，就从文件读取
  if (fileExists)
  {
    NSData *data = [CWAFileUtil readFileWithPath:saveFilePath];
    NSDictionary *dic = [CWAJSONParserUtils parseWithData:data];
    
    deviceInfoVO.iOSversion = [CWAUFTool getSystemVersion];
    deviceInfoVO.iAppVersion = [dic objectForKey:@"iAppVersion"];
    if (WA_CURENT_OS_V>=7.0)
    {
      deviceInfoVO.iImei = [CWAUFTool advertisingIdentifier];
    }
    else
    {
      deviceInfoVO.iImei = [CWAUFTool getIMEI];
    }

    deviceInfoVO.iImsi = [dic objectForKey:@"iImsi"];
   
    deviceInfoVO.iOperator = [dic objectForKey:@"iOperator"];  
    deviceInfoVO.iMacAddress = [CWAUFTool getMacAddress];  
    deviceInfoVO.iPlatform = [dic objectForKey:@"iPlatform"];

    deviceInfoVO.iScreensi = [dic objectForKey:@"iScreensi"];
    deviceInfoVO.iResolution = [dic objectForKey:@"iResolution"];
    deviceInfoVO.iDevicetype = [dic objectForKey:@"iDevicetype"];
    
     /** 获取ip比较长，先去掉
    deviceInfoVO.iIp =  [CWAUFTool getIpAddress];
    **/
  }
  
  //不存在新建以后，保存
  else
  {
    deviceInfoVO.iOSversion = [CWAUFTool getSystemVersion];
    deviceInfoVO.iAppVersion = @"1.00";
    if (WA_CURENT_OS_V>=7.0)
    {
      deviceInfoVO.iImei = [CWAUFTool advertisingIdentifier];
    }
    else
    {
      deviceInfoVO.iImei = [CWAUFTool getIMEI];
    }
    
    deviceInfoVO.iImsi = [CWAUFTool getIMSI];
 
    deviceInfoVO.iOperator = [CWAUFTool getOperator:deviceInfoVO.iImsi];
    deviceInfoVO.iMacAddress = [CWAUFTool getMacAddress];
    deviceInfoVO.iPlatform = @"ios";
  
    
    /** 获取ip比较长，先去掉
    deviceInfoVO.iIp =  [CWAUFTool getIpAddress];
     **/
    deviceInfoVO.iScreensi = [CWAUFTool getDeviceScreenSize:NO];
    deviceInfoVO.iResolution = [CWAUFTool getDeviceScreenResolution:NO];
    deviceInfoVO.iDevicetype = [CWAUFTool getDeviceName:NO];
    
    [deviceInfoVO loadDictionaryByPlistName:@"DeviceInfoVO"];
  
    NSData *data = [deviceInfoVO parseVOToJSONData];
    
    BOOL createFileResult = [CWAFileUtil createFileWithPath:saveFilePath content:data];
    
    //创建文件没有成功，打日志
    if (!createFileResult)
    {
    }
//    deviceInfoVO.isWifi = [CWAUFTool isWifiAble]?@"YES":@"NO";
    
  }
  deviceInfoVO.iLanage = [CWAUFTool getLanuageState];
  return deviceInfoVO;
}
@end
