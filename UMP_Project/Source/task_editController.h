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













































































@interface task_editController:UMBaseViewController

@property (nonatomic,assign) BOOL navBarHidden;
@property (nonatomic,weak) UIViewController* parentController;
@property (nonatomic,strong) UMContainer* currentContainer;
@property (nonatomic,strong) NSMutableDictionary *contextDictionary;
@property (nonatomic,readonly,strong) UMLayoutView*  viewObject;
@property (nonatomic,strong) UMLayoutView*	task_edit;
- (UMLayoutView*)task_edit BV_OBJC_METHOD_FAMILY_NONE;
@property (strong) UMLayoutView* viewPage0;
- (UMLayoutView*)viewPage0 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* navigatorbar0;
- (UMLayoutView*)navigatorbar0 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel0;
- (UMLayoutView*)panel0 BV_OBJC_METHOD_FAMILY_NONE;




@property (strong) UMScrollView* Scrollview_panel11;
- (UMScrollView*)Scrollview_panel11 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel11;
- (UMLayoutView*)panel11 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* rounddiv0;
- (UMLayoutView*)rounddiv0 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* rounddiv1;
- (UMLayoutView*)rounddiv1 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* rounddiv2;
- (UMLayoutView*)rounddiv2 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* rounddiv3;
- (UMLayoutView*)rounddiv3 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* rounddiv5;
- (UMLayoutView*)rounddiv5 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* rounddiv4;
- (UMLayoutView*)rounddiv4 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* rounddiv6;
- (UMLayoutView*)rounddiv6 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* rounddiv7;
- (UMLayoutView*)rounddiv7 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* rounddiv8;
- (UMLayoutView*)rounddiv8 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* rounddiv9;
- (UMLayoutView*)rounddiv9 BV_OBJC_METHOD_FAMILY_NONE;











@property (strong) UMLayoutView* rounddiv16;
- (UMLayoutView*)rounddiv16 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* rounddiv17;
- (UMLayoutView*)rounddiv17 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* rounddiv18;
- (UMLayoutView*)rounddiv18 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* rounddiv19;
- (UMLayoutView*)rounddiv19 BV_OBJC_METHOD_FAMILY_NONE;














@property (strong) UMLayoutView* rounddiv12;
- (UMLayoutView*)rounddiv12 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* rounddiv13;
- (UMLayoutView*)rounddiv13 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* rounddiv14;
- (UMLayoutView*)rounddiv14 BV_OBJC_METHOD_FAMILY_NONE;










@property (strong) UMLayoutView* rounddiv10;
- (UMLayoutView*)rounddiv10 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* rounddiv11;
- (UMLayoutView*)rounddiv11 BV_OBJC_METHOD_FAMILY_NONE;


@property (strong) UMLayoutView* panel1;
- (UMLayoutView*)panel1 BV_OBJC_METHOD_FAMILY_NONE;





@property (strong) UMLayoutView* panel2;
- (UMLayoutView*)panel2 BV_OBJC_METHOD_FAMILY_NONE;




@property (strong) UMLayoutView* rounddiv55;
- (UMLayoutView*)rounddiv55 BV_OBJC_METHOD_FAMILY_NONE;



@property (strong) UMLayoutView* rounddiv44;
- (UMLayoutView*)rounddiv44 BV_OBJC_METHOD_FAMILY_NONE;






@property (nonatomic,strong)UMEntityContext* context;
@property (nonatomic,strong)UMEntityContext* ctx;



@property (nonatomic,strong) UMView* button0;

@property (nonatomic,strong) UMView* label0;

@property (nonatomic,strong) UMView* button1;













@property (nonatomic,strong) UMView* label11;

@property (nonatomic,strong) UMView* dateinput0;

@property (nonatomic,strong) UMView* label12;

@property (nonatomic,strong) UMView* dateinput1;

@property (nonatomic,strong) UMView* label13;

@property (nonatomic,strong) UMView* textbox5;

@property (nonatomic,strong) UMView* label17;

@property (nonatomic,strong) UMView* label14;

@property (nonatomic,strong) UMView* label18;

@property (nonatomic,strong) UMView* button4;





@property (nonatomic,strong) UMView* label7;

@property (nonatomic,strong) UMView* textbox2;

@property (nonatomic,strong) UMView* label8;

@property (nonatomic,strong) UMView* textbox3;

@property (nonatomic,strong) UMView* label9;

@property (nonatomic,strong) UMView* togglebuttongroup0;

@property (nonatomic,strong) UMView* togglebutton0;

@property (nonatomic,strong) UMView* togglebutton1;

@property (nonatomic,strong) UMView* togglebutton2;

@property (nonatomic,strong) UMView* label15;

@property (nonatomic,strong) UMView* label10;

@property (nonatomic,strong) UMView* label16;

@property (nonatomic,strong) UMView* button3;




@property (nonatomic,strong) UMView* label6;

@property (nonatomic,strong) UMView* checkbox0;

@property (nonatomic,strong) UMView* label222;

@property (nonatomic,strong) UMView* checkbox1;

@property (nonatomic,strong) UMView* label223;

@property (nonatomic,strong) UMView* checkbox2;

@property (nonatomic,strong) UMView* label224;

@property (nonatomic,strong) UMView* checkbox3;

@property (nonatomic,strong) UMView* label225;



@property (nonatomic,strong) UMView* label4;


@property (nonatomic,strong) UMView* label26;

@property (nonatomic,strong) UMView* label25;

@property (nonatomic,strong) UMView* image0;

@property (nonatomic,strong) UMView* label5;


@property (nonatomic,strong) UMView* label28;

@property (nonatomic,strong) UMView* label27;

@property (nonatomic,strong) UMView* image1;


@property (nonatomic,strong) UMView* label3;

@property (nonatomic,strong) UMView* textbox12;


@property (nonatomic,strong) UMView* label1;

@property (nonatomic,strong) UMView* label2;

@property (nonatomic,strong) UMView* button2;


- (void)dataBind:(NSString*)data;
- (id)initWithParentCtl:(UIViewController*)parentCtl;
//- (void)dispacherEventToWebview:(NSString*)params;
@end
