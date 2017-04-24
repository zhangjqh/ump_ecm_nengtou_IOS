//
//  Created by 宋永强 on 12-2-6.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxObjectList.h"

@class UMPAbstractAttribute;
@class UFSfxStringList;

@interface UMPAttributeMap : NSObject
{
@protected
    UFSfxObjectList * _attributes;
@private
    NSMutableDictionary* _namesMap;
}

@property(nonatomic, readwrite, strong) UFSfxObjectList *attributes;

- (void)add:(NSString *)key:(UMPAbstractAttribute *)value;

- (void)remove:(NSString *)key;

- (void)clear;

- (BOOL)containsKey:(NSString *)key;

- (BOOL)containsValue:(UMPAbstractAttribute *)value;

- (UMPAbstractAttribute *)item:(NSString *)key;

- (UFSfxStringList *)keys;

- (UFSfxObjectList *)values;

- (UMPAttributeMap *)finishInit;

@end

@interface UMPAttributeMap (Internal)
- (NSMutableDictionary*)internalMap;
@end