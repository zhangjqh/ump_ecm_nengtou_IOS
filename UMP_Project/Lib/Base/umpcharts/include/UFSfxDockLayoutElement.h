//
//  Created by 宋永强 on 11-9-1.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxCommonEnums.h"
#import "UFSfxLayoutElement.h"

@interface UFSfxDockLayoutElement : UFSfxLayoutElement {
}

@property(nonatomic) BOOL fillLastChild;

+ (UFSfxObjectProperty *)dockProperty;

+ (UFSfxObjectProperty *)fillLastChildProperty;

+ (UFSfxDockPosition)getDock:(UFSfxUIElement *)element;

+ (void)setDock:(UFSfxUIElement *)element position:(UFSfxDockPosition)position;

- (UFSfxUIElement *)addControl:(id)control position:(UFSfxDockPosition)position;

@end