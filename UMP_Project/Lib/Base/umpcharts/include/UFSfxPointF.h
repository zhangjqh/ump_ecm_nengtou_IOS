//
//  Created by 宋永强 on 11-5-30.
//
//  To change this template use File | Settings | File Templates.
//


#import <Foundation/Foundation.h>


@interface UFSfxPointF : NSObject {
    float _x;
    float _y;
}

@property(nonatomic, assign) float x;
@property(nonatomic, assign) float y;

- (id)initWithXY:(float)x y:(float)y;

- (id)initWithPoint:(UFSfxPointF *)point;

- (void)offset:(float)dx dy:(float)dy;

- (void)set:(float)x y:(float)y;

+ (BOOL)isEqual:(UFSfxPointF *)p1 p2:(UFSfxPointF *)p2;
@end