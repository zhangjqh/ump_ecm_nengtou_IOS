//
//  UFSfxItem.h
//  UFFlexGrid
//
//  Created by 宋永强 on 11-7-13.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UFSfxCommonEnums.h"
#import "UFSfxRectF.h"
#import "UFSfxSizeF.h"
#import "UFSfxPointF.h"
#import "UFSfxPoint.h"
#import "UFSfxObject.h"
#import "UFSfxIRenderContext.h"
#import "UFSfxCollectionBase.h"

@class UFSfxUIElementCollection;
@class UFSfxTransform;
@class UFSfxThickness;
@class UFSfxComponentElementTree;
@class UFSfxLayoutManager;
@class UFSfxLayoutRequest;

@interface UFSfxUIElement : UFSfxObject <UFSfxCollectionBaseDelegate> {
@private
    __unsafe_unretained UFSfxUIElement * _parent;
    UFSfxUIElementCollection * _children;
    UFSfxLayoutManager * _layoutManager;
    UFSfxLayoutRequest * _measureRequest;
    UFSfxLayoutRequest * _arrangeRequest;

//    NSUInteger _opacity;
    NSUInteger _layoutSuspendCount;
    NSUInteger _boundsLocked;
    int _treeLevel;
    
    UFSfxSizeF * _previousAvailableSize;
    UFSfxRectF * _finalRect;
    UFSfxRectF * _cachedBounds;
    UFSfxRectF * _cachedBoundingRectangle;
    UFSfxRectF * _cachedControlBoundingRectangle;
    UFSfxRectF * _cachedFullRectangle;
    UFSfxUIElementState _state;
    UFSfxPointF *_layoutOffset;
    UFSfxSizeF * _desiredSize;
//    UFSfxSizeF * _renderSize;
    UFSfxSizeF * _unclippedDesiredSize;
    
//    BOOL _stretchHorizontally;
//    BOOL _stretchVertical;    
    BOOL _useLayoutPolicies;
    
    BOOL _isTransformsClean;
    BOOL _isNeverMeasured;
    BOOL _isNeverArranged;
    BOOL _isMeasureDirty;
    BOOL _isArrangeDirty;
    BOOL _isMeasureDuringArrange;
    BOOL _measureInProgress;
    BOOL _arrangeInProgress;    
    BOOL _invalidateOnArrange;
    BOOL _invalidateMeasureOnRemove;
    
    UFSfxTransform * _visualTransform;
    UFSfxTransform *_renderTransform;
    UFSfxPointF * _renderTransformOrigin;
    UFSfxTransform * _offsetTransform;    
    
    __unsafe_unretained UFSfxComponentElementTree * _elementTree;
    
    UFSfxTransform * _transform;
    UFSfxTransform * _totalTransform;
}

/**
 *	@brief	返回UIElement的状态，初始状态为Initial。
 */
@property(assign, readonly) UFSfxUIElementState state;

/**
 *	@brief	返回父UIElement
 */
@property(nonatomic, unsafe_unretained, readonly) UFSfxUIElement * parent;

/**
 *	@brief	返回UIElement所在的布局管理器。
 */
@property(nonatomic, strong, readonly) UFSfxLayoutManager *layoutManager;

/**
 *	@brief	返回UIElement在ElementTree中的级次。
 */
@property(nonatomic, readonly) int treeLevel;


/**
 *	@brief	返回UIElement期望的大小。
 */
@property(nonatomic, unsafe_unretained, readonly) UFSfxSizeF * desiredSize;

/**
 *	@brief	返回或者设置UIElement是否水平拉伸，默认为YES，表示UIElement宽度自动适应容器给定的宽度。
 */
@property(nonatomic, readwrite) BOOL stretchHorizontally;

/**
 *	@brief	返回或者设置UIElement是否垂直拉伸，默认为YES，表示UIElement高度自动适应容器给定的高度。
 */
@property(nonatomic, readwrite) BOOL stretchVertical;

/**
 *	@brief	返回或者设置UIElement可视状态，默认为Visible。
 */
@property(nonatomic, readwrite) UFSfxUIElementVisibility visibility;

/**
 *	@brief	获取UIElement是否可见。
 */
@property(nonatomic, readonly) BOOL isVisible;

/**
 *	@brief	获取或者设置UIElement是否自动适应内容大小。
 */
@property(nonatomic, readwrite) BOOL autoSize;

/**
 *	@brief	获取是否处于布局挂起中。
 */
@property(nonatomic, readonly) BOOL isLayoutSuspended;

/**
 *	@brief	获取在父Element中的Location。
 */
@property(nonatomic, copy) UFSfxPointF * location;

