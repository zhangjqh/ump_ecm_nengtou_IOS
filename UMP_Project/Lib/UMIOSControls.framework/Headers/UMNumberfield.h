//
//  UMNumberfield.h
//  UMIOSControls
//
//  Created by zzyy on 13-7-16.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import "UMBindView.h"

@interface UMNumberfield : UMBindView<UITextFieldDelegate>

@property(nonatomic,strong) NSString    *value;
@property(nonatomic,assign) double         max;
@property(nonatomic,assign) double         min;
@property(nonatomic,assign) int         precision;
@property(nonatomic,strong) NSString * currency;//币种
@property(nonatomic,strong) NSString    *placeholder;

@property(nonatomic,strong) UIColor        *textColor;
//@property(nonatomic,strong) UIFont         *font;

//for dyview
- (void)setContentValue:(NSString*)strVal;

@end

@interface UMNumberfield (JSCallProperty)
@property (nonatomic,strong) NSString* font_family;
@property (nonatomic,strong) NSString* font_size;
@property (nonatomic,strong) NSString* font;

@end

