//
//  UFSfxCommonEnums.h
//
//  Created by 宋永强 on 11-7-13.
//  Copyright 2011年 UFIDA. All rights reserved.
//

/**
 *	@brief	填充模式
 */
typedef enum {
	UFSfxFillModeNone, /**< 无填充 */
	UFSfxFillModeSolid, /**< 实心 */
	UFSfxFillModeGradient, /**< 渐变 */
	UFSfxFillModeHatch /**< 预留，暂未支持 */
} UFSfxFillMode;

typedef enum {
    UFSfxGradientStyleLinear,
    UFSfxGradientStyleRadial
} UFSfxGradientStyle;


/**
 *	@brief	文本相对与给定参照物的的对齐方式。
 */
typedef enum {
	UFSfxAlignmentNear, /**< 靠近 */
	UFSfxAlignmentCenter, /**< 在参照物的中心 */
	UFSfxAlignmentFar /**< 远离 */
} UFSfxAlignment;

typedef enum {
    UFSfxImageModeNormal,
    UFSfxImageModeStretch,
    UFSfxImageModeTile,
    UFSfxImageModeCenter
} UFSfxImageMode;
//
//typedef enum {
//    UFSfxImageLayoutNone,
//    UFSfxImageLayoutScale,
//    UFSfxImageLayoutTile,
//    UFSfxImageLayoutCenter
//}

typedef enum {
    UFSfxLineCapBevel,
    UFSfxLineCapMiter,
    UFSfxLineCapRound
} UFSfxLineCap;

typedef enum {
    UFSfxDashStyleSolid,
    UFSfxDashStyleDot,
    UFSfxDashStyleDash,
    UFSfxDashStyleDashDot,
    UFSfxDashStyleDashDotDot
} UFSfxDashStyle;

typedef enum {
    UFSfxDashCapFlat,
    UFSfxDashCapRound,
    UFSfxDashCapSquare
} UFSfxDashCap;


/**
 *	@brief	渐变方向。
 */
typedef enum {
	UFSfxGradientTopToBottom, /**< 上到下 */
	UFSfxGradientBottomToTop, /**< 下到上 */
	UFSfxGradientLeftToRight, /**< 左到右 */
	UFSfxGradientRightToLeft, /**< 右到左 */
	UFSfxGradientTopLeftToBottomRight, /**< 左上到右下 */
	UFSfxGradientBottomRightToTopLeft, /**< 右下到左上 */
	UFSfxGradientTopRightToBottomLeft, /**< 右上到左下 */
	UFSfxGradientBottomLeftToTopRight, /**< 左下到右上 */
	UFSfxGradientFromCenterHorizontal, /**< 中心水平向两边 */
	UFSfxGradientToCenterHorizontal, /**< 两边水平向中心 */
	UFSfxGradientFromCenterVertical, /**< 中心垂直向两边 */
	UFSfxGradientToCenterVertical /**< 两边垂直向中心 */
} UFSfxGradientMode;

/**
 *	@brief	停靠方向
 */
typedef enum {
	UFSfxDockStyleLeft, /**< 靠左 */
	UFSfxDockStyleTop, /**< 靠上 */
	UFSfxDockStyleRight, /**< 靠右 */
	UFSfxDockStyleBottom /**< 靠下 */
} UFSfxDockStyle;

/**
 *	@brief	停靠方向
 */
typedef enum {
    UFSfxDockPositionLeft, /**< 靠左 */
    UFSfxDockPositionTop, /**< 靠上 */
    UFSfxDockPositionRight, /**< 靠右 */
    UFSfxDockPositionBottom, /**< 靠下 */
    UFSfxDockPositionFill
} UFSfxDockPosition;

typedef enum {
    UFSfxBorderBoxStyleSingle,
    UFSfxBorderBoxStyleFourBorders,
    UFSfxBorderBoxStyleOuterInner
} UFSfxBorderBoxStyle;

