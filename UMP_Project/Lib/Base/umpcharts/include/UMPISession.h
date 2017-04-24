//
//  Created by 宋永强 on 12-2-10.
//
//

@class UMPDataReader;
@class UMPBusinessEntity;
@class UMPWhere;
@class UMPAbstractQuery;
@protocol UMPITransaction;

@protocol UMPISession <NSObject>

- (NSString *)uuid;

- (BOOL)isOpen;

- (void)open;

- (void)close;

- (id)createEntity:(Class)class;

- (id)createEntityFromName:(NSString *)entityName;

/**
* Return the persistent instance of the given entity class with the given identifier
* or raise exception if there is no such persistent instance.
*/
- (UMPBusinessEntity *)load:(Class)class:(long)pk;

/**
* Return the persistent instance of the given entity class with the given identifier,
*/
- (UMPBusinessEntity *)loadFromName:(NSString *)entityName:(long)pk;

/**
* Return the persistent instance of the given entity class with the given identifier,
* or null if there is no such persistent instance.
*/
- (UMPBusinessEntity *)get:(Class)class:(long)pk;

- (UMPBusinessEntity *)getFromName:(NSString *)entityName :(long)pk;

/**
* Remove this instance from the session cache.
*/
- (void)remove:(UMPBusinessEntity *)obj;

/**
* insert the given transient instance, first assigning a generated identifier if not assigned.
*/
- (void)save:(UMPBusinessEntity *)obj;

/**
* insert the given transient instance, using the given identifier.
*/
- (void)save:(UMPBusinessEntity *)obj:(long)pk;

/**
* insert or update the given transient instance, first assigning a generated identifier if not assigned.
*/
- (void)saveOrUpdate:(UMPBusinessEntity *)obj;

/**
* insert or update the given transient instance, using the given identifier.
*/
- (void)saveOrUpdate:(UMPBusinessEntity *)obj:(long)pk;

/**
* update the given transient instance
*/
- (void)update:(UMPBusinessEntity *)obj;

/**
* update the given transient instance, using the given identifier.
*/
- (void)update:(UMPBusinessEntity *)obj:(long)pk;

/**
* emove a persistent instance from the datastore.
*/
- (void)deleteEntity:(UMPBusinessEntity *)obj;

/**
* re-read the state of the given instance from the underlying database
*/
- (void)reload:(UMPBusinessEntity *)obj;

/**
* Completely clear the session. Evict all loaded instances and cancel all pending
* saves, updates and deletions.
*/
- (void)clear;

- (void)executeNoQuery:(NSString *)sql;

- (void)executeNoQuery:(NSString *)sql:(NSArray *)args;

- (UMPDataReader *)executeDataReader:(NSString *)sql;

- (UMPDataReader *)executeDataReader:(NSString *)sql:(NSArray *)args;

/**
* count,find methods
*/

- (BOOL)existsAny:(Class)class;
- (int)count:(Class)class;
- (int)countByFilter:(Class)class:(NSString *)where;
- (int)countByWhere:(Class)class:(UMPWhere *)where;
- (int)countByQuery:(UMPAbstractQuery *)query;
- (UMPBusinessEntity *)findFirstByFilter:(Class)class:(NSString *)where;
- (UMPBusinessEntity *)findFirstByQuery:(Class)class:(UMPAbstractQuery *)query;
- (UMPBusinessEntity *)findFirstByWhere:(Class)class:(UMPWhere *)where;
- (NSArray *)findAll:(Class)class;
- (NSArray *)findByFilter:(Class)class:(NSString *)where;
- (NSArray *)findByQuery:(Class)class:(UMPAbstractQuery *)query;
- (NSArray *)findByWhere:(Class)class:(UMPWhere *)where;

- (id<UMPITransaction>)beginTransaction;

- (id<UMPITransaction>)transaction;

- (BOOL)inTransaction;
//- (void)releaseToPool;

@end
