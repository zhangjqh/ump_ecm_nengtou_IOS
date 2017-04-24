//
//  Created by 宋永强 on 11-5-31.
//
//  To change this template use File | Settings | File Templates.
//


#import <Foundation/Foundation.h>
#import "UFSfxDrawColor.h"

@class UFSfxSizeF;
@class UFSfxFont;

/**
 *	@brief	提供文本字体的属性。
 */
@interface UFSfxDrawFont : NSObject {
//    UIFont * _font;
    NSString *_fontName;
    UFSfxDrawColor * _textColor;
    int _size;
    BOOL _bold;
    BOOL _italic;
}
@property(nonatomic, copy) NSString *fontName;
@property(nonatomic, copy) UFSfxDrawColor *textColor;
@property(nonatomic) int size;
@property(nonatomic) BOOL bold;
@property(nonatomic) BOOL italic;


- (id)initWithFontName:(NSString *)fontName size:(int)size;

- (UIFont *)getUIFont;

- (UFSfxSizeF *)measureTextSize:(NSString *)text;

- (void)measureTextSize:(NSString *)text bounds:(UFSfxSizeF *)textBounds;

- (id)clone;

@end