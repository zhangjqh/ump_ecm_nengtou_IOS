//
//  UFChartHitTestItem.h
//  UFCharts2
//
//  Created by 宋永强 on 11-3-19.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UFSfxRectF.h"


@interface UFChartHitTestItem : NSObject {
    UFSfxRectF *_rect;
    id _item;
}

@property(readonly, strong) UFSfxRectF *rect;
@property(readonly, strong) id item;

+ (UFChartHitTestItem *)createWith:(UFSfxRectF *)rect object:(id)object;

- (UFChartHitTestItem *)initWith:(UFSfxRectF *)rect object:(id)object;

@end
