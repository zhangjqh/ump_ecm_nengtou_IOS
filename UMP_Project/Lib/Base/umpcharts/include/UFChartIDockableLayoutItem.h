//
//  Created by 宋永强 on 11-6-2.
//
//  To change this template use File | Settings | File Templates.
//


#import "UFChartEnums.h"
#import "UMPClient.h"

@class UFSfxSizeF;
@class UFSfxRectF;

@protocol UFChartIDockableLayoutItem

- (BOOL)isVisible;

- (UFSfxDockStyle)getDockStyle;

- (UFSfxSizeF *)measure:(UFSfxSizeF *)size;

- (void)layout:(UFSfxRectF *)rect;

@end