//
//  Created by 宋永强 on 11-8-29.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxLayoutElement.h"

@interface UFSfxStackLayoutElement : UFSfxLayoutElement {
}

@property(nonatomic) UFSfxOrientation orientation;
@property(nonatomic) NSUInteger elementSpacing;
@property(nonatomic) BOOL equalChildrenWidth;
@property(nonatomic) BOOL equalChildrenHeight;

- (UFSfxUIElement *)addControl:(id)control;

@end

@interface UFSfxStackLayoutElement (ObjectProperty)

+ (UFSfxObjectProperty *)orientationProperty;

+ (UFSfxObjectProperty *)elementSpacingProperty;

+ (UFSfxObjectProperty *)equalChildrenWidthProperty;

+ (UFSfxObjectProperty *)equalChildrenHeightProperty;

@end