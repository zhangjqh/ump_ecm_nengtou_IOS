//
//  UMTextImageButton.h
//  UMIOSControls
//
//  Created by zhangyuv on 14-3-25.
//  Copyright (c) 2014年 zhangnan. All rights reserved.
//

#import "UMImageButton.h"

@interface UMTextImageButton : UMImageButton

@property (nonatomic,assign) int icon_width;
@property (nonatomic,assign) int icon_height;
@property (nonatomic,strong) NSString* icon_background_image;
@property (nonatomic,strong) UIColor* icon_background;
@property (nonatomic,strong) NSString* icon_pressed_image;
@property (nonatomic,strong) UIColor* icon_pressed_color;

//按下字体颜色
@property (nonatomic,strong) UIColor* font_pressed_color;
@property (nonatomic,strong) UIColor* font_color;
@property(nonatomic,strong)NSString *font_size;

@property(nonatomic,strong)NSString *font;
@property (nonatomic,assign) int icon_text_spacing;

@property(nonatomic,strong)NSString *value;

@property(nonatomic,strong)NSString * color;

@property(nonatomic,strong)NSString * backgroud_image;
//下0，上1，左2，右3
@property (nonatomic,assign) int text_align;

@property (nonatomic,strong) NSString *iconImage;

@property (nonatomic,strong) NSString* istogglebutton;

@end
