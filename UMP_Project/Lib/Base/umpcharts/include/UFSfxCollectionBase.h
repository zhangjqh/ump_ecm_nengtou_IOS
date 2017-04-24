//
//  UFChartCollection.h
//  UFCharts2
//
//  Created by 宋永强 on 11-3-13.
//  Copyright 2011 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol UFSfxCollectionBaseDelegate;

/**
 *	@brief	提供给组件内部使用的的一个集合基类。
 */
@interface UFSfxCollectionBase : NSObject <NSFastEnumeration> {
    NSMutableArray *_innerList;
    __unsafe_unretained id<UFSfxCollectionBaseDelegate> _delegate;
}

@property(nonatomic, unsafe_unretained) id<UFSfxCollectionBaseDelegate> delegate;

/**
 *	@brief	获取集合项的数量。
 *
 *	@return	数量
 */
- (NSUInteger)count;

- (BOOL)contains:(id)item;

/**
 *	@brief	将 items 中的所有项加入到集合中。
 *
 *	@param 	items 	待添加的数组
 */
- (void)addAll:(NSArray *)items;


/**
 *	@brief	添加 item 到集合中。
 *
 *	@param 	item 	待添加项
 */
- (id)addObject:(id)item;

- (id)insertObjectAt:(id)item index:(NSUInteger)index;



/**
 *	@brief	从集合中移除指定的项。
 *
 *	@param 	item 	待移除项
 */
- (void)removeObject:(id)item;


/**
 *	@brief	从集合中移除指定 index 位置的项。
 *
 *	@param 	index 	待移除项的索引
 */
- (void)removeAt:(NSUInteger)index;


/**
 *	@brief	从集合中移除所有项。
 */
- (void)removeAllObjects;


/**
 *	@brief	获取指定 item 在集合中的索引。
 *
 *	@param 	item 	要查找的项
 *
 *	@return	待查找项在集合中的索引，如果没有找到则返回 NSNotFound..
 */
- (NSUInteger)indexOfObject:(id)item;


/**
 *	@brief	获取集合中在 index 位置的项。
 *
 *	@param 	index 	索引
 *
 *	@return	在index位置的项，如果没有找到，这返回 nil。
 */
- (id)objectAtIndex:(NSUInteger)index;


/**
 *	@brief	获取集合中第一个对象。
 *
 *	@return	第一个项，如果集合中没有项则返回 nil。
 */
- (id)firstObject;


/**
 *	@brief	获取集合中最后一个对象。
 *
 *	@return	最后一个项，如果集合中没有项则返回 nil。
 */
- (id)lastObject;

/**
 *	@brief	将集合中所有项转为数组并且返回。
 *
 *	@return	包含集合中所有项的数组。
 */
- (NSArray *)toArray;


@end

@interface UFSfxCollectionBase (Protected)

/**
 *	@brief	在项被加入到集合前，调用此方法进行校验。
 *
 *	@param 	item 	待加入的项。
 */
- (void)validate:(id)item;

- (void)onChangedOveride:(id)addItem removed:(id)removeItem index:(NSUInteger)index;

@end

@protocol UFSfxCollectionBaseDelegate <NSObject>

- (void)onChanged:(id)addItem removed:(id)removeItem index:(NSUInteger)index;

@end


