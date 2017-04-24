//
//  UFChartTitleLabelItem.h
//  UFCharts
//
//  Created by 宋永强 on 11-4-28.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UFChartEnums.h"
#import "UFChartTextPropertiesProvider.h"
#import "UFSfxSizeF.h"
#import "UFSfxRectF.h"

@class UFChartDockableTitle;
@class UFChartTextPainterBase;
@class UFChartDrawCommand;

@interface UFChartTitleLabelItem : NSObject <UFChartTextPropertiesProvider> {
    UFChartDockableTitle *_title;
    UFChartTextPainterBase *_painter;
}
@property(readonly, strong) UFChartDockableTitle *title;
@property(readonly, strong) UFChartTextPainterBase *painter;
@property(readonly, strong) UFSfxRectF *bounds;

- (id)initWith:(UFChartDockableTitle *)title;

- (UFChartTextPainterBase *)createTextPainter;

- (UFChartTextPainterBase *)createTextPainterInternal;

- (UFChartDrawCommand *)createDrawCommand;

- (UFChartNearTextPosition)getNearTextPosition;

@end
