//
//  Created by 宋永强 on 11-8-3.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxIRenderContext.h"

@interface UFSfxDefaultRenderContext : NSObject <UFSfxIRenderContext> {
@private
    UFSfxDrawingContext * _drawingContext;
    __unsafe_unretained UIView * _containerView;
    __unsafe_unretained CALayer * _containerLayer;
    CATransform3D _currentTransform;
    NSMutableArray * _containerViewQueue;
    NSMutableArray * _containerLayerQueue;
}

@property(nonatomic, strong) UFSfxDrawingContext * drawingContext;
@property(nonatomic, unsafe_unretained) UIView * containerView;
@property(nonatomic, unsafe_unretained) CALayer * containerLayer;



@end