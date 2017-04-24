//
//  Created by 宋永强 on 12-2-24.
//
//


#import <Foundation/Foundation.h>

@interface UMPPersistenceException : NSObject

+ (NSException *)transacionExceptionWithName:(NSString *)reason;

+ (NSException *)entityTypeNotExistsException:(NSString *)entityName;

+ (NSException *)persistenceObjectNotFoundException:(Class)class :(long)pk;

@end