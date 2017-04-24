//
//  Created by 宋永强 on 11-5-30.
//
//  To change this template use File | Settings | File Templates.
//


#import <Foundation/Foundation.h>

@class UFSfxBrush;
@class UFSfxSizeF;
@class UFSfxDrawFont;
@class UFSfxDrawColor;

@interface UFSfxFont : NSObject {
    NSString *_name;
    int _size;
    BOOL _bold;
    BOOL _italic;
    UFSfxDrawColor *_color;
    UIFont *_font;
}

@property(nonatomic, strong) NSString *name;
@property(nonatomic) int size;
@property(nonatomic) BOOL bold;
@property(nonatomic) BOOL italic;
@property(nonatomic, strong) UFSfxDrawColor *color;

+ (UFSfxFont *)fromDrawFont:(UFSfxDrawFont *)font color:(UFSfxDrawColor *)color;

- (void)setPaint:(CGContextRef)context;

- (UIFont *)getUIFont;

- (void)measureTextSize:(NSString *)text bounds:(UFSfxSizeF *)textBounds;

@end