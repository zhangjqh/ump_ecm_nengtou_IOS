//
//  Created by 宋永强 on 11-8-5.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxPathSegment.h"

@interface UFSfxLineSegment : UFSfxPathSegment {
    UFSfxPointF * _point;
}

@property(nonatomic, copy) UFSfxPointF *point;

- (id)initWithLocation:(float)x y:(float)y;

@end