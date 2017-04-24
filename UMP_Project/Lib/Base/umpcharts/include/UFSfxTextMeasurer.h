//
//  UFSfxTextMeasurer.h
//  UFCharts
//
//  Created by 宋永强 on 11-5-8.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UFSfxFont;
@class UFSfxDrawFont;
@class UFSfxSizeF;

@interface UFSfxTextMeasurer : NSObject

+ (UFSfxSizeF *)measureString:(NSString *)text drawFont:(UFSfxDrawFont *)drawFont;

@end