/**
 *	@brief	数据点的标记样式。
 */
typedef enum {
	UFSfxMarkerKindRectangle, /**< 矩形 */
    UFSfxMarkerKindEllipse, /**< 椭圆 */
    UFSfxMarkerKindDiamond, /**< 菱形 */
    UFSfxMarkerKindTriangle, /**< 三角 */
    UFSfxMarkerKindStar, /**< 星型 */
    UFSfxMarkerKindPentagon, /**< 五角形 */
    UFSfxMarkerKindHexagon, /**< 六边形 */
    UFSfxMarkerKindCross, /**< 十字形 */
    UFSfxMarkerKindPlus, /**< 加号 */
    UFSfxMarkerKindDash, /**< 横线 */
    UFSfxMarkerKindSnow  /**< 雪花 */
} UFSfxMarkerKind;

/**
 *	@brief	滚动条的类型。
 */
typedef enum {
	UFSfxScrollTypeHorizontal, /**< 水平 */
	UFSfxScrollTypeVertical /**< 垂直 */
} UFSfxScrollType;

/**
 *	@brief	指定控件或控件元素的方向。
 */
typedef enum {
	UFSfxOrientationHorizontal, /**< 水平放置控件或元素。 */
	UFSfxOrientationVertical /**< 垂直放置控件或元素。 */
} UFSfxOrientation;

typedef enum {
    UFSfxStripPositionFirst,
    UFSfxStripPositionLast
} UFSfxStripPosition;

typedef enum {
    
    UFSfxUIElementStateInitial,
    UFSfxUIElementStateConstructing,
    UFSfxUIElementStateConstructed,
    UFSfxUIElementStateLoading,
    UFSfxUIElementStateLoaded,
    UFSfxUIElementStateUnloaded,
    UFSfxUIElementStateDisposing,
    UFSfxUIElementStateDisposed
} UFSfxUIElementState;

typedef enum {
    UFSfxFitToParentContent,
    UFSfxFitToParentPadding,
    UFSfxFitToParentBounds
} UFSfxFitToSizeMode;

typedef enum {
    UFSfxAnchorNone = 0,
    UFSfxAnchorTop = 1,
    UFSfxAnchorBottom = 2,
    UFSfxAnchorLeft = 4,
    UFSfxAnchorRight = 8
} UFSfxAnchorStyles;

typedef enum {
    UFSfxContentAlignmentTopLeft = 1,
    UFSfxContentAlignmentTopCenter = 2,
    UFSfxContentAlignmentTopRight = 4,
    UFSfxContentAlignmentMiddleLeft = 16,
    UFSfxContentAlignmentMiddleCenter = 32,
    UFSfxContentAlignmentMiddleRight = 64,
    UFSfxContentAlignmentBottomLeft = 256,
    UFSfxContentAlignmentBottomCenter = 512,
    UFSfxContentAlignmentBottomRight = 1024
} UFSfxContentAlignment; 

typedef enum {
    UFSfxTextImageRelationOverlay = 0,
    UFSfxTextImageRelationImageAboveText = 1,
    UFSfxTextImageRelationImageBeforeText = 4,
    UFSfxTextImageRelationTextAboveImage = 2,
    UFSfxTextImageRelationTextBeforeImage = 8
} UFSfxTextImageRelation;

typedef enum {
    UFSfxTextImageDisplayStyleNone,
    UFSfxTextImageDisplayStyleText,
    UFSfxTextImageDisplayStyleImage,
    UFSfxTextImageDisplayStyleImageAndText
} UFSfxTextImageDisplayStyle;

typedef enum {
    UFSfxHorizontalAlignmentLeft,
    UFSfxHorizontalAlignmentCenter,
    UFSfxHorizontalAlignmentRight,
    UFSfxHorizontalAlignmentStretch
} UFSfxHorizontalAlignment;

