//
//  Created by 宋永强 on 12-2-8.
//
//


#import <Foundation/Foundation.h>

@class UMPDataType;
@class UFSfxStringList;
@class UFSfxObjectList;


@interface UMPDataTypeMap : NSObject
{
@private
    NSMutableDictionary * _namesMap;
}

+ (UMPDataTypeMap *)instance;

- (void)add:(NSString *)key:(UMPDataType *)value;

- (void)remove:(NSString *)key;

- (void)clear;

- (BOOL)containsKey:(NSString *)key;

- (BOOL)containsValue:(UMPDataType *)value;

- (UMPDataType *)item:(NSString *)key;

- (UFSfxStringList *)keys;

- (UFSfxObjectList *)values;

@end

@interface UMPDataTypeMap (Internal)
- (NSMutableDictionary*)internalMap;
@end