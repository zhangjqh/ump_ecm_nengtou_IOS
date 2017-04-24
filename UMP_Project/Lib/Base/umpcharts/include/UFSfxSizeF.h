//
//  UFSfxSizeF.h
//  UFSfxShared
//
//  Created by song mickey on 11-7-30.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UFSfxRectF;

/**
 *	@brief	表示高和宽的尺寸。
 */
@interface UFSfxSizeF : NSObject {
    float _height;
    float _width;
}

/**
 *	@brief	获取或者设置高度（以像素为单位）。
 */
@property(nonatomic, assign) float height;

/**
 *	@brief	获取或者设置宽度（以像素为单位）。
 */
@property(nonatomic, assign) float width;

/**
 *	@brief	获取高、宽为0的尺寸
 *
 *	@return	高和宽都为0的尺寸。
 */
+ (UFSfxSizeF *)empty;

+ (UFSfxSizeF *)add:(UFSfxSizeF *)sz1 sz2:(UFSfxSizeF *)sz2;

+ (UFSfxSizeF *)subtract:(UFSfxSizeF *)sz1 sz2:(UFSfxSizeF *)sz2;


/**
 *	@brief	使用指定的 width 和 height 初始化实例。
 *
 *	@param 	width 	宽度
 *	@param 	height 	高度
 *
 *	@return	创建的实例
 */
- (id)initWithWidthHeight:(float)width height:(float)height;


/**
 *	@brief	使用指定的 UFSfxRectF 初始化实例。
 *
 *	@param 	bounds 	区域
 *
 *	@return	使用 bounds 的宽和高生成的实例。
 */
- (id)initWithRect:(UFSfxRectF *)bounds;


- (void)setSize:(UFSfxSizeF *)newSize;

/**
 *	@brief	重新按照给定的 width 和 height 设置尺寸。
 *
 *	@param 	width 	宽度
 *	@param 	height 	高度
 */
- (void)setSize:(float)width height:(float)height;

- (BOOL)isEmpty;

- (id)clone;

- (CGSize)CGSizeValue;

+ (BOOL)isEqual:(UFSfxSizeF *)sz1 sz2:(UFSfxSizeF *)sz2;
@end