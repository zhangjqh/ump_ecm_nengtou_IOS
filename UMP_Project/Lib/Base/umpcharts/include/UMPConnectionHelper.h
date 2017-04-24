//
//  Created by 宋永强 on 12-2-10.
//
//


#import <Foundation/Foundation.h>

@class UMPDatabaseInfo;
@protocol UMPISession;

@interface UMPConnectionHelper : NSObject {
}

+ (void)clearConnection:(UMPDatabaseInfo *)dbInfo;
+ (void)closeAll:(UMPDatabaseInfo *)dbInfo;
+ (id<UMPISession>)getConnection:(UMPDatabaseInfo *)dbInfo;
+ (void)setConnection:(UMPDatabaseInfo *)dbInfo :(id <UMPISession>)dbConn;
+ (void)releaseToPool:(UMPDatabaseInfo *)dbInfo :(id<UMPISession>)conn;
@end