//
//  Created by 宋永强 on 11-11-23.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxCollectionBase.h"

@class UFSfxGridLayoutElement;
@class UFSfxRowDefinition;

@interface UFSfxRowDefinitionCollection : NSObject <NSFastEnumeration> {
@private
    UFSfxGridLayoutElement *_grid;
    NSMutableArray * _items;
}

@property(nonatomic, readonly) BOOL isReadOnly;
@property(nonatomic, readonly) NSUInteger count;

- (id)initWithGrid:(UFSfxGridLayoutElement *)grid;

- (UFSfxRowDefinition *)objectAtIndex:(NSUInteger)index;

- (void)replaceObjectAtIndex:(NSUInteger)index withObject:(UFSfxRowDefinition *)value;

- (void)addObject:(UFSfxRowDefinition *)value;

- (void)removeAllObjects;

- (BOOL)contains:(UFSfxRowDefinition *)value;

- (int)indexOf:(UFSfxRowDefinition *)value;

- (void)insertObject:(NSUInteger)index value:(UFSfxRowDefinition *)value;

- (BOOL)removeObject:(UFSfxRowDefinition *)value;

- (void)removeAt:(NSUInteger)index;


@end