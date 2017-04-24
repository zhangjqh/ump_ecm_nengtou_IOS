//
//  Created by 宋永强 on 11-8-29.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxControl.h"

@class UFSfxLayoutElement;

@interface UFSfxLayoutControl : UFSfxControl {
    __unsafe_unretained UFSfxLayoutElement *_layoutElement;
}

@property(nonatomic, unsafe_unretained) UFSfxLayoutElement *layoutElement;
@end