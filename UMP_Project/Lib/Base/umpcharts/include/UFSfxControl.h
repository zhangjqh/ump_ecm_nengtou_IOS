//
//  Created by 宋永强 on 11-8-29.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxIComponent.h"

@class UFSfxComponentElementTree;
@class UFSfxLayoutManager;
@class UFSfxSizeF;
@class UFSfxDrawColor;
@class UFSfxThickness;

@interface UFSfxControl : UIScrollView <UFSfxIComponent> {
@private
    NSUInteger _layoutSuspendedCount;
    BOOL _loaded;
    BOOL _autoSize;
//    BOOL _loadChildViews;
    BOOL _isPainting;
    BOOL _isDisposing;
    NSUInteger _suspendUpdateCounter;
    CGSize _cacheSize;
    UFSfxComponentElementTree * _elementTree;
    UFSfxLayoutManager * _layoutManager;
    BOOL _willRemovedSubViewInProgress;
}

@property(nonatomic, readonly) BOOL isLoaded;
//@property(nonatomic, copy) UFSfxSizeF *realSize;
@property(nonatomic) BOOL autoSize;
@property(nonatomic) float left;
@property(nonatomic) float top;
@property(nonatomic) float width;
@property(nonatomic) float height;
@property(nonatomic, unsafe_unretained, readonly) UFSfxRootElement * rootElement;
@property(nonatomic, copy) UFSfxThickness * padding;
@property(nonatomic, copy) UFSfxThickness * margin;
@property(nonatomic, readonly) BOOL isLayoutSuspended;

@property(nonatomic) float cornerRadius;
@property(nonatomic) BOOL masksToBounds;

@property(nonatomic, copy) UFSfxSizeF * shadowOffset;
@property(nonatomic) float shadowRadius;
@property(nonatomic) int shadowOpacity;
@property(nonatomic, copy) UFSfxDrawColor * shadowColor;

- (void)suspendLayout;

- (void)resumeLayout:(BOOL)performLayout;


@end