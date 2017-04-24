//
//  UMMap.h
//  UMIOSControls
//
//  Created by zzyy on 13-7-18.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import "UMBindView.h"
#import "UMMapController.h"

@interface UMMap : UMBindView

@property(nonatomic,weak) id delegate;

@property(nonatomic,assign) UMMapController * controller;
@property (nonatomic,strong) NSString *track;//路径轨迹"[{\"latitude\":\"39.915\",\"longitude\":\"116.123\"},{\"latitude\":\"40.123\",\"longitude\":\"116.234\"},{\"latitude\":\"40.021\",\"longitude\":\"116.098\"}]"
@property (nonatomic,copy) NSString *trackcolor;
@property (nonatomic,copy) NSString *trackwidth;

- (void)changeContext:(int)index;
@end
