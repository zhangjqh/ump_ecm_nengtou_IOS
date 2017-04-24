//
//  UMActionProcesser.h
//  UMIOSControls
//
//  Created by xiongyy on 14-8-26.
//  Copyright (c) 2014年 zhangnan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UMBaseViewController.h"
#import "XEventArgs.h"
#import "UMBindView.h"

@interface UMActionProcesser : NSObject

+(UMActionProcesser *)sharedInstance;
/*
 * action执行前预处理
 */
+(void)exec:(id<UMViewControl>)view actionId:(NSString *)actionid Args:(XEventArgs *)args;

@end
