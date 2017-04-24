//
//  Created by 宋永强 on 12-2-6.
//
//


#import <Foundation/Foundation.h>

/*!
 @class SUPArrayList
 @abstract Manages a mutable array of objects.
 */
@interface UFSfxArrayList : NSObject <NSFastEnumeration>
{
@protected
    NSMutableArray* _innerList;
}

@property(nonatomic, readonly) NSUInteger length;

- (UFSfxArrayList *)initWithCapacity:(NSUInteger)capacity;

- (void)addObject:(id)object;

- (void)addRange:(id<NSFastEnumeration>)items;

- (void)clear;

- (BOOL)containsObject:(id)object;

- (int)indexOfObject:(id)object;

- (id)objectAtIndex:(NSUInteger)index;

- (void)setObjectAt:(id)item:(NSUInteger)index;

- (void)insertObjectAt:(id)item:(NSUInteger)index;

- (void)removeObjectAt:(NSUInteger)index;

- (void)removeObject:(id)object;

- (void)addSlice:(UFSfxArrayList *)from:(NSUInteger)start:(NSUInteger)finish;

- (NSString *)toString;

@end

@interface UFSfxArrayList (internal)

- (void)initFields;

@end