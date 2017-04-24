//
//  Created by 宋永强 on 12-2-23.
//
//


#import <Foundation/Foundation.h>

@protocol UMPISession;
@class UMPDatabaseInfo;

@interface UMPSessionManager : NSObject

+ (id<UMPISession>)getSession:(NSString *)key;

+ (void)removeSession:(id<UMPISession>) session;

+ (void)addSession:(id<UMPISession>) session;

@end