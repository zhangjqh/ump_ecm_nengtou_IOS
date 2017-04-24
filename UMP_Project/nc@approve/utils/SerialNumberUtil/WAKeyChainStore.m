#import "WAKeyChainStore.h"

static NSString *defaultService;

@interface CWAKeyChainStore ()
{
  NSMutableDictionary *itemsToUpdate;
}

@end

@implementation CWAKeyChainStore

#pragma mark -

+ (void)initialize
{
  defaultService = [[NSBundle mainBundle] bundleIdentifier];
}

#pragma mark -

+ (CWAKeyChainStore *)keyChainStore
{
  return [[[self alloc] initWithService:defaultService] autorelease];
}

+ (CWAKeyChainStore *)keyChainStoreWithService:(NSString *)service
{
  return [[[self alloc] initWithService:service] autorelease];
}

+ (CWAKeyChainStore *)keyChainStoreWithService:(NSString *)service
                                   accessGroup:(NSString *)accessGroup
{
  return [[[self alloc] initWithService:service accessGroup:accessGroup] autorelease];
}

- (instancetype)init
{
  return [self initWithService:defaultService accessGroup:nil];
}

- (instancetype)initWithService:(NSString *)service
{
  return [self initWithService:service accessGroup:nil];
}

- (instancetype)initWithService:(NSString *)service
                    accessGroup:(NSString *)accessGroup
{
  self = [super init];
  if (self)
  {
    if (!service)
    {
      service = defaultService;
    }
    _service = [service copy];
    _accessGroup = [accessGroup copy];
        
    itemsToUpdate = [[NSMutableDictionary alloc] init];
  }
  return self;
}

#pragma mark -

+ (NSString *)stringForKey:(NSString *)key
{
  return [self stringForKey:key service:defaultService accessGroup:nil];
}

+ (NSString *)stringForKey:(NSString *)key
                   service:(NSString *)service
{
  return [self stringForKey:key service:service accessGroup:nil];
}

+ (NSString *)stringForKey:(NSString *)key
                   service:(NSString *)service
               accessGroup:(NSString *)accessGroup
{
  NSData *data = [self dataForKey:key service:service accessGroup:accessGroup];
  if (data)
  {
    return [[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding] autorelease];
  }
  return nil;
}

+ (BOOL)setString:(NSString *)value
           forKey:(NSString *)key
{
  return [self setString:value forKey:key service:defaultService accessGroup:nil];
}

+ (BOOL)setString:(NSString *)value
           forKey:(NSString *)key
          service:(NSString *)service
{
  return [self setString:value forKey:key service:service accessGroup:nil];
}

+ (BOOL)setString:(NSString *)value
           forKey:(NSString *)key
          service:(NSString *)service
      accessGroup:(NSString *)accessGroup
{
  NSData *data = [value dataUsingEncoding:NSUTF8StringEncoding];
  return [self setData:data forKey:key service:service accessGroup:accessGroup];
}

#pragma mark -

+ (NSData *)dataForKey:(NSString *)key
{
  return [self dataForKey:key service:defaultService accessGroup:nil];
}

+ (NSData *)dataForKey:(NSString *)key service:(NSString *)service
{
  return [self dataForKey:key service:service accessGroup:nil];
}

+ (NSData *)dataForKey:(NSString *)key
               service:(NSString *)service
           accessGroup:(NSString *)accessGroup
{
	if (!key)
  {
		return nil;
	}
	if (!service)
  {
    service = defaultService;
	}
    
	NSMutableDictionary *query = [[[NSMutableDictionary alloc] init] autorelease];
	[query setObject:(id)kSecClassGenericPassword forKey:(id)kSecClass];
	[query setObject:(id)kCFBooleanTrue forKey:(id)kSecReturnData];
	[query setObject:(id)kSecMatchLimitOne forKey:(id)kSecMatchLimit];
	[query setObject:service forKey:(id)kSecAttrService];
  [query setObject:key forKey:(id)kSecAttrGeneric];
  [query setObject:key forKey:(id)kSecAttrAccount];
#if !TARGET_IPHONE_SIMULATOR && defined(__IPHONE_OS_VERSION_MIN_REQUIRED)
  if (accessGroup)
  {
    [query setObject:accessGroup forKey:(id)kSecAttrAccessGroup];
  }
#endif
    
	CFTypeRef data = nil;
	OSStatus status = SecItemCopyMatching((CFDictionaryRef)query, &data);
	if (status != errSecSuccess)
  {
    return nil;
	}
    
  NSData *ret = [NSData dataWithData:(NSData *)data];
  if (data)
  {
    CFRelease(data);
  }
    
  return ret;
}

+ (BOOL)setData:(NSData *)data
         forKey:(NSString *)key
{
  return [self setData:data forKey:key service:defaultService accessGroup:nil];
}

