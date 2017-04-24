//
//  Created by 宋永强 on 12-2-15.
//
//


#import <Foundation/Foundation.h>

#import "UFSfxPanel.h"

@class UFSfxFlowLayoutElement;

@interface UFSfxFlowLayout : UFSfxPanel {
@private
    UFSfxFlowLayoutElement *_layoutElement;
}
@property(nonatomic, strong, readonly) UFSfxFlowLayoutElement *layoutElement;
- (UFSfxUIElement *)addControl:(id)control;
@end