//
//  Created by 宋永强 on 11-8-30.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxControl.h"

@class UFSfxRectF;


@interface UFSfxControl (Protected)

- (void)construct;

- (void)onLoad:(UFSfxSizeF *)desiredSize;

- (UFSfxSizeF *)getInitialDesiredSize:(UFSfxSizeF *)availableSize;

- (void)setBoundsCore:(float)left top:(float)top width:(float)width height:(float)height;

- (void)initializeRootElementOveride:(UFSfxRootElement *)rootElement;

- (void)onAutoSizeChanged;

- (void)onLayoutUpdated;

- (void)performLayout:(UFSfxSizeF *)size;

@end