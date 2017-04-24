//
//  UMLabel.h
//  UMIOSControls
//
//  Created by zzyy on 13-7-15.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

//#import "UMIOSControls/UMIOSControls.h"
//#import "UMIOSControlsExtensionDelegate.h"
#import "UMLayoutBindView.h"
typedef NS_ENUM(NSInteger, UMFlipperType)
{
    UMFlipperStative,
    UMFlipperDynamic
};

@interface UMPageView: UMLayoutBindView//<UMIOSControlsExtensionDelegate>

@property (nonatomic,assign)BOOL pageIndicator;
@property (nonatomic,assign) UMFlipperType flippertype;
@property (nonatomic,strong) id umPageViewDataSource;
@property (nonatomic,strong) NSString * viewindex;
@property(nonatomic,strong)NSString *isScroll;//添加不可滑动的属性（就是不能用手指滑动只能通过属性来控制切换页面）

- (void)insertUMView:(UMView*)umView;

- (void)insertTemplate:(UMView*)umView;
/**
 *	@brief	点击事件target&action
 */
- (void) addNextFlipperTarget:(id)target action:(SEL)action;
- (void) addPreFlipperTarget:(id)target action:(SEL)action;

@end

@interface UMPageView (JSCallProperty)
//@property (nonatomic,strong) NSString* viewindex;
@end
