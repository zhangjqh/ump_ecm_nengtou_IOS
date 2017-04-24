//
//  Created by 宋永强 on 11-6-1.
//
//  To change this template use File | Settings | File Templates.
//

#import "UFChartIAxis.h"

@protocol UFChartIXYPlot <NSObject>
- (id <UFChartIAxis>)getAxisX;

- (id <UFChartIAxis>)getAxisY;

- (double)getMinXDistance;

- (void)computeAxisRange;
@end