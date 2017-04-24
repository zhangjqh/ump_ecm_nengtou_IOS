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





















@interface task_urgewinController:UMBaseViewController

@property (nonatomic,assign) BOOL navBarHidden;
@property (nonatomic,weak) UIViewController* parentController;
@property (nonatomic,strong) UMContainer* currentContainer;
@property (nonatomic,strong) NSMutableDictionary *contextDictionary;
@property (nonatomic,readonly,strong) UMLayoutView*  viewObject;
@property (nonatomic,strong) UMLayoutView*	urgewin;
- (UMLayoutView*)urgewin BV_OBJC_METHOD_FAMILY_NONE;
@property (strong) UMLayoutView* viewPage0;
- (UMLayoutView*)viewPage0 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* navigatorbar0;
- (UMLayoutView*)navigatorbar0 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* rounddiv0;
- (UMLayoutView*)rounddiv0 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* rounddiv1;
- (UMLayoutView*)rounddiv1 BV_OBJC_METHOD_FAMILY_NONE;





@property (strong) UMLayoutView* rounddiv2;
- (UMLayoutView*)rounddiv2 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* rounddiv3;
- (UMLayoutView*)rounddiv3 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* rounddiv4;
- (UMLayoutView*)rounddiv4 BV_OBJC_METHOD_FAMILY_NONE;












@property (nonatomic,strong)UMEntityContext* context;
@property (nonatomic,strong)UMEntityContext* ctx;




@property (nonatomic,strong) UMView* button0;

@property (nonatomic,strong) UMView* label0;

@property (nonatomic,strong) UMView* button1;

@property (nonatomic,strong) UMView* textarea0;




@property (nonatomic,strong) UMView* label1;

@property (nonatomic,strong) UMView* checkbox0;

@property (nonatomic,strong) UMView* label2;

@property (nonatomic,strong) UMView* checkbox1;

@property (nonatomic,strong) UMView* label3;

@property (nonatomic,strong) UMView* checkbox2;

@property (nonatomic,strong) UMView* label4;

@property (nonatomic,strong) UMView* checkbox3;

@property (nonatomic,strong) UMView* label5;


- (void)dataBind:(NSString*)data;
- (id)initWithParentCtl:(UIViewController*)parentCtl;
//- (void)dispacherEventToWebview:(NSString*)params;
@end
