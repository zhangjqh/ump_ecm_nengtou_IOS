//
//  Created by 宋永强 on 12-2-23.
//
//


#import <Foundation/Foundation.h>

@class UMPDefaultSession;
@class UMPEntityEntry;
@class UMPBusinessEntity;

@interface UMPEntityPersistence : NSObject {
@private
    UMPDefaultSession * _session;
}
@property(nonatomic, readonly) UMPDefaultSession *session;

- (id)initWithSession:(UMPDefaultSession *)session;

- (BOOL)isExistsById:(Class)class :(long)value;

- (UMPBusinessEntity *)findById:(Class)class :(long)value;

- (void)persist:(UMPEntityEntry *)entry;

- (void)saveEntity:(UMPBusinessEntity *)entity;

- (void)saveOrUpdateEntity:(UMPBusinessEntity *)entity;

- (void)deleteEntity:(UMPBusinessEntity *)entity;

- (void)updateEntity:(UMPBusinessEntity *)entity;

@end

@interface UMPEntityPersistence (private)

+ (NSMutableDictionary *)deleteEntitySqlMap;

+ (NSString *)sqlFindById:(Class)class;

+ (NSString *)sqlInsert:(Class)class;

+ (NSString *)sqlUpdate:(Class)class;

+ (NSString *)sqlDelete:(Class)class;

+ (NSString *)sqlExistsById:(Class)class;


+ (NSMutableDictionary *)findEntitySqlMap;

+ (NSMutableDictionary *)insertEntitySqlMap;

+ (NSMutableDictionary *)updateEntitySqlMap;


@end