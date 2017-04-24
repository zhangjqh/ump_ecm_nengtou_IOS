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
































@interface info_imgController:UMBaseViewController

@property (nonatomic,assign) BOOL navBarHidden;
@property (nonatomic,weak) UIViewController* parentController;
@property (nonatomic,strong) UMContainer* currentContainer;
@property (nonatomic,strong) NSMutableDictionary *contextDictionary;
@property (nonatomic,readonly,strong) UMLayoutView*  viewObject;
@property (nonatomic,strong) UMLayoutView*	info_img;
- (UMLayoutView*)info_img BV_OBJC_METHOD_FAMILY_NONE;
@property (strong) UMLayoutView* viewPage0;
- (UMLayoutView*)viewPage0 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* navigatorbar0;
- (UMLayoutView*)navigatorbar0 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel0;
- (UMLayoutView*)panel0 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel808;
- (UMLayoutView*)panel808 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel0999;
- (UMLayoutView*)panel0999 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel5;
- (UMLayoutView*)panel5 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel2;
- (UMLayoutView*)panel2 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel3;
- (UMLayoutView*)panel3 BV_OBJC_METHOD_FAMILY_NONE;






@property (strong) UMLayoutView* panel1;
- (UMLayoutView*)panel1 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel6;
- (UMLayoutView*)panel6 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel7;
- (UMLayoutView*)panel7 BV_OBJC_METHOD_FAMILY_NONE;





@property (strong) UMLayoutView* flipper0_childWgt0;
- (UMLayoutView*)flipper0_childWgt0 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* flipper0_childWgt0_panel1;
- (UMLayoutView*)flipper0_childWgt0_panel1 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* flipper0_childWgt0_panel2;
- (UMLayoutView*)flipper0_childWgt0_panel2 BV_OBJC_METHOD_FAMILY_NONE;





@property (strong) UMLayoutView* panel4;
- (UMLayoutView*)panel4 BV_OBJC_METHOD_FAMILY_NONE;






@property (nonatomic,strong)UMEntityContext* context;
@property (nonatomic,strong)UMEntityContext* ctx;








@property (nonatomic,strong) UMView* button0;

@property (nonatomic,strong) UMView* label0;

@property (nonatomic,strong) UMView* label1;

@property (nonatomic,strong) UMView* label2;

@property (nonatomic,strong) UMView* label3;




@property (nonatomic,strong) UMView* image1;

@property (nonatomic,strong) UMView* label5;

@property (nonatomic,strong) UMView* image2;

@property (nonatomic,strong) UMView* flipper0;




@property (nonatomic,strong) UMView* flipper0_childWgt0_image0;

@property (nonatomic,strong) UMView* flipper0_childWgt0_label0;

@property (nonatomic,strong) UMView* image0;

@property (nonatomic,strong) UMView* label4;


@property (nonatomic,strong) UMView* button1;

@property (nonatomic,strong) UMView* button2;

@property (nonatomic,strong) UMView* textarea0;


- (void)dataBind:(NSString*)data;
- (id)initWithParentCtl:(UIViewController*)parentCtl;
//- (void)dispacherEventToWebview:(NSString*)params;
@end