+ (BOOL)setData:(NSData *)data
         forKey:(NSString *)key
        service:(NSString *)service
{
  return [self setData:data forKey:key service:service accessGroup:nil];
}

+ (BOOL)setData:(NSData *)data
         forKey:(NSString *)key
        service:(NSString *)service
    accessGroup:(NSString *)accessGroup
{
  BOOL result = NO;
	if (!key)
  {
		return NO;
	}
	if (!service)
  {
    service = defaultService;
	}
	
	NSMutableDictionary *query = [[NSMutableDictionary alloc] init];
	[query setObject:(id)kSecClassGenericPassword forKey:(id)kSecClass];
	[query setObject:service forKey:(id)kSecAttrService];
  [query setObject:key forKey:(id)kSecAttrGeneric];
  [query setObject:key forKey:(id)kSecAttrAccount];
#if !TARGET_IPHONE_SIMULATOR && defined(__IPHONE_OS_VERSION_MIN_REQUIRED)
  if (accessGroup)
  {
    [query setObject:accessGroup forKey:(id)kSecAttrAccessGroup];
  }
#endif
    
	OSStatus status = SecItemCopyMatching((CFDictionaryRef)query, NULL);
	if (status == errSecSuccess)
  {
    if (data)
    {
      NSMutableDictionary *attributesToUpdate = [[NSMutableDictionary alloc] init];
      [attributesToUpdate setObject:data forKey:(id)kSecValueData];
      status = SecItemUpdate((CFDictionaryRef)query, (CFDictionaryRef)attributesToUpdate);
      [attributesToUpdate release];
      if (status != errSecSuccess)
      {
        result =  NO;
      }
      else
      {
        result =  YES;
      }
    }
    else
    {
      [self removeItemForKey:key service:service accessGroup:accessGroup];
    }
	}
  else if (status == errSecItemNotFound)
  {
		NSMutableDictionary *attributes = [[NSMutableDictionary alloc] init];
		[attributes setObject:(id)kSecClassGenericPassword forKey:(id)kSecClass];
    [attributes setObject:service forKey:(id)kSecAttrService];
    [attributes setObject:key forKey:(id)kSecAttrGeneric];
    [attributes setObject:key forKey:(id)kSecAttrAccount];
		[attributes setObject:data forKey:(id)kSecValueData];
#if !TARGET_IPHONE_SIMULATOR && defined(__IPHONE_OS_VERSION_MIN_REQUIRED)
    if (accessGroup)
    {
      [attributes setObject:accessGroup forKey:(id)kSecAttrAccessGroup];
    }
#endif
		
		status = SecItemAdd((CFDictionaryRef)attributes, NULL);
    [attributes release];
		if (status != errSecSuccess)
    {
			result =  NO;
		}
    else
    {
      result =  YES;
    }
	}
  else
  {
    result =  NO;
	}
  [query release];
  return result;
}

#pragma mark -

- (void)setString:(NSString *)string forKey:(NSString *)key
{
  [self setData:[string dataUsingEncoding:NSUTF8StringEncoding] forKey:key];
}

- (NSString *)stringForKey:(id)key
{
  NSData *data = [self dataForKey:key];
  if (data)
  {
    return [[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding] autorelease];
  }
    
  return nil;
}

#pragma mark -

- (void)setData:(NSData *)data forKey:(NSString *)key
{
  if (!key)
  {
    return;
  }
  if (!data)
  {
    [self removeItemForKey:key];
  }
  else
  {
    [itemsToUpdate setObject:data forKey:key];
  }
}

- (NSData *)dataForKey:(NSString *)key
{
  NSData *data = [itemsToUpdate objectForKey:key];
  if (!data)
  {
    data = [[self class] dataForKey:key service:self.service accessGroup:self.accessGroup];
  }
  return data;
}

#pragma mark -

+ (BOOL)removeItemForKey:(NSString *)key
{
  return [CWAKeyChainStore removeItemForKey:key service:defaultService accessGroup:nil];
}

+ (BOOL)removeItemForKey:(NSString *)key service:(NSString *)service
{
  return [CWAKeyChainStore removeItemForKey:key service:service accessGroup:nil];
}

