//
//  NewFeedbackViewController.h
//  FeedbackSdk
//
//  Created by mac on 14-9-10.
//  Copyright (c) 2014年 yonyou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FeedbackRootViewController.h"

@interface NewFeedbackViewController : FeedbackRootViewController

@property (nonatomic, assign) BOOL isFirstQustion;              // 判断是否问题列表为空
@property (nonatomic, assign) BOOL isFromShake;                 // 判断是否摇一摇弹出该界面

@end
