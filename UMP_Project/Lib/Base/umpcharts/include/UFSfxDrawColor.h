//
//  Created by 宋永强 on 11-5-30.
//
//  To change this template use File | Settings | File Templates.
//


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/**
 *	@brief	提供颜色的属性和操作。
 */
@interface UFSfxDrawColor : NSObject {
    int _color;
    BOOL _empty;
    BOOL _transparent;
}

@property(readonly) BOOL empty;
@property(readonly) BOOL transparent;

+ (UFSfxDrawColor *)EMPTY;

+ (UFSfxDrawColor *)TRANSPARENT;

+ (UFSfxDrawColor *)WHITE;

+ (UFSfxDrawColor *)BLACK;

+ (UFSfxDrawColor *)GOLD;

+ (UFSfxDrawColor *)GRAY;

+ (UFSfxDrawColor *)DARK_GRAY;

+ (UFSfxDrawColor *)YELLOW;

+ (UFSfxDrawColor *)RED;

+ (UFSfxDrawColor *)GREEN;

+ (UFSfxDrawColor *)BLUE;

+ (UFSfxDrawColor *)SILVER;

+ (UFSfxDrawColor *)WHITE_SMOKE;

+ (UFSfxDrawColor *)NAVY;

+ (UFSfxDrawColor *)LIGHT_YELLOW;

+ (UFSfxDrawColor *)FUCHSIA;

+ (UFSfxDrawColor *)TEAL;

+ (UFSfxDrawColor *)MAROON;

+ (UFSfxDrawColor *)LIME;

+ (UFSfxDrawColor *)OLIVE;

+ (UFSfxDrawColor *)PURPLE;

+ (UFSfxDrawColor *)AQUA;

+ (UFSfxDrawColor *)GREEN_YELLOW;

+ (UFSfxDrawColor *)SKY_BLUE;

+ (UFSfxDrawColor *)BISQUE;

+ (UFSfxDrawColor *)INDIGO;

+ (UFSfxDrawColor *)PINK;

+ (UFSfxDrawColor *)ORANGE;

+ (UFSfxDrawColor *)MAGENTA;

+ (UFSfxDrawColor *)CYAN;

+ (UFSfxDrawColor *)LIGHT_GRAY;

+ (UFSfxDrawColor *)colorFromUIColor:(UIColor *)color;

+ (UFSfxDrawColor *)colorFromARGB:(int)color;

+ (UFSfxDrawColor *)colorFromARGB:(int)alpha red:(int)red green:(int)green blue:(int)blue;

+ (UFSfxDrawColor *)colorWithHexString:(NSString *)stringToConvert;

+ (UFSfxDrawColor *)colorWithRGBHex:(UInt32)hex;

+ (UFSfxDrawColor *)mixColor:(UFSfxDrawColor *)color1 color2:(UFSfxDrawColor *)color2;

+ (BOOL)isEmpty:(UFSfxDrawColor *)color;

- (id)initWithColor:(int)color;

- (id)initWithUIColor:(UIColor *)color;

- (id)initWithAlpha:(int)alpha red:(int)red green:(int)green blue:(int)blue;

- (int)getAlpha;

- (int)getRed;

- (int)getGreen;

- (int)getBlue;

- (UFSfxDrawColor *)colorWithAlpha:(int)alpha;

- (UFSfxDrawColor *)transparentColor:(int)transparency;

- (id)clone;

- (int)getColor;

- (CGColorRef)getCGColor;

- (UIColor *)toUIColor;

@end