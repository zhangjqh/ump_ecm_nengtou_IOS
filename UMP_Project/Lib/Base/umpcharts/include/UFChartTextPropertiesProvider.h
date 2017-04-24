//
//  UFChartTextPropertiesProvider.h
//  UFCharts
//
//  Created by 宋永强 on 11-4-22.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UFChartFillStyle.h"
#import "UFChartBorderStyle.h"
#import "UFChartEnums.h"

@class UFSfxDrawFont;

@protocol UFChartTextPropertiesProvider <NSObject>

- (UFSfxDrawFont *)getFont;

- (UFChartFillStyle *)getFillStyle;

- (UFChartBorderStyle *)getBorderStyle;

- (UFSfxDrawColor *)getBackColor;

- (UFSfxDrawColor *)getTextColor:(UFSfxDrawColor *)color;

- (UFSfxDrawColor *)getBorderColor:(UFSfxDrawColor *)color;

@end
