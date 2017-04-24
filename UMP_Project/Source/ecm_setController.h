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



















@interface ecm_setController:UMBaseViewController

@property (nonatomic,assign) BOOL navBarHidden;
@property (nonatomic,weak) UIViewController* parentController;
@property (nonatomic,strong) UMContainer* currentContainer;
@property (nonatomic,strong) NSMutableDictionary *contextDictionary;
@property (nonatomic,readonly,strong) UMLayoutView*  viewObject;
@property (nonatomic,strong) UMLayoutView*	Ecm_set;
@property (nonatomic,weak) UISwitch *iSwitch;
- (UMLayoutView*)Ecm_set BV_OBJC_METHOD_FAMILY_NONE;
@property (strong) UMLayoutView* viewPage0;
- (UMLayoutView*)viewPage0 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* navigatorbar0;
- (UMLayoutView*)navigatorbar0 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel0;
- (UMLayoutView*)panel0 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel14;
- (UMLayoutView*)panel14 BV_OBJC_METHOD_FAMILY_NONE;


@property (strong) UMLayoutView* panel1;
- (UMLayoutView*)panel1 BV_OBJC_METHOD_FAMILY_NONE;


@property (strong) UMLayoutView* panel2;
- (UMLayoutView*)panel2 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel5;
- (UMLayoutView*)panel5 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel4;
- (UMLayoutView*)panel4 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel6;
- (UMLayoutView*)panel6 BV_OBJC_METHOD_FAMILY_NONE;




@property (strong) UMLayoutView* widget0;
- (UMLayoutView*)widget0 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* widget0_toolbar0;
- (UMLayoutView*)widget0_toolbar0 BV_OBJC_METHOD_FAMILY_NONE;






@property (nonatomic,strong)UMEntityContext* context;
@property (nonatomic,strong)UMEntityContext* ctx;




@property (nonatomic,strong) UMView* navLabel;




@property (nonatomic,strong) UMView* button1;

@property (nonatomic,strong) UMView* image2;

@property (nonatomic,strong) UMView* button0;

@property (nonatomic,strong) UMView* image0;

@property (nonatomic,strong) UMView* button2;



@property (nonatomic,strong) UMView* widget0_imagebutton0;

@property (nonatomic,strong) UMView* widget0_imagebutton2;

@property (nonatomic,strong) UMView* widget0_imagebutton4;

@property (nonatomic,strong) UMView* widget0_imagebutton5;


- (void)dataBind:(NSString*)data;
- (id)initWithParentCtl:(UIViewController*)parentCtl;
//- (void)dispacherEventToWebview:(NSString*)params;
@end
