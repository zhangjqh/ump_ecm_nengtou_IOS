//
//  Created by 宋永强 on 11-9-7.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxActionControl.h"
#import "UFSfxEventArgs.h"

@interface UFSfxActionControl (Protected)

- (void)addTargetAction:(UFSfxControlActionProperty *)property target:(id)target action:(SEL)action;

- (void)removeTargetAction:(UFSfxControlActionProperty *)property target:(id)target action:(SEL)action;

- (void)touchesBeganCore:(NSSet *)touches withEvent:(UIEvent *)event;

- (void)touchesBeganOveride:(NSSet *)touches withEvent:(UIEvent *)event;

- (void)touchesEndCore:(NSSet *)touches withEvent:(UIEvent *)event;

- (void)touchesEndOveride:(NSSet *)touches withEvent:(UIEvent *)event;

- (void)onHighlightedChanged;

- (void)onClick:(UFSfxEventArgs *)e;

- (void)triggerAction:(UFSfxControlActionProperty *)property e:(UFSfxEventArgs *)e;

- (NSArray *)getActionListeners:(UFSfxControlActionProperty *)property;


@end