//
//  UMControl.h
//  UMCore
//
//  Created by dingheng on 14-8-6.
//  Copyright (c) 2014年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UMView.h"
#import "UMControlBase.h"
#import "UIColor+UIColorHex.h"
#import "UMPListBaseController.h"

@interface UMControl : NSObject


/*
 *  @brief	初始化控件
 *
 *	@param 	name 控件名称
 *          params 属性数组
 *
 *  @return 控件对象
 */
+(UMView *)creatControl:(NSString *)name container:(id)controller params:(NSDictionary *)params;

@end
