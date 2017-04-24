//
//  UMData.h
//  UMIOSControls
//
//  Created by zzyy on 13-7-16.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import "UMBindView.h"

typedef enum {
    kUmpDatafieldTypeDataTime, //时间+日期
    kUmpDatafieldTypeData,//日期
    kUmpDatafieldTypeTime,//时间
} UMDatafieldType;

@interface UMData : UMBindView<UITextFieldDelegate,UIAlertViewDelegate>
@property(nonatomic,strong) NSString    *value;
@property(nonatomic,strong) NSString    *format;
@property(nonatomic,strong) NSString    *min;
@property(nonatomic,strong) NSString    *max;
@property(nonatomic,assign) UMDatafieldType type;
@property(nonatomic,strong) NSString    *placeholder;

@property(nonatomic,strong) UIColor        *textColor;

//for dyview
- (void)setContentValue:(NSString*)strVal;
@end

@interface UMData (JSCallProperty)
@property(nonatomic,strong) NSString* color;
@property(nonatomic,strong) NSString* font_weight;
@property(nonatomic,strong) NSString* font_size;
@property(nonatomic,strong) NSString* font;
@property(nonatomic,strong) NSString* font_family;
@end