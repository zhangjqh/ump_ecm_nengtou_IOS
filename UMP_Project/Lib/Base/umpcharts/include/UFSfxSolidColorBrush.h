//
//  Created by 宋永强 on 11-8-9.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxBrush.h"

@interface UFSfxSolidColorBrush : UFSfxBrush {
    UFSfxDrawColor *_color;
}

@property(nonatomic, copy) UFSfxDrawColor *color;

- (id)initWithColor:(UFSfxDrawColor *)color;


@end