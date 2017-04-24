//
//  UMLabel.h
//  UMIOSControls
//
//  Created by zzyy on 13-7-15.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import "UMView.h"

@interface UMNaughty : UMView

@property (nonatomic,assign) int hideInterval;

@property (nonatomic,weak) id hidedTarget;

@property (nonatomic,copy) NSString *normalImagePath;

@property (nonatomic,copy) NSString *pressedImagePath;

@end
