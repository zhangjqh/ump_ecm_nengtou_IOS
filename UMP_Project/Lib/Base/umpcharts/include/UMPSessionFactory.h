//
//  Created by 宋永强 on 12-2-23.
//
//


#import <Foundation/Foundation.h>

@protocol UMPISession;
@class UMPDatabaseInfo;

#define SQLITE_HAS_CODEC YES

@interface UMPSessionFactory : NSObject

+ (void)setDatabaseInfo:(UMPDatabaseInfo *)dbInfo;

+ (UMPDatabaseInfo *)databaseInfo;

+ (id<UMPISession>)openSession;

+ (id<UMPISession>)currentSession;

@end