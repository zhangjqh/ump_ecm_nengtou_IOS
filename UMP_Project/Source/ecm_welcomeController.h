//
//  viewController.h
//
//
//  Created by zhangyuv.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//
#include <UMIOSControls/RoyalBlue.h>
#import <UMIOSControls/UMIOSControls.h>
//#import "UMContainer.h"
#import "AppDelegate.h"








@interface ecm_welcomeController:UMBaseViewController

@property (nonatomic,assign) BOOL navBarHidden;
@property (nonatomic,weak) UIViewController* parentController;
@property (nonatomic,strong) UMContainer* currentContainer;
@property (nonatomic,strong) NSMutableDictionary *contextDictionary;
@property (nonatomic,readonly,strong) UMLayoutView*  viewObject;
@property (nonatomic,strong) UMLayoutView*	Ecm_Welcome;
- (UMLayoutView*)Ecm_Welcome BV_OBJC_METHOD_FAMILY_NONE;
@property (strong) UMLayoutView* viewPage0;
- (UMLayoutView*)viewPage0 BV_OBJC_METHOD_FAMILY_NONE;


@property (strong) UMLayoutView* flipper0_childWgt0;
- (UMLayoutView*)flipper0_childWgt0 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* flipper0_childWgt1;
- (UMLayoutView*)flipper0_childWgt1 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* flipper0_childWgt2;
- (UMLayoutView*)flipper0_childWgt2 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* flipper0_childWgt2_panel1;
- (UMLayoutView*)flipper0_childWgt2_panel1 BV_OBJC_METHOD_FAMILY_NONE;




@property (nonatomic,strong)UMEntityContext* context;
@property (nonatomic,strong)UMEntityContext* ctx;

@property (nonatomic,strong) UMView* flipper0;





@property (nonatomic,strong) UMView* flipper0_childWgt2_button0;


- (void)dataBind:(NSString*)data;
- (id)initWithParentCtl:(UIViewController*)parentCtl;
//- (void)dispacherEventToWebview:(NSString*)params;
@end
