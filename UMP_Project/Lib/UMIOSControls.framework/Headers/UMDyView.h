//
//  UMLabel.h
//  UMIOSControls
//
//  Created by zzyy on 13-7-15.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import "UMLayoutBindView.h"

@interface UMDyView : UMLayoutBindView

@property(nonatomic,assign) NSString *contentValue;
@property(nonatomic,strong) UIViewController *dyViewController;

@property(nonatomic,assign) BOOL isEncoding;
@property(nonatomic,strong) NSString * startHtml;//启动页html
@end
