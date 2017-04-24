//
//  Created by 宋永强 on 11-8-24.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxCommonEnums.h"

@class UFSfxThickness;
@class UFSfxRectF;
@class UFSfxSizeF;

@interface UFSfxLayoutHelper : NSObject {

}

+ (UFSfxContentAlignment)anyBottom;

+ (UFSfxContentAlignment)anyCenter;

+ (UFSfxContentAlignment)anyLeft;

+ (UFSfxContentAlignment)anyMiddle;

+ (UFSfxContentAlignment)anyRight;

+ (UFSfxContentAlignment)anyTop;

+ (UFSfxThickness *)rotateMargin:(UFSfxThickness *)margin angle:(int)angle;

+ (UFSfxRectF *)align:(UFSfxSizeF *)alignThis withinThis:(UFSfxRectF *)withinThis align:(UFSfxContentAlignment)align;

+ (UFSfxRectF *)vAlign:(UFSfxSizeF *)alignThis withinThis:(UFSfxRectF *)withinThis align:(UFSfxContentAlignment)align;

+ (UFSfxRectF *)hAlign:(UFSfxSizeF *)alignThis withinThis:(UFSfxRectF *)withinThis align:(UFSfxContentAlignment)align;

+ (UFSfxSizeF *)unionSizes:(UFSfxSizeF *)sz1 sz2:(UFSfxSizeF *)sz2;

+ (BOOL)isVerticalRelation:(UFSfxTextImageRelation)relation;

+ (BOOL)isHorizontalRelation:(UFSfxTextImageRelation)relation;

+ (UFSfxSizeF *)subAlignedRegion:(UFSfxSizeF *)currentSize contentSize:(UFSfxSizeF *)contentSize relation:(UFSfxTextImageRelation)relation;

+ (UFSfxSizeF *)subAlignedRegion:(UFSfxSizeF *)currentSize contentSize:(UFSfxSizeF *)contentSize vertical:(BOOL)vertical;

+ (UFSfxSizeF *)addAlignedRegion:(UFSfxSizeF *)currentSize contentSize:(UFSfxSizeF *)contentSize relation:(UFSfxTextImageRelation)relation;

+ (UFSfxSizeF *)addAlignedRegion:(UFSfxSizeF *)currentSize contentSize:(UFSfxSizeF *)contentSize vertical:(BOOL)vertical;

+ (void)splitRegion:(UFSfxRectF *)bounds contentSize:(UFSfxSizeF *)contentSize region1Align:(UFSfxAnchorStyles)region1Align updatRegion1:(UFSfxRectF *)region1 updatRegion2:(UFSfxRectF *)region2;


@end