+ (BOOL)removeItemForKey:(NSString *)key
                 service:(NSString *)service
             accessGroup:(NSString *)accessGroup
{
	if (!key)
  {
		return NO;
	}
	if (!service)
  {
    service = defaultService;
	}
	
	NSMutableDictionary *itemToDelete = [[NSMutableDictionary alloc] init];
	[itemToDelete setObject:(id)kSecClassGenericPassword forKey:(id)kSecClass];
  if(service)
  {
    [itemToDelete setObject:service forKey:(id)kSecAttrService];
  }
  [itemToDelete setObject:key forKey:(id)kSecAttrGeneric];
  [itemToDelete setObject:key forKey:(id)kSecAttrAccount];
#if !TARGET_IPHONE_SIMULATOR && defined(__IPHONE_OS_VERSION_MIN_REQUIRED)
  if (accessGroup)
  {
    [itemToDelete setObject:accessGroup forKey:(id)kSecAttrAccessGroup];
  }
#endif
	
	OSStatus status = SecItemDelete((CFDictionaryRef)itemToDelete);
  [itemToDelete release];
	if (status != errSecSuccess && status != errSecItemNotFound)
  {
    return NO;
	}
  return YES;
}

+ (NSArray *)itemsForService:(NSString *)service
                 accessGroup:(NSString *)accessGroup
{
	if (!service)
  {
    service = defaultService;
	}
	NSMutableDictionary *query = [[NSMutableDictionary alloc] init];
	[query setObject:(id)kSecClassGenericPassword forKey:(id)kSecClass];
	[query setObject:(id)kCFBooleanTrue forKey:(id)kSecReturnAttributes];
	[query setObject:(id)kCFBooleanTrue forKey:(id)kSecReturnData];
	[query setObject:(id)kSecMatchLimitAll forKey:(id)kSecMatchLimit];
	[query setObject:service forKey:(id)kSecAttrService];
#if !TARGET_IPHONE_SIMULATOR && defined(__IPHONE_OS_VERSION_MIN_REQUIRED)
  if (accessGroup)
  {
    [query setObject:accessGroup forKey:(id)kSecAttrAccessGroup];
  }
#endif
	
	CFArrayRef result = nil;
	OSStatus status = SecItemCopyMatching((CFDictionaryRef)query, (CFTypeRef *)&result);
  [query release];
	if (status == errSecSuccess || status == errSecItemNotFound)
  {
		return CFBridgingRelease(result);
	}
  else
  {
		return nil;
	}
}

+ (BOOL)removeAllItems
{
  return [self removeAllItemsForService:defaultService accessGroup:nil];
}

+ (BOOL)removeAllItemsForService:(NSString *)service
{
  return [self removeAllItemsForService:service accessGroup:nil];
}

+ (BOOL)removeAllItemsForService:(NSString *)service
                     accessGroup:(NSString *)accessGroup
{
  NSArray *items = [CWAKeyChainStore itemsForService:service accessGroup:accessGroup];
  for (NSDictionary *item in items)
  {
    NSMutableDictionary *itemToDelete = [[NSMutableDictionary alloc] initWithDictionary:item];
    [itemToDelete setObject:(id)kSecClassGenericPassword forKey:(id)kSecClass];
        
    OSStatus status = SecItemDelete((CFDictionaryRef)itemToDelete);
    [itemToDelete release];
    if (status != errSecSuccess)
    {
      return NO;
    }
  }
  return YES;
}

#pragma mark -

- (void)removeItemForKey:(NSString *)key
{
  if ([itemsToUpdate objectForKey:key])
  {
    [itemsToUpdate removeObjectForKey:key];
  }
  else
  {
    [[self class] removeItemForKey:key service:self.service accessGroup:self.accessGroup];
  }
}

- (void)removeAllItems
{
  [itemsToUpdate removeAllObjects];
  [[self class] removeAllItemsForService:self.service accessGroup:self.accessGroup];
}

#pragma mark -

- (void)synchronize
{
  for (NSString *key in itemsToUpdate)
  {
    [[self class] setData:[itemsToUpdate objectForKey:key] forKey:key service:self.service accessGroup:self.accessGroup];
  }
}

#pragma mark -

- (NSString *)description
{
  NSArray *items = [CWAKeyChainStore itemsForService:self.service accessGroup:self.accessGroup];
  NSMutableArray *list = [[NSMutableArray alloc] initWithCapacity:items.count];
  for (NSDictionary *attributes in items)
  {
    NSMutableDictionary *attrs = [[NSMutableDictionary alloc] init];
    [attrs setObject:[attributes objectForKey:(id)kSecAttrService] forKey:@"Service"];
    [attrs setObject:[attributes objectForKey:(id)kSecAttrAccount] forKey:@"Account"];
#if defined(__IPHONE_OS_VERSION_MIN_REQUIRED)
    [attrs setObject:[attributes objectForKey:(id)kSecAttrAccessGroup] forKey:@"AccessGroup"];
#endif
    NSData *data = [attributes objectForKey:(id)kSecValueData];
    NSString *string = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    if (string)
    {
      [attrs setObject:string forKey:@"Value"];
    }
    else
    {
      [attrs setObject:data forKey:@"Value"];
    }
    [string release];
    [list addObject:attrs];
    [attrs release];
  }
  NSString *result = [list description];
  [list release];
  return result;
}

@end
