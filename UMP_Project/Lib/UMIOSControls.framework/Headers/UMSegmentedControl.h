//
//  UMSegementControlView.h
//  UMIOSControls
//
//
//
//  Created by dingheng on 13-5-6.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import <UIKit/UIKit.h>

@class UMSegmentedControl;

typedef enum : NSUInteger
{
    UMSegmentedControlModeSticky,    //默认状态segement
    UMSegmentedControlModeButton     //button数组
} UMSegmentedControlMode;

@protocol UMSegmentedControlDelegate <NSObject>

@optional
- (void)segmentedViewController:(UMSegmentedControl *)segmentedControl touchedAtIndex:(NSUInteger)index;

@end

@interface UMSegmentedControl : UIView

@property (nonatomic, assign) id<UMSegmentedControlDelegate> delegate;

/**
 */
@property (nonatomic, assign) NSInteger OnePageCount;//页面button数量
/**
 */
@property (nonatomic, strong) NSMutableArray *sourceArray;//button数组

/**
 */
@property (nonatomic, strong) UIImage *backgroundImage;//背景图片

/**
 */
@property (nonatomic, strong) UIImage *separatorImage;//间隔线

/**
 */
@property (nonatomic, assign) UIEdgeInsets contentEdgeInsets;//边界偏移

/**
 */
@property (nonatomic, assign) NSInteger selectedIndex;//选中number

/**
 */
@property (nonatomic, assign) UMSegmentedControlMode segmentedControlMode;//模式

@end

