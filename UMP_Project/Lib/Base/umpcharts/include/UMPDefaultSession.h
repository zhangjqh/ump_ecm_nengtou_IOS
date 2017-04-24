//
//  Created by 宋永强 on 12-2-10.
//
//


#import <Foundation/Foundation.h>
#import "UMPISession.h"

@class FMDatabase;
@class UMPDatabaseInfo;
@protocol UMPITransaction;
@class UMPPersistenceContext;
@class UMPEntityPersistence;
@class UMPSessionManager;

@interface UMPDefaultSession : NSObject<UMPISession> {
@private
    BOOL _isOpen;
    UMPDatabaseInfo * _dbInfo;
    FMDatabase * _dbConn;
    id<UMPITransaction> _transaction;
    UMPPersistenceContext * _persistenceContext;
    UMPEntityPersistence * _entityPersistence;
    NSString * _uuid;
}

@property(nonatomic, readonly) UMPDatabaseInfo *dbInfo;
@property(nonatomic, readwrite, strong) FMDatabase *dbConn;
@property(nonatomic, readwrite, strong) id <UMPITransaction> transaction;
@property(nonatomic, readonly) UMPPersistenceContext *persistenceContext;
@property(nonatomic, readonly) NSString *uuid;

- (id)initWithDbInfo:(UMPDatabaseInfo *)dbInfo dbConn:(FMDatabase *)dbConn;

/**
* reset encrypt key, if newkey = nil then will clear encrpty key.
*/
- (BOOL)resetEncryptKey:(NSString *)newKey;

- (void)commit;

- (void)rollback;



@end