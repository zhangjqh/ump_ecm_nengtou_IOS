//
//  UMLabel.h
//  UMIOSControls
//
//  Created by zzyy on 13-7-15.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import "UMBindView.h"

@interface UMLabel : UMBindView

@property(nonatomic,assign) UITextAlignment textAlignment;  
@property(nonatomic,assign) UIColor        *textColor;  
@property(nonatomic,strong) NSString       *contentValue;
@property(nonatomic,assign) BOOL    bType;

- (void)setFitSizeWithWidth:(BOOL)bFit;

/**
 *	@brief	点击事件target&action
 */
//- (void) addTarget:(id)target action:(SEL)action;

@end


@interface UMLabel (JSCallProperty)
@property (nonatomic,strong) NSString* text;
@property (nonatomic,strong) NSString* value;
@property (nonatomic,strong) NSString* color;
@property (nonatomic,strong) NSString* type;
@property (nonatomic,strong) NSString* font_weight;
@property (nonatomic,strong) NSString* font_size;
@property (nonatomic,strong) NSString* font;
@property (nonatomic,strong) NSString* font_family;
@property (nonatomic,strong) NSString *line_height;//行间距，只使用于多行时
@end