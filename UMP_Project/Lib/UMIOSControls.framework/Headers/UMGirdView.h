//
//  UMData.h
//  UMIOSControls
//
//  Created by zzyy on 13-7-16.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import "UMBindView.h"

typedef NS_ENUM(NSInteger, UMReporterType)
{
    UMReporterTypeGird,
    UMReporterTypeCard,
};

@interface UMGirdView : UMBindView

- (id)initWithReporterType:(UMReporterType)reportType;

- (void)switchReporterAppearenceTo:(UMReporterType)reportType;

//report-girdViewType
- (void)setLeftTopHeadGirdViewRowHeight:(int)rowHeight headerRow:(int)headerRow colWidth:(int)colWidth headerCol:(int)headerCol mergeRules:(NSString*)mergeArray;

- (void)setTopHeadGirdViewRowHeight:(int)rowHeight headerRow:(int)headerRow colWidth:(int)colWidth headerCol:(int)headerCol mergeRules:(NSString*)mergeArray;

- (void)setLeftHeadGirdViewRowHeight:(NSInteger)singleRowHeight headerRow:(NSInteger)headerRow colWidth:(NSInteger)colWidth headerCol:(NSInteger)headerCol mergeRules:(NSString*)mergeArray;

- (void)setColWidthChangeWithCol:(int)col width:(int)width;
- (void)setRowHeightChangeWithRow:(int)row height:(int)height;

- (void)setTopHeadGirdViewHide:(BOOL)hide defaultWidth:(int)defaultWidth;

- (void)setLeftHeadGirdViewHide:(BOOL)hide defaultHeight:(int)defaultHeight;

- (void)setDataGirdColor:(NSString*)colorOrPNG row:(int)row col:(int)col;

- (void)setDataGirdColor:(NSString*)colorOrPNG row:(int)row;

- (void)setDataGirdColor:(NSString*)colorOrPNG col:(int)col;

- (void)setDataGirdFont:(UIFont*)font row:(int)row col:(int)col;

- (void)setDataGirdFont:(UIFont *)font row:(int)row;

- (void)setDataGirdFont:(UIFont *)font col:(int)col;

- (void)setDataGirdSelectedImage:(UIImage*)selectedImg;

- (void)setDataGirdSelectedColor:(UIColor *)selectedColor;

- (void)addTarget:(id)target action:(SEL)action row:(int)row col:(int)col;

- (UIColor*)covertColorOrPNG2ColorFrome:(NSString*)colorOrPNG;

//report-cardType
- (void)setCardImagePath:(NSString*)imagePath;

//top,bottom pullRefresh
- (void)addDownPullRefreshTarget:(id)target action:(SEL)action;
- (void)addUpPullRefreshTarget:(id)target action:(SEL)action;



@end
