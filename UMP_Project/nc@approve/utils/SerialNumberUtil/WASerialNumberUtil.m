#import "WASerialNumberUtil.h"
#import "WADeviceInfoUtil.h"
#import "WATimeUtil.h"
#import "WAKeyChainStore.h"
#import "WACommonInfoVO.h"

@implementation  CWASerialNumberUtil

+ (NSString *)getSerialNumberWithAppID:(NSString *)aAppID
{
  NSString *serialNumber = nil;
  NSString *macAddress = [[CWADeviceInfoUtil getDeviceInfo].iMacAddress stringByReplacingOccurrencesOfString:@":" withString:@""];
  NSString *strCurrentDate = [CWATimeUtil getTodayDateStringNoline];
  NSString *serialnumber = [CWAKeyChainStore stringForKey:@"serialnumber"];
  NSString *strDate = [CWAKeyChainStore stringForKey:@"date"];
  
  //流水号以及日期都为空，从零开始赋值
  if(!serialnumber && !strDate)
  {
    BOOL resultSerialnumber = [CWAKeyChainStore setString:@"0" forKey:@"serialnumber"];
    BOOL resultDate = [CWAKeyChainStore setString:strCurrentDate forKey:@"date"];
    if (resultSerialnumber && resultDate)
    {
      serialNumber = [NSString stringWithFormat:@"%@%@%@%@",aAppID,macAddress,strCurrentDate,@"0"];
    }
    
  }
  else
  {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init] ;
    [formatter setDateFormat:@"yyyyMMdd"];
    NSDate *date = [formatter dateFromString:strDate];
    NSDate *currentdate =[formatter dateFromString:strCurrentDate];
    if([date compare:currentdate] == NSOrderedDescending || [date compare:currentdate] == NSOrderedSame)
    {
      int iserialnumber = [serialnumber intValue] + 1;
      NSString *sSerialnumber = [NSString stringWithFormat:@"%d",iserialnumber];
      BOOL resultSerialnumber = [CWAKeyChainStore setString:sSerialnumber forKey:@"serialnumber"];
      if (resultSerialnumber)
      {
        serialNumber = [NSString stringWithFormat:@"%@%@%@%@",aAppID,macAddress,strDate,sSerialnumber];
      }
    }
    else
    {
      BOOL resultSerialnumber = [CWAKeyChainStore setString:@"0" forKey:@"serialnumber"];
      BOOL resultDate = [CWAKeyChainStore setString:strCurrentDate forKey:@"date"];
      if (resultSerialnumber && resultDate)
      {
        serialNumber = [NSString stringWithFormat:@"%@%@%@%@",aAppID,macAddress,strCurrentDate,@"0"];
      }
    }
  }
  return serialNumber;
}

+ (BOOL)removeData
{
  return [CWAKeyChainStore removeAllItems];
}

+ (NSString *)getSerialNumber
{
  NSString *userid = ((CWACommonInfoVO *)[CWACommonInfoVO sharedManager]).iUserID;
  NSDateFormatter *formatter = [[NSDateFormatter alloc] init] ;
  [formatter setDateFormat:@"yyyyMMddHHmmssSSS"];
  NSString* strData = [formatter stringFromDate:[NSDate date]];
  return [NSString stringWithFormat:@"%@%@",userid,strData];
}

@end
