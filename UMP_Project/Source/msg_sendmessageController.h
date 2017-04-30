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


































@interface msg_sendmessageController:UMBaseViewController

@property (nonatomic,assign) BOOL navBarHidden;
@property (nonatomic,weak) UIViewController* parentController;
@property (nonatomic,strong) UMContainer* currentContainer;
@property (nonatomic,strong) NSMutableDictionary *contextDictionary;
@property (nonatomic,readonly,strong) UMLayoutView*  viewObject;
@property (nonatomic,strong) UMLayoutView*	msg_SendMessage;
- (UMLayoutView*)msg_SendMessage BV_OBJC_METHOD_FAMILY_NONE;
@property (strong) UMLayoutView* viewPage0;
- (UMLayoutView*)viewPage0 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* navigatorbar0;
- (UMLayoutView*)navigatorbar0 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel1;
- (UMLayoutView*)panel1 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel3;
- (UMLayoutView*)panel3 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel4;
- (UMLayoutView*)panel4 BV_OBJC_METHOD_FAMILY_NONE;





@property (strong) UMLayoutView* panel6;
- (UMLayoutView*)panel6 BV_OBJC_METHOD_FAMILY_NONE;




@property (strong) UMLayoutView* panel7;
- (UMLayoutView*)panel7 BV_OBJC_METHOD_FAMILY_NONE;



@property (strong) UMLayoutView* panel0;
- (UMLayoutView*)panel0 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel2;
- (UMLayoutView*)panel2 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel5;
- (UMLayoutView*)panel5 BV_OBJC_METHOD_FAMILY_NONE;


@property (strong) UMLayoutView* panelEmail;
- (UMLayoutView*)panelEmail BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panelIM;
- (UMLayoutView*)panelIM BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panelPush;
- (UMLayoutView*)panelPush BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panelCSSMS;
- (UMLayoutView*)panelCSSMS BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel_msgtitle;
- (UMLayoutView*)panel_msgtitle BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel_msgtitle1;
- (UMLayoutView*)panel_msgtitle1 BV_OBJC_METHOD_FAMILY_NONE;











@property (nonatomic,strong)UMEntityContext* context;
@property (nonatomic,strong)UMEntityContext* ctx;





@property (nonatomic,strong) UMView* btnCancle;

@property (nonatomic,strong) UMView* label0;

@property (nonatomic,strong) UMView* button1;

@property (nonatomic,strong) UMView* label1;


@property (nonatomic,strong) UMView* label4;

@property (nonatomic,strong) UMView* image1;

@property (nonatomic,strong) UMView* label3;


@property (nonatomic,strong) UMView* label5;

@property (nonatomic,strong) UMView* image0;




@property (nonatomic,strong) UMView* label2;





@property (nonatomic,strong) UMView* checkbox0;

@property (nonatomic,strong) UMView* labelEmail;

@property (nonatomic,strong) UMView* checkbox1;

@property (nonatomic,strong) UMView* labelIM;

@property (nonatomic,strong) UMView* checkbox2;

@property (nonatomic,strong) UMView* labelPush;

@property (nonatomic,strong) UMView* checkbox3;

@property (nonatomic,strong) UMView* labelCSSMS;

@property (nonatomic,strong) UMView* txtContent;

@property (nonatomic,strong) UMView* label_msgtitle_title;

@property (nonatomic,strong) UMView* txt_msgtitle;


- (void)dataBind:(NSString*)data;
- (id)initWithParentCtl:(UIViewController*)parentCtl;
//- (void)dispacherEventToWebview:(NSString*)params;
@end
