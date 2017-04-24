//
//  Created by 宋永强 on 11-8-25.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxUIElement.h"

@class UFSfxPropertyChangedEventArgs;

@interface UFSfxUIElement (Protected)

- (void)initializeFields;

- (void)callCreateChildElements;

- (void)createChildElements;

- (void)onChildrenChanged:(UFSfxUIElement *)addItem removed:(UFSfxUIElement *)removeItem index:(NSUInteger)index;

/**
* A callback used by the owning UFSfxControl to notify the element for a first-time screen visualization.
*/
- (void)onLoad:(BOOL)recursive;

- (void)onLoadOveride;

- (void)onLoaded;

/**
* Unloads the element if it was previously loaded on an element tree.
*/
- (void)onUnLoad:(UFSfxComponentElementTree *)oldTree recursive:(BOOL)recursive;

- (void)onUnLoadOveride;

- (void)onUnLoaded;

- (UFSfxUIElement *)getParent;

//- (UFSfxUIElementCollection *)getChildren;

- (NSUInteger)getVisualChildrenCount;

- (UFSfxUIElement *)getVisualChildAt:(NSUInteger)index;

- (void)setParent:(UFSfxUIElement *)value;

- (void)onParentChanged:(UFSfxUIElement *)previousParent;

- (void)updateReferences:(UFSfxComponentElementTree *)tree updateInheritance:(BOOL)updateInheritance recursive:(BOOL)recursive;

- (void)onElementTreeChanged:(UFSfxComponentElementTree *)previousTree;

- (void)onChildDesiredSizeChanged:(UFSfxUIElement *)child;

- (BOOL)canExecuteLayout;

- (void)invalidateOveride;

- (void)performLayoutOveride;

- (UFSfxRectF *)getArrangeRect:(UFSfxRectF *)proposed;

- (UFSfxRectF *)getPaintRectangle:(float)borderThickness;

- (UFSfxPointF *)calcLayoutOffset:(UFSfxPointF *)startPoint;

- (void)setBoundsCore:(UFSfxRectF *)bounds;

- (void)arrangeCore:(UFSfxRectF *)finalRect;

- (UFSfxSizeF *)arrangeOveride:(UFSfxSizeF *)finalSize;

- (UFSfxSizeF *)measureCore:(UFSfxSizeF *)availableSize;

- (UFSfxSizeF *)measureOveride:(UFSfxSizeF *)availableSize;

- (void)layoutOveride:(UFSfxSizeF *)size;

- (UFSfxSizeF *)measureChildren:(UFSfxSizeF *)availableSize;

- (void)paintOverride:(id<UFSfxIRenderContext>)renderContext;

- (void)beforePaintElement:(id<UFSfxIRenderContext>)renderContext;

- (void)paintElement:(id<UFSfxIRenderContext>)renderContext;

- (void)afterPaintElement:(id<UFSfxIRenderContext>)renderContext;

- (void)paintChildren:(id<UFSfxIRenderContext>)renderContext;

- (void)afterPaintChildren:(id<UFSfxIRenderContext>)renderContext;

- (void)paintChild:(UFSfxUIElement *)child renderContext:(id<UFSfxIRenderContext>)renderContext;

- (BOOL)shouldPaintChild:(UFSfxUIElement *)child;

- (UFSfxTransform *)transform;

- (UFSfxTransform *)totalTransform;

- (void)onTransformationInvalidated;

- (void)onLayoutPropertyChanged:(UFSfxPropertyChangedEventArgs *)args;

- (void)onDisplayPropertyChanged:(UFSfxPropertyChangedEventArgs *)args;

- (void)onBoundsChanged:(UFSfxPropertyChangedEventArgs *)args;

- (void)onLocationChanged:(UFSfxPropertyChangedEventArgs *)args;

/**
 *	@brief	Determines whether the element is currently in valid state.
 *
 *	@param 	checkElementTree 	<#checkElementTree description#>
 */
- (BOOL)isInValidState:(BOOL)checkElementTree;

- (void)notifyChildren:(UFSfxPropertyChangedEventArgs *)args;

- (void)onParentPropertyChanged:(UFSfxPropertyChangedEventArgs *)args;


@end