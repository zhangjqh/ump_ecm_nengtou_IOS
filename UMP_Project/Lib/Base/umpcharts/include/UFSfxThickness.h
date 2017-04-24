//
//  UFSfxPadding.h
//  UFCharts
//
//  Created by 宋永强 on 11-4-28.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UFSfxSizeF;

/**
 *	@brief	表示图表中各种元素的边距。
 */
@interface UFSfxThickness : NSObject {
@private
    int _left;
    int _top;
    int _right;
    int _bottom;
    UFSfxSizeF * _cachedSize;
}

/**
 *	@brief	获取或者设置左边距
 */
@property(readwrite) int left;

/**
 *	@brief	获取或者设置上边距
 */
@property(readwrite) int top;

/**
 *	@brief	获取或者设置右边距
 */
@property(readwrite) int right;

/**
 *	@brief	获取或者设置下边距
 */
@property(readwrite) int bottom;

@property(readonly) int horizontal;

@property(readonly) int vertical;

/**
 *	@brief	获取或者设置4边的边距。
 */
@property(readwrite) int all;

@property(strong, readonly) UFSfxSizeF * size;

- (id)initWithAll:(int)all;

- (id)initWithLeft:(int)aLeft top:(int)aTop bottom:(int)aBottom right:(int)aRight;

- (void)setValues:(int)aLeft top:(int)aTop right:(int)aRight bottom:(int)aBottom;

@end
