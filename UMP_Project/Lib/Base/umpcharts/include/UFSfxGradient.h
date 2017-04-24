//
//  Created by 宋永强 on 11-5-30.
//
//  To change this template use File | Settings | File Templates.
//


#import <Foundation/Foundation.h>
#import "UFSfxCommonEnums.h"

@class UFSfxDrawColor;

@interface UFSfxGradient : NSObject {
    BOOL _visible;
    UFSfxGradientMode _direction;
    UFSfxDrawColor *_startColor;
    UFSfxDrawColor *_middleColor;
    UFSfxDrawColor *_endColor;
    BOOL _useMiddle;
    int _transparency;
    float _angle;
    int _radialX;
    int _radialY;
}
- (id)initWithStartColor:(UFSfxDrawColor *)startColor endColor:(UFSfxDrawColor *)endColor;

- (id)initWithStartColor:(UFSfxDrawColor *)startColor endColor:(UFSfxDrawColor *)endColor direction:(UFSfxGradientMode)direction;

- (void)assign:(NSObject *)obj;

@property(nonatomic) BOOL visible;
@property(nonatomic) UFSfxGradientMode direction;
@property(nonatomic, strong) UFSfxDrawColor *startColor;
@property(nonatomic, strong) UFSfxDrawColor *middleColor;
@property(nonatomic, strong) UFSfxDrawColor *endColor;
@property(readonly) BOOL useMiddle;
@property(nonatomic) int transparency;
@property(nonatomic) float angle;
@property(nonatomic) int radialX;
@property(nonatomic) int radialY;


@end