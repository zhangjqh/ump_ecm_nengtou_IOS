//
//  Created by 宋永强 on 12-2-22.
//
//


#import <Foundation/Foundation.h>

@class UMPEntityKey;
@class UMPBusinessEntity;
@class UMPDefaultSession;

typedef enum {
    PersistenceEntityStatus_None = 0,
    PersistenceEntityStatus_Save = 1,
    PersistenceEntityStatus_SaveOrUpdate = 2,
    PersistenceEntityStatus_Update = 3,
    PersistenceEntityStatus_Delete = 4,
} UMPPersistenceEntityStatus;

@interface UMPPersistenceContext : NSObject {
@private
    NSMutableDictionary * _entitiesByKey; //key:UMPEntityKey
    NSMutableDictionary * _persistenceEntities;
    NSMutableArray * _persistenceList;
    UMPDefaultSession * _session;
}

@property(nonatomic, readonly) NSDictionary *entitiesByKey;
@property(nonatomic, readonly) UMPDefaultSession *session;
@property(nonatomic, readonly) NSArray *persistenceList;

//@property(nonatomic, readonly) NSMutableDictionary *persistenceEntities;

- (id)initWithSession:(UMPDefaultSession *)session;


- (UMPPersistenceEntityStatus)getEntityStatus:(UMPBusinessEntity *)entity;

/**
* Clear the state of the persistence context
*/
- (void)clear;

/**
* Add a canonical mapping from entity key to entity instance
*/
- (void)addEntity:(UMPBusinessEntity *)entity;

/**
* Add a canonical mapping from entity key to entity instance
*/
- (void)addEntity:(UMPBusinessEntity *)entity:(UMPPersistenceEntityStatus)status;

/**
* Get the entity instance associated with the given key.
*/
- (UMPBusinessEntity *)getEntity:(UMPEntityKey *)key;

- (UMPBusinessEntity *)getEntity:(Class)class:(long)pk;

/**
* Is there an entity with the given key in the persistence context
*/
- (BOOL)containsEntity:(UMPEntityKey *)key;

/**
* Remove an entity from the session cache, also clear
* up other state associated with the entity.
*/
- (UMPBusinessEntity *)removeEntity:(UMPEntityKey *)key;

@end