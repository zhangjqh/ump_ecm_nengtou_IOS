//
//  RBGirdView.h
//  UMIOSControls
//
//  Created by zhangyuv on 13-12-5.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RBObject.h"

extern RBObject_Context st_RBObjectCtx;

@interface RBGirdView : RBObject
+ (void)runBindField;
+ (void)runOnDownRefresh;
@end
