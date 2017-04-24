//
//  UFChartSimpleMarker.h
//  UFCharts
//
//  Created by 宋永强 on 11-4-20.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UFChartMarkerBase.h"

/**
 *	@brief	表示简单的标记对象。
 *
 *  简单标记对象提供了一些内置的可用的标记。
 */
@interface UFChartSimpleMarker : UFChartMarkerBase {

    UFSfxMarkerKind _kind;
    NSUInteger _size;
}

/**
 *	@brief	获取或者设置标记的大小。
 *  size是表示标记的实际大小（以像素为单位），即标记的最大直径。
 */
@property(nonatomic, assign) NSUInteger size;

/**
 *	@brief	获取或者设置标记的类型。
 */
@property(nonatomic, assign) UFSfxMarkerKind kind;


- (id)initWithOwner:(UFChartElement *)owner;

- (id)initWithOwner:(UFChartElement *)owner kind:(UFSfxMarkerKind)kind size:(NSUInteger)size;

@end
