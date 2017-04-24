//
//  UFChartCollection.h
//  UFCharts2
//
//  Created by 宋永强 on 11-3-13.
//  Copyright 2011 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UMPClient.h"

@class UFChartElement;

/**
 *	@brief	提供给组件内部使用的的一个集合基类。
 */
@interface UFChartCollection : UFSfxCollectionBase {
    __unsafe_unretained UFChartElement *_owner;
}

/**
 *	@brief	集合的拥有对象。
 */
@property(nonatomic, readonly, unsafe_unretained) UFChartElement *owner;


/**
 *	@brief	使用指定拥有者初始化 UFChartCollection 实例。
 *
 *	@param 	owner 	集合拥有对象。
 *
 *	@return	实例
 */
- (id)initWithOwner:(UFChartElement *)owner;

@end


