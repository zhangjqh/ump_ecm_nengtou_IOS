//
//  Created by 宋永强 on 11-9-28.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxCommonEnums.h"
#import "UFSfxObject.h"

@class UFSfxDrawColor;
@class UFSfxPen;

@interface UFSfxStyleBorder : UFSfxObject {
@private
    UFSfxDrawColor * _color;
    BOOL _visible;
    NSUInteger _width;
    UFSfxDashStyle _dashStyle;
}
- (id)initWithColor:(UFSfxDrawColor *)color width:(NSUInteger)width dashStyle:(UFSfxDashStyle)dashStyle;

- (UFSfxPen *)createPen;

- (id)initWithColor:(UFSfxDrawColor *)color width:(NSUInteger)width;

- (id)initWithColor:(UFSfxDrawColor *)color;

@property(nonatomic, strong) UFSfxDrawColor *color;
@property(nonatomic) BOOL visible;
@property(nonatomic) NSUInteger width;
@property(nonatomic) UFSfxDashStyle dashStyle;

@end