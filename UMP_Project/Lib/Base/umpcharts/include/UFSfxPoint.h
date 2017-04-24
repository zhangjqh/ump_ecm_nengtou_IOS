//
//  Created by 宋永强 on 11-7-18.
//
//


#import <Foundation/Foundation.h>


@interface UFSfxPoint : NSObject {
    int _x;
    int _y;
}

@property(nonatomic, assign) int x;
@property(nonatomic, assign) int y;

- (id)initWith:(int)x y:(int)y;

- (id)initWithPoint:(UFSfxPoint *)point;

- (void)offset:(int)dx dy:(int)dy;

- (void)set:(int)x y:(int)y;

+ (BOOL)isEqual:(UFSfxPoint *)p1 p2:(UFSfxPoint *)p2;


@end