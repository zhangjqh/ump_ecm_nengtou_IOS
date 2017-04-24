//
//  Created by 宋永强 on 11-9-7.
//
//


#import <Foundation/Foundation.h>
#import "UMPClient.h"
#import "UFSfxPanel.h"

@class UFSfxBoxLayoutElement;

@interface UFSfxBoxLayout : UFSfxPanel {
@private
    UFSfxBoxLayoutElement *_layoutElement;
}

@property(nonatomic) UFSfxOrientation orientation;

@property(nonatomic, strong, readonly) UFSfxBoxLayoutElement *layoutElement;

- (UFSfxUIElement *)addControl:(id)control;

- (UFSfxUIElement *)addControl:(id)control proportion:(float)proportion;

@end