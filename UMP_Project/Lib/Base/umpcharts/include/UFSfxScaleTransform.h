//
//  Created by 宋永强 on 11-8-11.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxTransform.h"

@interface UFSfxScaleTransform : UFSfxTransform {
    float _scaleX;
    float _scaleY;
    float _centerX;
    float _centerY;
}
@property(nonatomic) float scaleX;
@property(nonatomic) float scaleY;
@property(nonatomic) float centerX;
@property(nonatomic) float centerY;

- (id)initWithScaleX:(float)scaleX scaleY:(float)scaleY centerX:(float)centerX centerY:(float)centerY;

- (id)initWithScaleX:(float)scaleX scaleY:(float)scaleY;


@end