//
//  Created by 宋永强 on 11-11-23.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxDefinitionBase.h"

@class UFSfxGridLength;

@interface UFSfxColumnDefinition : UFSfxDefinitionBase {

}

/**
 *	@brief	返回或者设置列的最大宽度。
 */
@property(nonatomic) float maxWidth;

/**
 *	@brief	返回或者设置列的最小宽度。
 */
@property(nonatomic) float minWidth;

/**
 *	@brief	返回列的偏移量。
 */
@property(nonatomic, readonly) float offset;

/**
 *	@brief	返回或者设置列的宽度。
 */
@property(nonatomic, strong) UFSfxGridLength * width;


- (id)initWithWidth:(UFSfxGridLength *)width;

@end

@interface UFSfxColumnDefinition (ObjectProperty)


+ (UFSfxObjectProperty *)widthProperty;

+ (UFSfxObjectProperty *)maxWidthProperty;

+ (UFSfxObjectProperty *)minWidthProperty;


@end