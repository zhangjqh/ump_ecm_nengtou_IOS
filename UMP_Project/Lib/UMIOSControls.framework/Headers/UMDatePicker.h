//
//  UMDatePicker.h
//  UMIOSControls
//
//  Created by zzyy on 13-7-16.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import "UMView.h"

@interface UMDatePicker : UMView

@property(nonatomic,strong)NSString *format;
@property(nonatomic,strong)NSString *max;
@property(nonatomic,strong)NSString *min;
@property(nonatomic,strong)NSString *year;
@property(nonatomic,strong)NSString *month;
@property(nonatomic,strong)NSString *day;

@property(nonatomic,strong)NSString * value;

- (void)addTarget:(id)target action:(SEL)action;
@end
