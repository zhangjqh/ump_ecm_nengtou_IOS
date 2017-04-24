//
//  Created by 宋永强 on 11-5-30.
//
//  To change this template use File | Settings | File Templates.
//


#import <Foundation/Foundation.h>


@class UFSfxRect;

/**
 *	@brief	表示高和宽的尺寸。
 */
@interface UFSfxSize : NSObject {
    int _height;
    int _width;
}

/**
 *	@brief	获取或者设置高度（以像素为单位）。
 */
@property(nonatomic, assign) int height;

/**
 *	@brief	获取或者设置宽度（以像素为单位）。
 */
@property(nonatomic, assign) int width;

/**
 *	@brief	获取高、宽为0的尺寸
 *
 *	@return	高和宽都为0的尺寸。
 */
+ (UFSfxSize *)empty;


/**
 *	@brief	使用指定的 width 和 height 初始化实例。
 *
 *	@param 	width 	宽度
 *	@param 	height 	高度
 *
 *	@return	创建的实例
 */
- (id)initWithSize:(int)width height:(int)height;


/**
 *	@brief	使用指定的 UFSfxRectF 初始化实例。
 *
 *	@param 	bounds 	区域
 *
 *	@return	使用 bounds 的宽和高生成的实例。
 */
- (id)initWithRect:(UFSfxRect *)bounds;


- (void)setSize:(UFSfxSize *)newSize;

/**
 *	@brief	重新按照给定的 width 和 height 设置尺寸。
 *
 *	@param 	width 	宽度
 *	@param 	height 	高度
 */
- (void)setSize:(int)width height:(int)height;

- (BOOL)isEmpty;

- (CGSize)CGSizeValue;

@end