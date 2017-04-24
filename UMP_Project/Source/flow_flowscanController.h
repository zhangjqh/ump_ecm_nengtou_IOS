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












































@interface flow_flowscanController:UMBaseViewController

@property (nonatomic,assign) BOOL navBarHidden;
@property (nonatomic,weak) UIViewController* parentController;
@property (nonatomic,strong) UMContainer* currentContainer;
@property (nonatomic,strong) NSMutableDictionary *contextDictionary;
@property (nonatomic,readonly,strong) UMLayoutView*  viewObject;
@property (nonatomic,strong) UMLayoutView*	FlowScan;
- (UMLayoutView*)FlowScan BV_OBJC_METHOD_FAMILY_NONE;
@property (strong) UMLayoutView* basePanel;
- (UMLayoutView*)basePanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* navPanel;
- (UMLayoutView*)navPanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMScrollView* Scrollview_mainPanel;
- (UMScrollView*)Scrollview_mainPanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* navigatorbar;
- (UMLayoutView*)navigatorbar BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* leftPanel;
- (UMLayoutView*)leftPanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* centerPanel;
- (UMLayoutView*)centerPanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* rightPanel;
- (UMLayoutView*)rightPanel BV_OBJC_METHOD_FAMILY_NONE;



@property (strong) UMLayoutView* mainPanel;
- (UMLayoutView*)mainPanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* spaceOutPanel;
- (UMLayoutView*)spaceOutPanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* nullPanel;
- (UMLayoutView*)nullPanel BV_OBJC_METHOD_FAMILY_NONE;


@property (strong) UMLayoutView* spaceOutPanel1;
- (UMLayoutView*)spaceOutPanel1 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* enableOutPanel;
- (UMLayoutView*)enableOutPanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* noticeOutPanel;
- (UMLayoutView*)noticeOutPanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* noticePanel;
- (UMLayoutView*)noticePanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* spaceOutPanel2;
- (UMLayoutView*)spaceOutPanel2 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* spaceInnerPanel;
- (UMLayoutView*)spaceInnerPanel BV_OBJC_METHOD_FAMILY_NONE;


@property (strong) UMLayoutView* spaceInnerPanel1;
- (UMLayoutView*)spaceInnerPanel1 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* enableInnerPanel;
- (UMLayoutView*)enableInnerPanel BV_OBJC_METHOD_FAMILY_NONE;




@property (strong) UMLayoutView* noticeInnerPanel;
- (UMLayoutView*)noticeInnerPanel BV_OBJC_METHOD_FAMILY_NONE;


@property (strong) UMLayoutView* notice1Panel;
- (UMLayoutView*)notice1Panel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* notice2Panel;
- (UMLayoutView*)notice2Panel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* notice3Panel;
- (UMLayoutView*)notice3Panel BV_OBJC_METHOD_FAMILY_NONE;













@property (strong) UMLayoutView* spaceInnerPanel2;
- (UMLayoutView*)spaceInnerPanel2 BV_OBJC_METHOD_FAMILY_NONE;



@property (nonatomic,strong)UMEntityContext* context;
@property (nonatomic,strong)UMEntityContext* ctx;







@property (nonatomic,strong) UMView* returnBtn;

@property (nonatomic,strong) UMView* navLabel;




@property (nonatomic,strong) UMView* listView;







@property (nonatomic,strong) UMView* nullLabel;



@property (nonatomic,strong) UMView* enableLabel;

@property (nonatomic,strong) UMView* editableSpaceLabel;

@property (nonatomic,strong) UMView* switchBtn;


@property (nonatomic,strong) UMView* noticeLabel;




@property (nonatomic,strong) UMView* msgCheckbox;

@property (nonatomic,strong) UMView* msgLabel;

@property (nonatomic,strong) UMView* mailCheckbox;

@property (nonatomic,strong) UMView* mailLabel;

@property (nonatomic,strong) UMView* mobileCheckbox;

@property (nonatomic,strong) UMView* mobileLabel;

@property (nonatomic,strong) UMView* imCheckbox;

@property (nonatomic,strong) UMView* imLabel;

@property (nonatomic,strong) UMView* approveCheckbox;

@property (nonatomic,strong) UMView* approveLabel;

@property (nonatomic,strong) UMView* flowCheckbox;

@property (nonatomic,strong) UMView* flowLabel;



- (void)dataBind:(NSString*)data;
- (id)initWithParentCtl:(UIViewController*)parentCtl;
//- (void)dispacherEventToWebview:(NSString*)params;
@end
