//
//  Created by 宋永强 on 11-10-26.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxUIElement.h"

@interface UFSfxEmptyElement : UFSfxUIElement {
@private
    NSUInteger _width;
    NSUInteger _height;
}

/**
 *	@brief	使用给定的width和height构造一个空白的UIElement
 *
 *	@param 	width 	宽度
 *	@param 	height 	高度
 *
 *	@return	
 */
- (id)initWithSize:(NSUInteger)width height:(NSUInteger)height;



@end