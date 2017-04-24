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




























































@interface scdu_repeatrullrefController:UMBaseViewController

@property (nonatomic,assign) BOOL navBarHidden;
@property (nonatomic,weak) UIViewController* parentController;
@property (nonatomic,strong) UMContainer* currentContainer;
@property (nonatomic,strong) NSMutableDictionary *contextDictionary;
@property (nonatomic,readonly,strong) UMLayoutView*  viewObject;
@property (nonatomic,strong) UMLayoutView*	repeatrullref;
- (UMLayoutView*)repeatrullref BV_OBJC_METHOD_FAMILY_NONE;
@property (strong) UMLayoutView* viewPage0;
- (UMLayoutView*)viewPage0 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* navigatorbar0;
- (UMLayoutView*)navigatorbar0 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel0;
- (UMLayoutView*)panel0 BV_OBJC_METHOD_FAMILY_NONE;




@property (strong) UMLayoutView* panel1;
- (UMLayoutView*)panel1 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel2;
- (UMLayoutView*)panel2 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel3;
- (UMLayoutView*)panel3 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel4;
- (UMLayoutView*)panel4 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel5;
- (UMLayoutView*)panel5 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel6;
- (UMLayoutView*)panel6 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel7;
- (UMLayoutView*)panel7 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel12;
- (UMLayoutView*)panel12 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel8;
- (UMLayoutView*)panel8 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel9;
- (UMLayoutView*)panel9 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel10;
- (UMLayoutView*)panel10 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel11;
- (UMLayoutView*)panel11 BV_OBJC_METHOD_FAMILY_NONE;












































@property (nonatomic,strong)UMEntityContext* context;
@property (nonatomic,strong)UMEntityContext* ctx;



@property (nonatomic,strong) UMView* button1;

@property (nonatomic,strong) UMView* label0;

@property (nonatomic,strong) UMView* button0;













@property (nonatomic,strong) UMView* label1;

@property (nonatomic,strong) UMView* label2;

@property (nonatomic,strong) UMView* switch0;

@property (nonatomic,strong) UMView* label3;

@property (nonatomic,strong) UMView* togglebuttongroup0;

@property (nonatomic,strong) UMView* togglebutton0;

@property (nonatomic,strong) UMView* togglebutton1;

@property (nonatomic,strong) UMView* togglebutton2;

@property (nonatomic,strong) UMView* togglebutton3;

@property (nonatomic,strong) UMView* label4;

@property (nonatomic,strong) UMView* togglebuttongroup1;

@property (nonatomic,strong) UMView* togglebutton4;

@property (nonatomic,strong) UMView* togglebutton5;

@property (nonatomic,strong) UMView* togglebutton6;

@property (nonatomic,strong) UMView* togglebutton7;

@property (nonatomic,strong) UMView* label5;

@property (nonatomic,strong) UMView* number1;

@property (nonatomic,strong) UMView* label13;

@property (nonatomic,strong) UMView* label6;

@property (nonatomic,strong) UMView* label15;

@property (nonatomic,strong) UMView* image1;

@property (nonatomic,strong) UMView* label7;

@property (nonatomic,strong) UMView* number3;

@property (nonatomic,strong) UMView* label16;

@property (nonatomic,strong) UMView* label8;

@property (nonatomic,strong) UMView* label14;

@property (nonatomic,strong) UMView* image0;

@property (nonatomic,strong) UMView* label17;

@property (nonatomic,strong) UMView* label18;

@property (nonatomic,strong) UMView* image2;

@property (nonatomic,strong) UMView* label9;

@property (nonatomic,strong) UMView* number2;

@property (nonatomic,strong) UMView* label10;

@property (nonatomic,strong) UMView* togglebuttongroup2;

@property (nonatomic,strong) UMView* togglebutton8;

@property (nonatomic,strong) UMView* togglebutton9;

@property (nonatomic,strong) UMView* togglebutton10;

@property (nonatomic,strong) UMView* label11;

@property (nonatomic,strong) UMView* number0;

@property (nonatomic,strong) UMView* label12;

@property (nonatomic,strong) UMView* dateinput0;


- (void)dataBind:(NSString*)data;
- (id)initWithParentCtl:(UIViewController*)parentCtl;
//- (void)dispacherEventToWebview:(NSString*)params;
@end