typedef enum {
    UFSfxVerticalAlignmentTop,
    UFSfxVerticalAlignmentCenter,
    UFSfxVerticalAlignmentBottom,
    UFSfxVerticalAlignmentStretch
} UFSfxVerticalAlignment;

typedef enum {
    UFSfxSweepCouterclockwise,
    UFSfxSweepClockwise
} UFSfxSweepDirection;

typedef enum {
    UFSfxUIElementVisible, /**< Indicates that the element is visible. */
    UFSfxUIElementHidden, /**< Indicates that the element is hidden. */
    UFSfxUIElementCollapsed /**< Indicates that the element is collapsed. */
} UFSfxUIElementVisibility;

typedef enum {
    UFSfxUIElementPropertyOptionNone = 0, /**< Indicates that there are no property options. */
     /// <summary>
     /// Indicates that the property can inherit a value.
     /// </summary>
    UFSfxUIElementPropertyOptionCanInheritValue = 2,
     /// <summary>
     /// Indicates that the property invalidates the layout.
     /// </summary>
    UFSfxUIElementPropertyOptionInvalidatesLayout = 4,
     /// <summary>
     /// Indicates that the property affects the layout.
     /// </summary>
    UFSfxUIElementPropertyOptionAffectsLayout = 8,
    /// <summary>
    /// Invalidates measure
    /// </summary>
    UFSfxUIElementPropertyOptionAffectsMeasure = 16,
    /// <summary>
    /// Invalidates arrange
    /// </summary>
    UFSfxUIElementPropertyOptionAffectsArrange = 32,
     /// <summary>
     /// Invalidates parent's measure
     /// </summary>
    UFSfxUIElementPropertyOptionAffectsParentMeasure = 64,
     /// <summary>
     /// Invalidates parent's arrange
     /// </summary>
    UFSfxUIElementPropertyOptionAffectsParentArrange = 128,
     /// <summary>
     /// Indicates that the property affects the display.
     /// </summary>
    UFSfxUIElementPropertyOptionAffectsDisplay = 256,
     /// <summary>
     /// Indicates that the property affects the theme.
     /// </summary>
    UFSfxUIElementPropertyOptionAffectsTheme = 512,
     /// <summary>
     /// The property supports cancelation.
     /// </summary>
    UFSfxUIElementPropertyOptionCancelable = UFSfxUIElementPropertyOptionAffectsTheme << 1    
} UFSfxUIElementPropertyOptions;

typedef enum {
    UFSfxValueUpdateResultNotUpdated, /**< There was no need of updating the property. */
    UFSfxValueUpdateResultUpdateChanged, /**< The property has been successfully updated and its value has changed. */
    UFSfxValueUpdateResultUpdatedNotChanged, /** <The property has been successfully updated but its value has not changed. */
    UFSfxValueUpdateResultCanceled
} UFSfxValueUpdateResult;


typedef enum {
    UFSfxValueSourceUnknown,
    UFSfxValueSourceDefaultValue, /**< Indicates that the default value is set */
    UFSfxValueSourceDefaultValueOveride, /**< An overriden default value, has higher priority than Default and Inherited source. */
    UFSfxValueSourceLocal /**< Value is set locally */,
    UFSfxValueSourceInherited
} UFSfxValueSource;

typedef enum {
    UFSfxValueResetNone = 0,
    UFSfxValueResetInherited = 1,
    UFSfxValueResetLocal = UFSfxValueResetInherited << 1,
    UFSfxValueResetDefaultValueOverride = UFSfxValueResetLocal << 1,    
    UFSfxValueResetAll = UFSfxValueResetInherited | UFSfxValueResetLocal | UFSfxValueResetDefaultValueOverride    
} UFSfxValueResetFlags;

typedef enum {
    UFSfxGridUnitAuto,
    UFSfxGridUnitPixel,
    UFSfxGridUnitStar
} UFSfxGridUnitType;