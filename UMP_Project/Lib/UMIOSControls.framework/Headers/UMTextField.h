//
//  UMTextField.h
//  UMIOSControls
//
//  Created by zzyy on 13-7-15.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import "UMBindView.h"

@interface UMTextField : UMBindView<UITextFieldDelegate>
{
    __weak UIColor        *_textColor;
}

@property(nonatomic,strong) NSString    *contentValue;
@property(nonatomic,strong) NSString    *text;
@property(nonatomic,strong) NSString    *placeholder;
@property(nonatomic,assign) int         maxlength;//文本最大长度
@property(nonatomic,assign) BOOL        secure;

@property(nonatomic,weak) UIColor        *textColor;
//@property(nonatomic,weak) UIFont         *font;

@end

@interface UMTextField (JSCallProperty)
@property (nonatomic,strong) NSString *value;
@property(nonatomic,strong) NSString* color;
@property(nonatomic,strong) NSString* font_weight;
@property(nonatomic,strong) NSString* font_size;
@property(nonatomic,strong) NSString* font;
@property(nonatomic,strong) NSString* font_family;
@end
