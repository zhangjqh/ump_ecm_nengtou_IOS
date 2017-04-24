//
//  UFChartAppearances.h
//  UFCharts
//
//  Created by 宋永强 on 11-4-30.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UFChartMainAppearance.h"

@interface UFChartAppearances : NSObject {
}

+ (UFChartMainAppearance *)getAppearanceForName:(NSString *)name;

@end
