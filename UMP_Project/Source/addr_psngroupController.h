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

















@interface addr_psngroupController:UMBaseViewController

@property (nonatomic,assign) BOOL navBarHidden;
@property (nonatomic,weak) UIViewController* parentController;
@property (nonatomic,strong) UMContainer* currentContainer;
@property (nonatomic,strong) NSMutableDictionary *contextDictionary;
@property (nonatomic,readonly,strong) UMLayoutView*  viewObject;
@property (nonatomic,strong) UMLayoutView*	psnGroup;
- (UMLayoutView*)psnGroup BV_OBJC_METHOD_FAMILY_NONE;
@property (strong) UMLayoutView* viewPage0;
- (UMLayoutView*)viewPage0 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* navigatorbar0;
- (UMLayoutView*)navigatorbar0 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel0;
- (UMLayoutView*)panel0 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel1;
- (UMLayoutView*)panel1 BV_OBJC_METHOD_FAMILY_NONE;







@property (strong) UMLayoutView* widget0;
- (UMLayoutView*)widget0 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* widget0_toolbar0;
- (UMLayoutView*)widget0_toolbar0 BV_OBJC_METHOD_FAMILY_NONE;







@property (nonatomic,strong)UMEntityContext* context;
@property (nonatomic,strong)UMEntityContext* ctx;




@property (nonatomic,strong) UMView* button3;

@property (nonatomic,strong) UMView* label3;

@property (nonatomic,strong) UMView* label2;

@property (nonatomic,strong) UMView* button2;

@property (nonatomic,strong) UMView* button1;

@property (nonatomic,strong) UMView* listview0;



@property (nonatomic,strong) UMView* widget0_imagebutton0;

@property (nonatomic,strong) UMView* widget0_imagebutton3;

@property (nonatomic,strong) UMView* widget0_imagebutton4;

@property (nonatomic,strong) UMView* widget0_imagebutton1;


- (void)dataBind:(NSString*)data;
- (id)initWithParentCtl:(UIViewController*)parentCtl;
//- (void)dispacherEventToWebview:(NSString*)params;
@end
