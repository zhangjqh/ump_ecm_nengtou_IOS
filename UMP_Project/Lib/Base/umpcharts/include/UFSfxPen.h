//
//  Created by 宋永强 on 11-5-30.
//
//  To change this template use File | Settings | File Templates.
//


#import <Foundation/Foundation.h>
#import "UFSfxCommonEnums.h"
#import "UFSfxDrawColor.h"

@interface UFSfxPen : NSObject {
    BOOL _visible;
    NSUInteger _width;
    UFSfxDrawColor *_color;
    UFSfxLineCap _lineCap;
    UFSfxDashStyle _dashStyle;
    UFSfxDashCap _dashCap;
    NSUInteger _transparency;
}

- (id)initWithColor:(UFSfxDrawColor *)color width:(NSUInteger)width visible:(BOOL)visible;
- (void)setPaint:(CGContextRef)context;

@property(nonatomic) BOOL visible;
@property(nonatomic) NSUInteger width;
@property(nonatomic, strong) UFSfxDrawColor *color;
@property(nonatomic) UFSfxLineCap lineCap;
@property(nonatomic) UFSfxDashStyle dashStyle;
@property(nonatomic) UFSfxDashCap dashCap;
@property(nonatomic) NSUInteger transparency;

@end