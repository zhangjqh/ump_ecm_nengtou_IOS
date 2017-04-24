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























@interface task_mainviewpsnController:UMBaseViewController

@property (nonatomic,assign) BOOL navBarHidden;
@property (nonatomic,weak) UIViewController* parentController;
@property (nonatomic,strong) UMContainer* currentContainer;
@property (nonatomic,strong) NSMutableDictionary *contextDictionary;
@property (nonatomic,readonly,strong) UMLayoutView*  viewObject;
@property (nonatomic,strong) UMLayoutView*	mainviewpsn;
- (UMLayoutView*)mainviewpsn BV_OBJC_METHOD_FAMILY_NONE;
@property (strong) UMLayoutView* viewPage0;
- (UMLayoutView*)viewPage0 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel0;
- (UMLayoutView*)panel0 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel1;
- (UMLayoutView*)panel1 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel2;
- (UMLayoutView*)panel2 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* widget0;
- (UMLayoutView*)widget0 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* widget0_toplistwidget;
- (UMLayoutView*)widget0_toplistwidget BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* widget0_leftPanel;
- (UMLayoutView*)widget0_leftPanel BV_OBJC_METHOD_FAMILY_NONE;


@property (strong) UMLayoutView* widget0_rightPanel;
- (UMLayoutView*)widget0_rightPanel BV_OBJC_METHOD_FAMILY_NONE;








@property (strong) UMLayoutView* widget1;
- (UMLayoutView*)widget1 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* widget1_toolbar0;
- (UMLayoutView*)widget1_toolbar0 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* widget1_panel1;
- (UMLayoutView*)widget1_panel1 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* widget1_panel2;
- (UMLayoutView*)widget1_panel2 BV_OBJC_METHOD_FAMILY_NONE;





@property (nonatomic,strong)UMEntityContext* context;
@property (nonatomic,strong)UMEntityContext* ctx;







@property (nonatomic,strong) UMView* widget0_togglebuttongroup0;


@property (nonatomic,strong) UMView* widget0_button0;

@property (nonatomic,strong) UMView* widget0_togglebutton0;

@property (nonatomic,strong) UMView* widget0_togglebutton1;

@property (nonatomic,strong) UMView* widget0_togglebutton2;

@property (nonatomic,strong) UMView* widget0_togglebutton3;

@property (nonatomic,strong) UMView* widget0_addtask;

@property (nonatomic,strong) UMView* listview0;





@property (nonatomic,strong) UMView* widget1_imagebutton0;

@property (nonatomic,strong) UMView* widget1_imagebutton1;


- (void)dataBind:(NSString*)data;
- (id)initWithParentCtl:(UIViewController*)parentCtl;
//- (void)dispacherEventToWebview:(NSString*)params;
@end
