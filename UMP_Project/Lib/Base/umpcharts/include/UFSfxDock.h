//
//  Created by 宋永强 on 11-9-5.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxCommonEnums.h"
#import "UFSfxPanel.h"

@class UFSfxPanelElement;
@class UFSfxDockLayoutElement;

@interface UFSfxDock : UFSfxPanel {
@private
    UFSfxDockLayoutElement *_layoutElement;
}

@property(nonatomic, strong, readonly) UFSfxDockLayoutElement *layoutElement;

- (UFSfxUIElement *)addControl:(id)control position:(UFSfxDockPosition)position;

@end