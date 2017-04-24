//
//  Created by 宋永强 on 11-11-28.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxPanel.h"

@class UFSfxGridLayoutElement;

@interface UFSfxGridLayout : UFSfxPanel {
@private
    UFSfxGridLayoutElement * _layoutElement;
}

@property(nonatomic, strong, readonly) UFSfxGridLayoutElement *layoutElement;

- (UFSfxUIElement *)addControl:(id)control;

@end