/**
 * @brief UFChartSeries 的数据点显示在轴上的标签样式。
 */
typedef enum {
	UFChartArgumentArgument, /**< 显示 UFChartSeriesPoint 中定义的 Argument。 */
	UFChartArgumentNumberic, /**< 显示 UFChartSeriesPoint 在 UFChartSeries 中的索引 */
	UFChartArgumentDateTime /**< 暂时没有支持该特性，预留 */
} UFChartArgumentType;


/**
 *	@brief	UFChartSeriesPoint 的数值在标签中的显示格式。
 */
typedef enum {
	UFChartNumericOptionsFormatGeneral, /**< 通用格式 */
	UFChartNumericOptionsFormatCurrency, /**< 货币格式，自动加上当前区域的货币符号 */
	UFChartNumericOptionsFormatPercent, /**< 百分比 */
	UFChartNumericOptionsFormatNumber /**< 数值 */
} UFChartNumericOptionsFormat;


/**
 *	@brief	UFChartControl 支持的图表显示类型。
 */
typedef enum {
    UFChartSeriesViewNone = -1,
	UFChartSeriesViewBar, /**< 柱状图 */
	UFChartSeriesViewStackedBar, /**< 堆叠柱状图 */
	UFChartSeriesViewPoint, /**< 散点图 */
	UFChartSeriesViewLine, /**< 折线图 */
	UFChartSeriesViewArea, /**< 面积图 */
	UFChartSeriesViewStackedArea, /**< 堆叠面积图 */
	UFChartSeriesViewBubble, /**< 气泡图 */
	UFChartSeriesViewPie, /**< 饼图 */
	UFChartSeriesViewRadarPoint, /**< 雷达散点图 */
	UFChartSeriesViewRadarLine, /**< 雷达折线图 */
	UFChartSeriesViewRadarArea, /**< 雷达面积图 */
	UFChartSeriesViewFunnel, /**< 漏斗图 */
	UFChartSeriesViewPyramid /**< 金字塔图 */
} UFChartSeriesViewType;


/**
 *	@brief	UFChartBubbleSeriesView 视图数据点标签文本使用的值的来源。
 */
typedef enum {
	UFChartBubbleLabelValueToDisplayWeight, /**< 点的权重 */
	UFChartBubbleLabelValueToDisplayValue, /**< 点的值 */
	UFChartBubbleLabelValueToDisplayValueAndWeight /**< 点的值和权重 */
} UFChartBubbleLabelValueToDisplay;



/**
 *	@brief	可旋转文本的对齐方向。
 */
typedef enum {
	UFChartNearTextPositionLeft, /**< 左 */
	UFChartNearTextPositionTop, /**< 上 */
	UFChartNearTextPositionRight, /**< 右 */
	UFChartNearTextPositionBottom /**< 下 */
} UFChartNearTextPosition;


/**
 *	@brief	可旋转文本以哪个位置为锚点进行旋转。
 */
typedef enum {
	UFChartTextRotationLeftTop, /**< 左上 */
	UFChartTextRotationCenterTop, /**< 上中 */
	UFChartTextRotationRightTop, /**< 右上 */
	UFChartTextRotationLeftCenter, /**< 左中 */
	UFChartTextRotationCenterCenter, /**< 中心 */
	UFChartTextRotationRightCenter, /**< 右中 */
	UFChartTextRotationLeftBottom, /**< 左下 */
	UFChartTextRotationCenterBottom, /**< 中下 */
	UFChartTextRotationRightBottom /**< 右下 */
} UFChartTextRotation;



/**
 *	@brief	坐标轴的对齐方向。
 */
typedef enum {
	UFChartAxisPositionLeft, /**< 左 */
	UFChartAxisPositionTop, /**< 上 */
	UFChartAxisPositionRight, /**< 右 */
	UFChartAxisPositionBottom /**< 下 */
} UFChartAxisPosition;


typedef enum {
    UFChartAxisLabelLayoutDefault
} UFChartAxisLabelLayoutMode;

/**
 *	@brief	坐标轴标签位置。
 */
typedef enum {
	UFChartAxisLabelPositionOutside, /**< 轴靠外 */
	UFChartAxisLabelPositionCenter, /**< 轴中心 */
	UFChartAxisLabelPositionInside /**< 轴靠里 */
} UFChartAxisLabelPosition;


typedef enum {
    UFChartAxisTickMarkNone,
    UFChartAxisTickMarkInner,
    UFChartAxisTickMarkOuter
} UFChartAxisTickMarkMode;

/**
 *	@brief	图表轴的标签文本显示模式
 */
typedef enum {
	UFChartAxisLabelNone, /**< 不显示 */
	UFChartAxisLabelRangeLabels, /**< 显示数据值 */
	UFChartAxisLabelSeriesLabels, /**< 显示数据点的 argument */
	UFChartAxisLabelHybrid /**< 以指定的间隔量来显示标签 */
} UFChartAxisLabelMode;


//typedef enum {
//    UFChartAxisTitleOrientationCenter,
//    UFChartAxisTitleOrientationLeft,
//    UFChartAxisTitleOrientationRight
//} UFChartAxisTitleOrientation;

/**
* graphics enums
*/

/**
 *	@brief	UFChartFunnelSeriesView 的显示风格。
 */
typedef enum {
	UFChartFunnelStyleYIsHeight, /**< 数值转换为高度。 */
	UFChartFunnelStyleYIsWidth /**< 数值转换为宽度。 */
} UFChartFunnelStyle;


/**
 *	@brief	UFChartAnimatedPieSeriesView 的指示器显示位置。
 */
typedef enum {
	UFChartAnimatedPiePointerBottom = 0, /**< 下 */
	UFChartAnimatedPiePointerLeft = 1, /**< 左 */
	UFChartAnimatedPiePointerTop = 2, /**< 上 */
	UFChartAnimatedPiePointerRight = 3 /**< 右 */
} UFChartAnimatedPiePointerLocation;


/**
 *	@brief	UFChartSeriesBarView 在使用动画效果时，所显示的动画方向。
 */
typedef enum {
    UFChartBarAnimatedDirectionTopBottom, /**< 从上到下 */
    UFChartBarAnimatedDirectionBottomTop, /**< 从下到上 */
    UFChartBarAnimatedDirectionLeftRight, /**< 从左到右 */
    UFChartBarAnimatedDirectionRightLeft /**< 从右到左 */
} UFChartBarAnimatedDirection;
