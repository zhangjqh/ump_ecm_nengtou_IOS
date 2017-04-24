//
//  Created by 宋永强 on 11-9-7.
//
//


#import <Foundation/Foundation.h>

@class UFSfxControlActionProperty;
@class UFSfxEventArgs;


@interface UFSfxControlActionListener : NSObject {
@private
    __unsafe_unretained UFSfxControlActionProperty * _actionProperty;
    __unsafe_unretained id _target;
    SEL _action;
}

@property(nonatomic, unsafe_unretained, readonly) id target;
@property(nonatomic, unsafe_unretained, readonly) SEL action;
@property(nonatomic, unsafe_unretained, readonly) UFSfxControlActionProperty *actionProperty;

- (id)initWithTarget:(UFSfxControlActionProperty *)actionProperty target:(id)target action:(SEL)action;

- (void)invokeAction:(UFSfxEventArgs *)e;

@end