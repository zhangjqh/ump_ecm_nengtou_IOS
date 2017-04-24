//
//  Created by 宋永强 on 12-2-15.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxCommonEnums.h"
#import "UFSfxLayoutElement.h"

@interface UFSfxFlowLayoutElement : UFSfxLayoutElement {

}
@property(nonatomic) UFSfxOrientation orientation;
@property(nonatomic) int itemHeight;
@property(nonatomic) int itemWidth;

- (UFSfxUIElement *)addControl:(id)control;

@end

@interface UFSfxFlowLayoutElement (ObjectProperty)

+ (UFSfxObjectProperty *)orientationProperty;

+ (UFSfxObjectProperty *)itemHeightProperty;

+ (UFSfxObjectProperty *)itemWidthProperty;

@end