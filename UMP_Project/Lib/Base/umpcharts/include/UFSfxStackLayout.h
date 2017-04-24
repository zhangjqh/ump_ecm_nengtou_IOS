//
//  Created by 宋永强 on 11-9-20.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxPanel.h"
#import "UFSfxCommonEnums.h"

@class UFSfxStackLayoutElement;

@interface UFSfxStackLayout : UFSfxPanel {
@private
    UFSfxStackLayoutElement *_layoutElement;
}

@property(nonatomic) UFSfxOrientation orientation;
@property(nonatomic) NSUInteger elementSpacing;
@property(nonatomic) BOOL equalChildrenWidth;
@property(nonatomic) BOOL equalChildrenHeight;
@property(nonatomic, strong, readonly) UFSfxStackLayoutElement *layoutElement;


- (UFSfxUIElement *)addControl:(id)control;

@end