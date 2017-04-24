//
//  UMScrollView.h
//  UMIOSControls
//
//  Created by zhangnan on 13-4-23.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UMLayoutView.h"

#define UMScrollDirectionAuto       0
#define UMScrollDirectionAlways     1
#define UMScrollDirectionDisabled   2

@interface UMScrollView : UMLayoutView
@property(nonatomic,assign) int hScrollType;
@property(nonatomic,assign) int vScrollType;

@property(nonatomic,strong)NSString *scrollto;


- (void)addLayoutSubView:(UMView*) children;
//- (void)layoutWeight;
//- (void)layoutWrap;
@end
