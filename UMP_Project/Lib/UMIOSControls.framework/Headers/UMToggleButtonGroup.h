//
//  UMToggleButtonGroup.h
//  UMIOSControls
//
//  Created by zhangnan on 13-7-30.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import "UMBindView.h"
#import "UMToggleButton.h"
#define kHorizontal @"horizontal"
#define kVertical   @"vertical"


@interface UMToggleButtonGroup : UMBindView<UMToggleButtonGroupDelegate>

@property(nonatomic) NSString *orientation;
@property(nonatomic) int toggleButtonSelectedIndex;
//@property(nonatomic) BOOL bMultiple;
@property(nonatomic) BOOL multiple;

- (id)init;

- (void)setToggleButtonItem:(UMToggleButton*)toggleButton;

- (UMToggleButton*)checkStatus:(UMToggleButtonContent*)toggleButton;

//- (void)addTarget:(id)target action:(SEL)action;

@end

@interface UMToggleButtonGroup (JSCallProperty)
@property(nonatomic,strong) NSString* selectedvalue;
//@property(nonatomic,strong) NSString* multiple;
@end