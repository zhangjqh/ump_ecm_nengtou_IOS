//
//  UFChartElement.h
//  UFCharts2
//
//  Created by 宋永强 on 11-3-13.
//  Copyright 2011 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
*
*/
@interface UFChartElement : NSObject {
    __unsafe_unretained UFChartElement *_owner;
    id _tag;
}


/**
 *	@brief	获取或设置与此图表元素关联的对象。
 */
@property(nonatomic, strong) id tag;

/**
* 
*/
@property(nonatomic, unsafe_unretained) UFChartElement *owner;

- (id)initWithOwner:(UFChartElement *)owner;

- (id)clone;

- (UFChartElement *)createObjectForClone;

- (void)assign:(UFChartElement *)obj;

@end
