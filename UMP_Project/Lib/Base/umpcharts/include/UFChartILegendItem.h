//
//  Created by 宋永强 on 11-6-3.
//
//  To change this template use File | Settings | File Templates.
//


@class UFSfxDrawFont;
@class UFSfxDrawColor;
@class UFSfxSizeF;
@class UFChartDrawCommand;
@class UFSfxRectF;

@protocol UFChartILegendItem <NSObject>

- (UFSfxDrawFont *)getFont;

- (NSString *)getText;

- (UFSfxDrawColor *)getTextColor;

- (UIImage *)getMakerImage;

- (UFSfxSizeF *)getMarkerSize;

- (BOOL)isMarkerVisible;

- (BOOL)isTextVisible;

- (UFChartDrawCommand *)createDrawCommand:(UFSfxRectF *)bounds;

@end