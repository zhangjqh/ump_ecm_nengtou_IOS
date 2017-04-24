//
//  Created by 宋永强 on 11-9-3.
//
//


#import <Foundation/Foundation.h>

@protocol UFSfxILayoutHandler;
@class UFSfxInternalArrangeQueue;
@class UFSfxInternalMeasureQueue;
@class UFSfxLayoutQueue;
@class UFSfxUIElement;

@interface UFSfxLayoutManager : NSObject {
    BOOL _isDead;
    BOOL _isUpdating;
    BOOL _layoutRequestPosted;
    BOOL _isInUpdateLayout;
    BOOL _firePostLayoutEvents;
    BOOL _inFireLayoutUpdated;
    int _layoutCalls;

    NSMutableArray * _layoutEventList;
    
//    UFSfxLayoutCallback * _updateCallback;
//    UFSfxLayoutCallback * _updateLayoutBackground;
    SEL _updateCallback;
    SEL _updateLayoutBackground;
    __unsafe_unretained id<UFSfxILayoutHandler> _layoutHandler;
    
    UFSfxInternalArrangeQueue * _arrangeQueue;
    int _arrangesOnStack;
    UFSfxInternalMeasureQueue * _measureQueue;
    int _measuresOnStack;

    __unsafe_unretained UFSfxUIElement *_forceLayoutElement;
    BOOL _gotException;
}

@property(nonatomic, readonly) BOOL isDead;
@property(nonatomic, readonly) BOOL isUpdating;
@property(nonatomic, unsafe_unretained, readonly) id <UFSfxILayoutHandler> layoutHandler;
@property(nonatomic, readonly) UFSfxLayoutQueue *arrangeQueue;
@property(nonatomic, readonly) UFSfxLayoutQueue *measureQueue;

- (id)initWithLayoutHandler:(id <UFSfxILayoutHandler>)layoutHandler;

- (void)removeElementFromQueues:(UFSfxUIElement *)e;

- (void)needsRecalc;

- (void)enterArrange;

- (void)enterMeasure;

- (void)exitArrange;

- (void)exitMeasure;

- (void)updateLayout;

- (void)incrementLayoutCalls;

- (void)decrementLayoutCalls;

- (void)addLayoutListener:(id)target selector:(SEL)selector;

- (void)removeLayoutListener:(id)target selector:(SEL)selector;

@end