//
//  Created by 宋永强 on 11-9-7.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxControl.h"

@class UFSfxControlActionListener;
@class UFSfxControlActionProperty;

@interface UFSfxActionControl : UFSfxControl {
@private
    NSMutableSet * _targetActions;
//    CFAbsoluteTime  _downTime;
    struct {
        unsigned int disabled:1;
        unsigned int touchInside:1;
        unsigned int highlighted:1;
        unsigned int dontHighlightOnTouchDown:1;
        unsigned int delayActions:1;
        unsigned int selected:1;
    } _controlFlags;    
}

@property(nonatomic,getter=isEnabled) BOOL enabled;                                  // default is YES. if NO, ignores touch events and subclasses may draw differently
@property(nonatomic,getter=isSelected) BOOL selected;                                // default is NO may be used by some subclasses or by application
@property(nonatomic,getter=isHighlighted) BOOL highlighted;                          // default is NO. this gets set/cleared automatically when touch enters/exits during tracking and cleared on up

- (void)addClickListener:(id)target action:(SEL)action;

- (void)removeClickListener:(id)target action:(SEL)action;

@end

@interface UFSfxActionControl (ActionProperty)

+ (UFSfxControlActionProperty *)clickActionProperty;

@end