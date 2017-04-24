//
//  UFChartPaletteItem.h
//  UFCharts
//
//  Created by 宋永强 on 11-4-30.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UFSfxDrawColor;

@interface UFChartPaletteItem : NSObject {
@private
    UFSfxDrawColor *_mainColor;
    UFSfxDrawColor *_secondColor;
    UFSfxDrawColor *_middleColor;
}

/*
 
 */
@property(nonatomic, strong) UFSfxDrawColor *mainColor;
@property(nonatomic, strong) UFSfxDrawColor *secondColor;
@property(nonatomic, strong) UFSfxDrawColor *middleColor;



@end
