//
//  Created by 宋永强 on 11-9-4.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxActionControl.h"

@class UFSfxLabelElement;

@interface UFSfxLabel : UFSfxActionControl {
    UFSfxLabelElement *_labelElement;
}

@property(nonatomic, strong, readonly) UFSfxLabelElement *labelElement;

@end
