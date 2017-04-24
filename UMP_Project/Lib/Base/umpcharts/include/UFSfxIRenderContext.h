//
//  Created by 宋永强 on 11-8-3.
//
//
#import "UFSfxDrawingContext.h"
#import <QuartzCore/QuartzCore.h>

@protocol UFSfxIRenderContext <NSObject>

- (UFSfxDrawingContext *)getDrawingContext;

- (UIView *)getContainerView;

- (CALayer *)getContainerLayer;

- (CATransform3D)getCurrentTransform;

- (void)setCurrentTransform:(CATransform3D)transform;

- (void)pushContext;

- (void)popContext;
@end