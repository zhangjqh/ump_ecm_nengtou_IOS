//
//  Created by 宋永强 on 11-5-31.
//
//  To change this template use File | Settings | File Templates.
//


@class UFChartAxisMapping;
@class UFChartAxisLabel;
@class UFChartPlot;

/**
 *	@brief	表示图表的轴。
 */
@protocol UFChartIAxis <NSObject>


/**
 *	@brief	获取数据和轴的刻度映射。
 *
 *	@return	
 */
- (UFChartAxisMapping *)getAxisMapping;



/**
 *	@brief	获取轴的标签对象。
 *
 *	@return	标签对象。
 */
- (UFChartAxisLabel *)getLabel;


- (UFChartPlot *)getPlot;

@end