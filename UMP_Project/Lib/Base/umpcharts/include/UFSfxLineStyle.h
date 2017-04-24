//
//  Created by 宋永强 on 11-9-28.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxStyleBorder.h"

@interface UFSfxLineStyle : UFSfxStyleBorder {
@private
    UFSfxLineCap _lineCap;
}

@property(nonatomic) UFSfxLineCap lineCap;

- (id)initWithColor:(UFSfxDrawColor *)color width:(NSUInteger)width dashStyle:(UFSfxDashStyle)dashStyle cap:(UFSfxLineCap)cap;

@end