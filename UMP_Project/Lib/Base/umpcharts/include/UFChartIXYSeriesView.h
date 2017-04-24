//
//  Created by 宋永强 on 11-6-2.
//
//  To change this template use File | Settings | File Templates.
//

#import "UFChartIAxis.h"

@protocol UFChartIXYSeriesView
- (id <UFChartIAxis>)getAxisX;

- (id <UFChartIAxis>)getAxisY;

- (BOOL)isStacked;

- (BOOL)isSideBySide;

- (BOOL)isOriginDependent;
@end