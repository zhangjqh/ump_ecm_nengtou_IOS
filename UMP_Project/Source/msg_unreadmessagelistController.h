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













@interface msg_unreadmessagelistController:UMBaseViewController

@property (nonatomic,assign) BOOL navBarHidden;
@property (nonatomic,weak) UIViewController* parentController;
@property (nonatomic,strong) UMContainer* currentContainer;
@property (nonatomic,strong) NSMutableDictionary *contextDictionary;
@property (nonatomic,readonly,strong) UMLayoutView*  viewObject;
@property (nonatomic,strong) UMLayoutView*	msg_MessageList;
- (UMLayoutView*)msg_MessageList BV_OBJC_METHOD_FAMILY_NONE;
@property (strong) UMLayoutView* viewPage0;
- (UMLayoutView*)viewPage0 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* navigatorbar1;
- (UMLayoutView*)navigatorbar1 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel1;
- (UMLayoutView*)panel1 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel2;
- (UMLayoutView*)panel2 BV_OBJC_METHOD_FAMILY_NONE;











@property (nonatomic,strong)UMEntityContext* context;
@property (nonatomic,strong)UMEntityContext* ctx;




@property (nonatomic,strong) UMView* button1;

@property (nonatomic,strong) UMView* label1;

@property (nonatomic,strong) UMView* button0;

@property (nonatomic,strong) UMView* togglebuttongroup0;

@property (nonatomic,strong) UMView* togglebutton0;

@property (nonatomic,strong) UMView* togglebutton1;

@property (nonatomic,strong) UMView* togglebutton2;

@property (nonatomic,strong) UMView* listview0;


- (void)dataBind:(NSString*)data;
- (id)initWithParentCtl:(UIViewController*)parentCtl;
//- (void)dispacherEventToWebview:(NSString*)params;
@end
