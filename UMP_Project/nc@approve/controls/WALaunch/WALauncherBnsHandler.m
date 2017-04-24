
#import "WALauncherBnsHandler.h"
#import "WALocalStorageHandler.h"
#import "WAOrgInfo.h"

@implementation CWALauncherBnsHandler

static NSString *WA_LAUNCHER_CACHE = @"lauch_cache";

+ (void)saveToUserDefaults:(id)object
                       key:(NSString *)key;
{
  NSString *path = [CWALauncherBnsHandler getCachePath];
  NSMutableDictionary *dic =  [NSKeyedUnarchiver unarchiveObjectWithFile:path];
  if(!dic)
  {
    dic = [NSMutableDictionary dictionaryWithCapacity:1];
  }
  [dic setValue:object forKey:key];

  
  BOOL sueccess = [NSKeyedArchiver archiveRootObject:dic toFile:path];
	if(!sueccess)
	{
		//WALog(@"保存失败");
	}
  else
  {
		//WALog(@"保存成功");
  }
}


+ (id)retrieveFromUserDefaults:(NSString *)key
{
  NSString *path = [CWALauncherBnsHandler getCachePath];
  //WALog(@"桌面保存路径：%@",path);
	NSObject *result = nil;
  NSMutableDictionary *dic = nil;
  @try
  {
    dic =  [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    if(dic)
    {
      result = [dic objectForKey:key];
    }
  }
  @catch (NSException *exception)
  {
    
  }
  @finally
  {
    
  }
 	return result;
}

#pragma mark 缓存文件路径选择
+ (NSString *)getCachePath
{
  NSString *path = [CWALocalStorageHandler
                    createDirOfLastLoginUserWithBtarget:WA_LAUNCHER_CACHE];
  
  CWAOrgInfoVO *orgInjfoVO = [[CWAOrgInfo shareInstance] getOrgInfo];
  
  NSString *iID = orgInjfoVO.iID;
  
  NSString *fileName = [CWAFileUtil addSubPath:iID toPath:path];
  return fileName;
}

@end
