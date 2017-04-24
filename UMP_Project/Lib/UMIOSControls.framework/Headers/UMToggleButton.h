//
//  ToggleButton.h
//  UMIOSControls
//
//  Created by zhangnan on 13-7-29.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import "UMButton.h"
#import "UMButtonDefinition.h"
@class UMToggleButtonContent;

@protocol UMToggleButtonGroupDelegate <NSObject>

@required
- (void)toggleButtonClicked:(UMToggleButtonContent*)toggleButton;

@end


@interface UMToggleButton : UMButton

@property(nonatomic, assign) FIT_TYPE  fitType;
@property(nonatomic, copy) NSString *onTitle;
@property(nonatomic, copy) NSString *offTitle;
@property(nonatomic, assign) BOOL open;

@property(nonatomic, strong) NSString *value;
@property(nonatomic, strong) NSString   *background_image_off; /*off状态时的背景*/
@property(nonatomic, strong) NSString   *backgroundImagePathForTg;

@property(nonatomic, strong) UIColor *font_pressed_color;

@property(nonatomic,weak) id<UMToggleButtonGroupDelegate> delegate;

@property(nonatomic,strong) NSString* background_color_on;
@property(nonatomic,strong) NSString* background_color_off;
@property(nonatomic,strong) NSString* color;



@end

@interface UMToggleButton (JSCallProperty)
//for js call property
@property(nonatomic,assign)BOOL checked;
@property(nonatomic,strong) NSString* textOn;
@property(nonatomic,strong) NSString* textOff;
@property(nonatomic,strong) NSString* background_image_on;
@end
