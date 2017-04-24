//
//  Created by 宋永强 on 11-8-8.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxShape.h"

@interface UFSfxLineShape : UFSfxShape {
    UFSfxPointF * _p1;
    UFSfxPointF * _p2;
}

@property(nonatomic, copy) UFSfxPointF *p1;
@property(nonatomic, copy) UFSfxPointF *p2;


@end