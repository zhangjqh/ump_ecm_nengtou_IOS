//
//  Created by 宋永强 on 11-7-13.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxCollectionBase.h"

@class UFSfxUIElement;

@interface UFSfxUIElementCollection : UFSfxCollectionBase {
    __unsafe_unretained UFSfxUIElement * _owner;
}

/**
 *	@brief	集合的拥有对象。
 */
@property(nonatomic, unsafe_unretained, readonly) UFSfxUIElement *owner;

/**
 *	@brief	使用指定拥有者初始化 UFSfxElementCollection 实例。
 *
 *	@param 	owner 	集合拥有对象。
 *
 *	@return	实例
 */
- (id)initWithOwner:(UFSfxUIElement *)owner;


@end