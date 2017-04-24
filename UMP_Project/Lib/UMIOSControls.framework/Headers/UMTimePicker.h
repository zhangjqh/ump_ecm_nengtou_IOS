//
//  UMTimePicker.h
//  UMIOSControls
//
//  Created by zzyy on 13-7-16.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import "UMView.h"

@interface UMTimePicker : UMView
// 之前都是assign 现在改成strong
@property(nonatomic,strong)NSString *format;
@property(nonatomic,strong)NSString *max;
@property(nonatomic,strong)NSString *min;
@property(nonatomic,strong)NSString *hour;
@property(nonatomic,strong)NSString *minute;
@property(nonatomic,strong)NSString *second;

@property(nonatomic,strong)NSString *value;

- (void)addTarget:(id)target action:(SEL)action;
@end
