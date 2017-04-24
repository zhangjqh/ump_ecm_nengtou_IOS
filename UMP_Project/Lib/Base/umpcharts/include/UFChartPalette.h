//
//  UFChartPalette.h
//  UFCharts
//
//  Created by 宋永强 on 11-4-30.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UFChartPaletteItemsCollection.h"


@interface UFChartPalette : NSObject {
}

@property(readonly, strong) NSString *name;
@property(readonly, strong) UFChartPaletteItemsCollection *paletteItems;

@end
