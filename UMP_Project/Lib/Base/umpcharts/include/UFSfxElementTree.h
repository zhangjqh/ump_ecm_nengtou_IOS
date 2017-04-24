//
//  Created by 宋永强 on 11-8-29.
//
//


#import <Foundation/Foundation.h>

@protocol UFSfxIComponentTreeHandler;
@class UFSfxNativeControlWrapper;
@class UFSfxRootElement;
@class UFSfxUIElement;

@interface UFSfxElementTree : NSObject {
@private
    UFSfxNativeControlWrapper * _control;
    UFSfxRootElement * _root;
    __unsafe_unretained id<UFSfxIComponentTreeHandler> _component;
}

@property(nonatomic, readonly, strong) UFSfxRootElement * rootElement;
@property(nonatomic, strong) UFSfxNativeControlWrapper * control;
@property(nonatomic, unsafe_unretained, readonly) id<UFSfxIComponentTreeHandler> componentTreeHandler;


- (id)initWithComponent:(id <UFSfxIComponentTreeHandler>)component;

- (void)initializeRootElement:(UFSfxRootElement *)rootElement;

- (void)createChildItems:(UFSfxUIElement *)parent;

- (UFSfxRootElement *)createRootElement;

- (void)ensureRootElement;

@end