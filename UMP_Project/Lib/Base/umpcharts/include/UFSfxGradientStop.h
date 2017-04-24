//
//  Created by 宋永强 on 11-8-9.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxDrawColor.h"

@interface UFSfxGradientStop : NSObject {
    UFSfxDrawColor * _color;
    float _offset;
}

@property(nonatomic, copy) UFSfxDrawColor *color;
@property(nonatomic) float offset;

- (id)initWithColor:(UFSfxDrawColor *)color offset:(float)offset;


@end