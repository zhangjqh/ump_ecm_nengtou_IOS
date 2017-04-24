//
//  Created by 宋永强 on 11-11-23.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxCollectionBase.h"

@class UFSfxGridLayoutElement;
@class UFSfxColumnDefinition;

@interface UFSfxColumnDefinitionCollection : NSObject <NSFastEnumeration> {
@private
    __unsafe_unretained UFSfxGridLayoutElement *_grid;
    NSMutableArray * _items;
}

@property(nonatomic, readonly) BOOL isReadOnly;
@property(nonatomic, readonly) NSUInteger count;

- (id)initWithGrid:(UFSfxGridLayoutElement *)grid;

- (UFSfxColumnDefinition *)objectAtIndex:(NSUInteger)index;

- (void)replaceObjectAtIndex:(NSUInteger)index withObject:(UFSfxColumnDefinition *)value;

- (void)addObject:(UFSfxColumnDefinition *)value;

- (void)removeAllObjects;


- (BOOL)contains:(UFSfxColumnDefinition *)value;

- (int)indexOf:(UFSfxColumnDefinition *)value;

- (void)insertObject:(NSUInteger)index value:(UFSfxColumnDefinition *)value;

- (BOOL)removeObject:(UFSfxColumnDefinition *)value;

- (void)removeAt:(NSUInteger)index;


@end