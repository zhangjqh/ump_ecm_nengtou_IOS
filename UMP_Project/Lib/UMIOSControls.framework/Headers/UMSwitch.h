//
//  UMSwitch.h
//  UMIOSControls
//
//  Created by zzyy on 13-7-15.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import "UMBindView.h"

@interface UMSwitch : UMBindView

@property(nonatomic, assign) BOOL on;
@property(nonatomic, assign) NSString* text;

@property (nonatomic, strong) NSString *trackImageOn;
@property (nonatomic, strong) NSString *trackImageOff;
@property (nonatomic, strong) NSString *bgImage;
@property (nonatomic, strong) NSString *thumbImage;
@property (nonatomic, strong) NSString *bgMaskImage;
@property (nonatomic, strong) UIColor  *backgroundColor;
@end

@interface UMSwitch (JSCallProperty)

@property (nonatomic,strong) NSString* value;
@property (nonatomic,strong) NSString* switch_btn_icon;
@property (nonatomic,strong) NSString* switch_trackon_image;
@property (nonatomic,strong) NSString* switch_trackoff_image;

@end