@property(nonatomic, copy) UFSfxSizeF * size;
@property(nonatomic, copy) UFSfxRectF * bounds;
@property(nonatomic, unsafe_unretained, readonly) UFSfxRectF * boundingRectangle;
/**
 *	@brief	Gets the bounds of the element along with its margins.
 */
@property(nonatomic, unsafe_unretained, readonly) UFSfxRectF * fullRectangle;

/**
 *	@brief	获取Element的大小，包含了Element的Margin。
 */
@property(nonatomic, unsafe_unretained, readonly) UFSfxSizeF * fullSize;

@property(nonatomic, unsafe_unretained, readonly) UFSfxRectF * fullBoundingRectangle;
@property(nonatomic, unsafe_unretained, readonly) UFSfxPointF * locationToControl;
@property(nonatomic, unsafe_unretained, readonly) UFSfxRectF * controlBoundingRectangle;

/**
 *	@brief	获取或者设置Element的最小尺寸。
 */
@property(nonatomic, copy) UFSfxSizeF * minSize;

/**
 *	@brief	获取或者设置Element的最大尺寸。
 */
@property(nonatomic, copy) UFSfxSizeF * maxSize;

/**
 *	@brief	获取或者设置Element的边框大小。
 */
@property(nonatomic, copy) UFSfxThickness * borderThickness;

/**
 *	@brief	获取或者设置Element和其他周边的Element的空白距离。
 */
@property(nonatomic, copy) UFSfxThickness * margin;

/**
 *	@brief	获取或者设置Element内部的空白距离。
 */
@property(nonatomic, copy) UFSfxThickness * padding;

/**
 *	@brief	获取或者设置Element在父Element中的对齐方式。
 */
@property(nonatomic) UFSfxContentAlignment alignment;

/**
 *	@brief	获取或者设置Element的自动适应模式。
 */
@property(nonatomic) UFSfxFitToSizeMode fitToSizeMode;

/**
 *	@brief	获取或者设置Element是否允许绘制。
 */
@property(nonatomic) BOOL shouldPaint;


@property(nonatomic, unsafe_unretained, readonly) UFSfxUIElementCollection * children;
@property(nonatomic, strong) UFSfxTransform *renderTransform;
@property(nonatomic, copy) UFSfxPointF * renderTransformOrigin;
//@property(nonatomic, copy) UFSfxSizeF *renderSize;
@property(nonatomic, readonly) BOOL isMeasureValid;
@property(nonatomic, readonly) BOOL isArrangeValid;
@property(nonatomic) BOOL useLayoutPolicies;
@property(nonatomic, unsafe_unretained, readonly) UFSfxComponentElementTree * elementTree;

/**
 *	@brief	重新绘制Element
 *
 *	@param 	recursive 	YES表示绘制子Element。
 */
- (void)invalidate:(BOOL)recursive;


/**
 *	@brief	重新执行Element的Arrange。
 *
 *	@param 	recursive 	YES表示递归调用子 invalidateArrange ，
 */
- (void)invalidateArrange:(BOOL)recursive;

/**
 *	@brief	重新执行Element的Measure。
 *
 *	@param 	recursive 	YES表示递归调用子 invalidateMeasure ，
 */
- (void)invalidateMeasure:(BOOL)recursive;

- (void)performLayout;

- (void)resumeLayout:(BOOL)recursive performLayout:(BOOL)performLayout;

- (void)updateLayout;

- (void)arrange:(UFSfxRectF *)finalRect;

- (void)measure:(UFSfxSizeF *)availabelSize;

- (void)removeFromParent;

- (UFSfxRectF *)getBoundingRectangle:(UFSfxSizeF *)size;

- (id)clone;

- (void)assign:(UFSfxUIElement *)obj;

- (UFSfxUIElement *)createObjectForClone;

@end

@interface UFSfxUIElement (ObjectProperty)

+ (UFSfxObjectProperty *)autoSizeProperty;

+ (UFSfxObjectProperty *)minSizeProperty;

+ (UFSfxObjectProperty *)maxSizeProperty;

+ (UFSfxObjectProperty *)boundsProperty;

+ (UFSfxObjectProperty *)marginProperty;

+ (UFSfxObjectProperty *)paddingProperty;

+ (UFSfxObjectProperty *)borderThicknessProperty;

+ (UFSfxObjectProperty *)shouldPaintProperty;

+ (UFSfxObjectProperty *)fitToSizeModeProperty;

+ (UFSfxObjectProperty *)alignmentProperty;

+ (UFSfxObjectProperty *)visiblityProperty;

+ (UFSfxObjectProperty *)stretchHorizontallyProperty;

+ (UFSfxObjectProperty *)stretchVerticalProperty;

@end