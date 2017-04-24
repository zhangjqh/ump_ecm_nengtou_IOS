//
//  Created by 宋永强 on 11-8-5.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxPathSegment.h"
#import "UFSfxCommonEnums.h"
#import "UFSfxPointF.h"

@interface UFSfxArcSegment : UFSfxPathSegment {
    float _startAngle;
    float _endAngle;
    float _radius;
    UFSfxPointF * _center;    
    UFSfxSweepDirection _sweepDirection;
}

@property(nonatomic) float startAngle;
@property(nonatomic) float endAngle;
@property(nonatomic) float radius;
@property(nonatomic, copy) UFSfxPointF * center;
@property(nonatomic) UFSfxSweepDirection sweepDirection;



@end