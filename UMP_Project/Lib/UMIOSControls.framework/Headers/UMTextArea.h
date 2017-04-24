//
//  UMTextArea.h
//  UMIOSControls
//
//  Created by zzyy on 13-7-19.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import "UMBindView.h"

@interface UMTextArea : UMBindView
/**
 *	@brief	获取或者设置提示语。
 */
@property (nonatomic, strong) NSString *placeholder;

@property (nonatomic, weak) NSString *contentValue;

@property(nonatomic,weak) UIColor        *textColor;

@end

@interface UMTextArea (JSCallProperty)
@property (nonatomic,strong) NSString* value;
@property (nonatomic,strong) NSString* font_weight;
@property (nonatomic,strong) NSString* font_size;
@property (nonatomic,strong) NSString* font;
@property (nonatomic,strong) NSString* font_family;
@end