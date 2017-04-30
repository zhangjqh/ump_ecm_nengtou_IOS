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



























@interface msg_messagecontentdetailController:UMBaseViewController

@property (nonatomic,assign) BOOL navBarHidden;
@property (nonatomic,weak) UIViewController* parentController;
@property (nonatomic,strong) UMContainer* currentContainer;
@property (nonatomic,strong) NSMutableDictionary *contextDictionary;
@property (nonatomic,readonly,strong) UMLayoutView*  viewObject;
@property (nonatomic,strong) UMLayoutView*	msg_MessageContentDetail;
- (UMLayoutView*)msg_MessageContentDetail BV_OBJC_METHOD_FAMILY_NONE;
@property (strong) UMLayoutView* viewPage0;
- (UMLayoutView*)viewPage0 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel1;
- (UMLayoutView*)panel1 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* navigatorbar0;
- (UMLayoutView*)navigatorbar0 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel2;
- (UMLayoutView*)panel2 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel3;
- (UMLayoutView*)panel3 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel5;
- (UMLayoutView*)panel5 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panelAttachment;
- (UMLayoutView*)panelAttachment BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel6;
- (UMLayoutView*)panel6 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel7;
- (UMLayoutView*)panel7 BV_OBJC_METHOD_FAMILY_NONE;











@property (strong) UMLayoutView* panel0;
- (UMLayoutView*)panel0 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel4;
- (UMLayoutView*)panel4 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel8;
- (UMLayoutView*)panel8 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel_msgtitle;
- (UMLayoutView*)panel_msgtitle BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel_buttongroup;//按钮组
- (UMLayoutView*)panel_buttongroup BV_OBJC_METHOD_FAMILY_NONE;







@property (nonatomic,strong)UMEntityContext* context;
@property (nonatomic,strong)UMEntityContext* ctx;









@property (nonatomic,strong) UMView* button0;

@property (nonatomic,strong) UMView* label0;

@property (nonatomic,strong) UMView* button1;

@property (nonatomic,strong) UMView* label1;

@property (nonatomic,strong) UMView* label2;

@property (nonatomic,strong) UMView* label3;

@property (nonatomic,strong) UMView* label4;

@property (nonatomic,strong) UMView* label5;

@property (nonatomic,strong) UMView* label6;

@property (nonatomic,strong) UMView* label9;




@property (nonatomic,strong) UMView* label8;

@property (nonatomic,strong) UMView* image0;

@property (nonatomic,strong) UMView* label7;

@property (nonatomic,strong) UMView* label10;

@property (nonatomic,strong) UMView* label_msgtitle_title;
@property (nonatomic,strong) UMView* label_msgtitle;

@property (nonatomic,strong) UMView* button_reply;//回复
@property (nonatomic,strong) UMView* button_transter;//转发


- (void)dataBind:(NSString*)data;
- (id)initWithParentCtl:(UIViewController*)parentCtl;
//- (void)dispacherEventToWebview:(NSString*)params;
@end
