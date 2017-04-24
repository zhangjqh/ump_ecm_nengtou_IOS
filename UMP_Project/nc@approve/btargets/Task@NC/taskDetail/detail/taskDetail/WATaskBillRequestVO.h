//
//  CWATaskBillRequestVO.h
//  TaskApproval
//
//  Created by dequan on 12-6-1.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "WABaseVO.h"

@interface CWATaskBillRequestVO : CWABaseVO

/*!
 @method
 @abstract 初始化方法
 @discussion 初始化vo对象
 @param aDic用来初始化vo的成员变量
 @result 返回CWATaskAcRequestVO的not owned对象
 */
- (id)initWithDic:(NSMutableDictionary *)aDic;
@end
