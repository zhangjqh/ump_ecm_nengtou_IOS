//
//  Created by 宋永强 on 11-8-8.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxTransform.h"

@interface UFSfxRotateTransform : UFSfxTransform {
    float _angle;
    float _cx;
    float _cy;
}

@property(nonatomic) float angle;
@property(nonatomic) float cx;
@property(nonatomic) float cy;

- (id)initWithAngle:(float)angle;

- (id)initWithAngle:(float)angle cx:(float)cx cy:(float)cy;


@end