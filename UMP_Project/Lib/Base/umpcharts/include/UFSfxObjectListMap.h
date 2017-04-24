//
//  Created by 宋永强 on 12-2-8.
//
//


#import <Foundation/Foundation.h>

@class UFSfxObjectList;
@class UFSfxStringList;

@interface UFSfxObjectListMap : NSObject
{
@private
    NSMutableDictionary * _namesMap;
}

- (void)add:(NSString *)key:(UFSfxObjectList *)value;

- (void)remove:(NSString *)key;

- (void)clear;

- (BOOL)containsKey:(NSString *)key;

- (BOOL)containsValue:(UFSfxObjectList *)value;

- (UFSfxObjectList *)item:(NSString *)key;

- (UFSfxStringList *)keys;

- (UFSfxObjectList *)values;

@end

@interface UFSfxObjectListMap (Internal)
- (NSMutableDictionary*)internalMap;
@end