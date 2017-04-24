//
//  UMXButton.h
//  UMIOSControls
//
//  Created by xiongyy on 14-9-10.
//  Copyright (c) 2014年 zhangnan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UMControlBase.h"
#import "UMView.h"
#import "XEventArgs.h"

@interface UMXButton : UMView

// 在基类里面判断是否是toolbar
@property (nonatomic,assign) BOOL isToolbar;

-(id)init;
@end
