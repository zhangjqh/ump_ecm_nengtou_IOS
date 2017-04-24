//
//  Created by 宋永强 on 12-2-8.
//
//


#import <Foundation/Foundation.h>

@class UMPEntityMetaData;
@class UFSfxObjectList;
@class UFSfxStringList;

@interface UMPEntityMap : NSObject
{
@private
    NSMutableDictionary * _namesMap;
}
@property(nonatomic, readonly, strong) NSArray *entities;

+ (UMPEntityMap *)instance;

- (void)add:(NSString *)key:(UMPEntityMetaData *)value;

- (void)remove:(NSString *)key;

- (void)clear;

- (BOOL)containsKey:(NSString *)key;

- (BOOL)containsValue:(UMPEntityMetaData *)value;

- (UMPEntityMetaData *)item:(NSString *)key;

- (UFSfxStringList *)keys;

- (UFSfxObjectList *)values;

//- (UMPEntityMap *)finishInit;

@end

@interface UMPEntityMap (Internal)

- (NSMutableDictionary*)internalMap;

@end