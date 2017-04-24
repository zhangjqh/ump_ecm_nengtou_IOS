//
//  UIColor+UIColorHex.h
//  DyTest
//
//  Created by zhangnan on 13-11-6.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

@interface UIColor (UIColorHex)
+ (UIColor *) colorWithHexString: (NSString *) stringToConvert;
+(NSString *) changeUIColorToRGB:(UIColor *)color;

/**
 *  根据rgb获取颜色反差最大的白色 黑色
 *
 *  @param stringToConvert color rgb
 *
 *  @return color
 */
+(UIColor *)getWhiteBlackByHexString:(NSString *)stringToConvert;
@end
