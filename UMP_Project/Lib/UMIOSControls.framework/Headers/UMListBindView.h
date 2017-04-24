//
//  UMListBindView.h
//  UMIOSControls
//
//  Created by zzyy on 13-7-23.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import "UMLayoutBindView.h"

@interface UMListBindView : UMLayoutBindView

@property (nonatomic,assign) BOOL alternatingRow;
@property (nonatomic,assign) NSString *listview_oddrow_image; /*奇数行背景图*/
@property (nonatomic,assign) NSString *listview_evenrow_image; /*偶数行背景图*/

@property (nonatomic,assign) UIColor *listview_oddrow_color;  /*奇数行背景色*/
@property (nonatomic,assign) UIColor *listview_evenrow_color;  /*偶数行背景色*/

@property (nonatomic,assign) UIColor *listview_rowtouched_bgColor;  /*行点击背景色*/
@property (nonatomic,assign) NSString *listview_rowtouched_bgImage;  /*行点击背景图*/

@property(nonatomic,assign) int listview_divider_height; /*分割线高度*/
@property (nonatomic,strong) UIColor *listview_divider_color; /*分割线颜色*/
@property (nonatomic,strong) NSString *listview_divider_image; /*分割线背景图  设置了背景图，则分割线高和分割线颜色失效*/

@property (nonatomic,strong) NSString* status;
@end
