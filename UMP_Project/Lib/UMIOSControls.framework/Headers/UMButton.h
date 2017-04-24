//
//  UMButton.h
//  UMIOSControls
//
//  Created by zzyy on 13-7-11.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import "UMBindView.h"
#import "UMButtonDefinition.h"

@interface UMButton : UMBindView
{
}

@property(nonatomic, assign) FIT_TYPE  fitType;
@property(nonatomic, strong) NSString   *contentValue;
@property(nonatomic, strong) NSString   *image;
@property(nonatomic, strong) UIColor    *textColor;


@property(nonatomic, strong) NSString   *pressed_image;
@property(nonatomic, strong) NSString   *background_image_dis;

@property(nonatomic, strong) UIColor    *background_color_dis;
@property(nonatomic, strong) UIColor    *pressed_color;

@property(nonatomic, strong) UIColor *font_pressed_color;


@end

@interface UMButton (JSCallProperty)
@property(nonatomic,strong) NSString* value;
@property(nonatomic,strong) NSString* color;
@property(nonatomic,strong) NSString* font_weight;
@property(nonatomic,strong) NSString* font_size;
@property(nonatomic,strong) NSString* font;
@property(nonatomic,strong) NSString* font_family;
@end