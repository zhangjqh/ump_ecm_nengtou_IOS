//
//  Created by 宋永强 on 11-8-8.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxBaseAnimation.h"

@protocol UFSfxIRenderContext;
@class UFSfxDrawingContext;
@class UFSfxUIElement;
@class UFSfxTransformGroup;

/**
* @brief 为点和矩形之类的对象提供通用的变换支持。这是一个抽象类。
*/
@interface UFSfxTransform : NSObject {
    __unsafe_unretained UFSfxTransformGroup * _owner;
    __unsafe_unretained UFSfxUIElement * _attachElement;
}

+ (UFSfxTransform *)identity;

- (NSArray *)elements;

- (void)pushTransform:(id<UFSfxIRenderContext>)context;
- (void)popTransform:(id<UFSfxIRenderContext>)context;

- (void)beginAnimation:(NSString *)propertyName animation:(UFSfxBaseAnimation *)animation;

@end