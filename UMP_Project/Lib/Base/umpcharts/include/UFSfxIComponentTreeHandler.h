//
//  Created by 宋永强 on 11-8-29.
//
//
#import "UFSfxILayoutHandler.h"

@class UFSfxRootElement;
@class UFSfxSizeF;
@class UFSfxUIElement;
@class UFSfxHostItem;
@class UFSfxComponentElementTree;
@class UFSfxLayoutManager;
@class UFSfxRectF;

@protocol UFSfxIComponentTreeHandler <NSObject, UFSfxILayoutHandler>

- (UFSfxLayoutManager *)layoutManager;

- (UFSfxComponentElementTree *)elementTree;

- (void)initializeRootElement:(UFSfxRootElement *)rootElement;

- (void)loadElementTree;

- (void)loadElementTreeWithSize:(UFSfxSizeF *)size;

- (UFSfxRootElement *)createRootElement;

- (UFSfxRootElement *)rootElement;

- (void)callSetBoundsCore:(float)x y:(float)y width:(float)width height:(float)height;

- (void)createChildItems:(UFSfxUIElement *)parent;

- (void)invalidateElement:(UFSfxUIElement *)element;

- (void)invalidateElement:(UFSfxUIElement *)element bounds:(UFSfxRectF *)bounds;

- (void)registerHostedControl:(UFSfxHostItem *)hostElement;

- (void)unregisterHostedControl:(UFSfxHostItem *)hostElement removeControl:(BOOL)removeControl;

@end