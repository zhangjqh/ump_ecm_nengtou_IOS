//
//  UMRadioBox.h
//  UMIOSControls
//
//  Created by zzyy on 13-7-15.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import "UMView.h"
@class UMRadioBoxContent;

@protocol RadioBoxDelegate <NSObject>

@required
-(void)radioBoxClicked:(UMRadioBoxContent*)radioBox;

@end

@interface UMRadioBox : UMView

@property(nonatomic,strong) NSString* title;
@property(nonatomic,strong) NSString* value;
@property(nonatomic,assign) BOOL isChecked;
@property(nonatomic,assign) id<RadioBoxDelegate> delegate;

@property(nonatomic,assign) UIColor        *textColor;
@property(nonatomic,assign) UIFont         *font;

//-(void)addTarget:(id)target action:(SEL)action;
@end

@interface UMRadioBox (JSCallProperty)
@property(nonatomic,assign) BOOL checked;
@end
