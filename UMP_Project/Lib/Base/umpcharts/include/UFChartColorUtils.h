//
//  UFChartColorUtils.h
//  UFCharts
//
//  Created by 宋永强 on 11-4-29.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UFChartColorUtils : NSObject {

}

+ (CGFloat)red:(UIColor *)color;

+ (CGFloat)green:(UIColor *)color;

+ (CGFloat)blue:(UIColor *)color;

+ (CGFloat)white:(UIColor *)color;

+ (CGFloat)alpha:(UIColor *)color;

+ (CGColorSpaceModel)colorSpaceModel:(UIColor *)color;

+ (UIColor *)colorWithRGBHex:(UInt32)hex;

+ (UIColor *)colorWithHexString:(NSString *)stringToConvert;

@end
