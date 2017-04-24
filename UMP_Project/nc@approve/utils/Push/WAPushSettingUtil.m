/*!
 @class
 @abstract push设置信息VO操作类
 */

#import "WAPushSettingUtil.h"
#import "WAJSONParserUtils.h"
#import "WAFileUtil.h"

@implementation CWAPushSettingUtil

#pragma mark 读取
+ (CWAPushSettingVO *)getPushSettingVOFromFile
{
  
  CWAPushSettingVO *pushSettingVO = nil;
  NSString * fileName = [[CWAPushSettingVO class] description];
  NSData *data = [CWAFileUtil readFileAtDocumentsWithFileName:fileName];
  
  if (data)
  {
 
    NSDictionary *dic = [CWAJSONParserUtils parseWithData:data];

    pushSettingVO = [[CWAPushSettingVO alloc] init];
    pushSettingVO.iIsAlert = [dic objectForKey:@"iIsAlert"];
    pushSettingVO.iIsBadge = [dic objectForKey:@"iIsBadge"];
    pushSettingVO.iIsSound = [dic objectForKey:@"iIsSound"];
  }
  
  return pushSettingVO;

}

#pragma mark 写
+ (void)savePushSettingVOToFile:(CWAPushSettingVO *)aPushSettingVO
{
  
  [aPushSettingVO loadDictionaryByPlistName:@"PushSettingVO"];
  
  NSData *data = [aPushSettingVO parseVOToJSONData];
  NSString * fileName = [[CWAPushSettingVO class] description];
  BOOL createFileResult = [CWAFileUtil createFileAtDocumentsWithName:fileName content:data];
  
  //创建文件没有成功，打日志
  if (!createFileResult)
  {
  }
  
}
@end
