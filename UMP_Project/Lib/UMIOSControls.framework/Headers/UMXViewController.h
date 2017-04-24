//
//  UMXViewController.h
//  UMIOSControls
//
//  Created by helly on 15/7/13.
//  Copyright (c) 2015年 yyuap. All rights reserved.
//

#import <UMIOSControls/UMIOSControls.h>

@interface UMXViewController : UMBaseViewController

@property (nonatomic,assign) BOOL navBarHidden;
@property (nonatomic,weak) UIViewController* parentController;
@property (nonatomic,strong) NSMutableDictionary *contextDictionary;


@property (strong) UMLayoutView* viewPage0;
@property(strong) UMDyView *dynamicdiv0;


@property (nonatomic,strong)UMEntityContext* context;
@property (nonatomic,strong)UMEntityContext* ctx;

@property(nonatomic,strong)NSString *htmlUrlStr;//加载webview的html地址


@property(nonatomic,assign)BOOL isDialog;

@property(nonatomic,strong)NSString * projectUrlStr;//工程地址
@property(nonatomic,strong)NSString * sourceFilepath;//资源文件路径
@property(nonatomic,strong)NSString * viewid;//页面地址



@end
