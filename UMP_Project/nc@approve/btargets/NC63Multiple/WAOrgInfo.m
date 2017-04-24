
#import "WAOrgInfo.h"

@implementation CWAOrgInfo


static CWAOrgInfo *iShareOrgInfo;

+ (id)shareInstance
{
  @synchronized(self)
  {
    if(iShareOrgInfo == nil)
    {
      iShareOrgInfo = [[self alloc] init];
    }
  }
  return iShareOrgInfo;
}

- (void)setOrgInfoVO:(CWAOrgInfoVO *)aOrgInfoVO withServiceCode:(NSString *)aServiceCode
{
  if(!iOrgListDic)
  {
    iOrgListDic = [[NSMutableDictionary alloc] initWithCapacity:1];
  }
  [iOrgListDic removeAllObjects];
  [iOrgListDic setObject:aOrgInfoVO forKey:aServiceCode];
}

- (CWAOrgInfoVO *)getOrgInfoWithServiceCode:(NSString *)aServiceCode
{
  return [iOrgListDic objectForKey:aServiceCode];
}

- (CWAOrgInfoVO *)getOrgInfo
{
  NSEnumerator *keys = [iOrgListDic keyEnumerator];
  NSString *aKey = [keys nextObject];
  return [iOrgListDic objectForKey:aKey];
}

- (void)clearAllDate
{
  [iOrgListDic removeAllObjects];
}
@end
