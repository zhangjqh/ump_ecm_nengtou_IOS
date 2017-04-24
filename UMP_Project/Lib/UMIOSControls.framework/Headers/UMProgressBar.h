//
//  UMProgressBar.h
//  UMIOSControls
//
//  Created by zhangnan on 13-7-25.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import "UMBindView.h"

@interface UMProgressBar : UMBindView

@property(nonatomic,assign) int max;
@property(nonatomic,assign) int progress;
@property(nonatomic,assign) int secondaryProgress;


@property(nonatomic,assign) float value;
@property(nonatomic,assign) float secondaryValue;
@property(nonatomic, strong) UIColor* progressTintColor;
@property(nonatomic, strong) UIColor* trackTintColor;
@property(nonatomic, strong) UIColor* secondaryTrackTintColor;

- (void)setProgress:(int)progress animated:(BOOL)animated;
- (void)setSecondaryProgress:(int)secondaryProgress animated:(BOOL)animated;

- (void)setValue:(float)value animated:(BOOL)animated;
- (void)setSecondaryValue:(float)value animated:(BOOL)animated;

- (void)progressBarStartWithInterval:(float)interval repeats:(BOOL)repeats;
- (void)progressBarStop;

- (void)addTarget:(id)target actionForTimer:(SEL)action;

@end
