//
//  UMCheckBox.h
//  UMIOSControls
//
//  Created by zzyy on 13-7-15.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import "UMBindView.h"
#import "UMEntityContext.h"
@interface UMCheckBox : UMBindView

@property(nonatomic,strong) NSString* title;
@property(nonatomic,assign) BOOL isChecked;

@property(nonatomic,strong) NSString* check_on_image;
@property(nonatomic,strong) NSString* check_off_image;

@property(nonatomic,assign) UIColor        *textColor;
@property(nonatomic,strong) UIFont         *font;
@property(nonatomic,assign) BOOL        bIsPropertyBind;
@property(nonatomic,strong) NSString * font_size;
@property(nonatomic,strong) NSString * font_family;

@end

@interface UMCheckBox (JSCallProperty)
@property(nonatomic,strong) NSString *checked;
@end