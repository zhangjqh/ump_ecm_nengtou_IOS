//
//  UMSlider.h
//  UMIOSControls
//
//  Created by zhangyuv on 14-3-26.
//  Copyright (c) 2014年 zhangnan. All rights reserved.
//

#import "UMBindView.h"

@interface UMSlider : UMBindView

@property (nonatomic,assign) float valueOfSlider;
@property (nonatomic,assign) float fMax;
@property (nonatomic,assign) float fMin;
@property (nonatomic,assign) int iStep;

- (void)addTarget:(id)target actionForValueChange:(SEL)action;
- (void)addTarget:(id)target actionForTrackingStart:(SEL)action;
- (void)addTarget:(id)target actionForTrackingEnd:(SEL)action;

@end

@interface UMSlider (JSCallProperty)
@property (nonatomic,strong) NSString* value;
@property (nonatomic,strong) NSString* max;
@property (nonatomic,strong) NSString* min;
@property (nonatomic,strong) NSString* step;
@end