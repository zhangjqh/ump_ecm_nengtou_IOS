//
//  Created by 宋永强 on 11-11-23.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxDefinitionBase.h"

@class UFSfxObjectProperty;
@class UFSfxGridLength;

@interface UFSfxRowDefinition : UFSfxDefinitionBase {

}

/**
 *	@brief	返回或者设置行的最大高度。
 */
@property(nonatomic) float maxHeight;

/**
 *	@brief	返回或者设置行的最小宽度。
 */
@property(nonatomic) float minHeight;

/**
 *	@brief	返回行的偏移。
 */
@property(nonatomic, readonly) float offset;

/**
 *	@brief	返回或者设置行的高度。
 */
@property(nonatomic, retain) UFSfxGridLength * height;


- (id)initWithHeight:(UFSfxGridLength *)height;

@end

@interface UFSfxRowDefinition (ObjectProperty)

+ (UFSfxObjectProperty *)heightProperty;

+ (UFSfxObjectProperty *)maxHeightProperty;

+ (UFSfxObjectProperty *)minHeightProperty;


@end