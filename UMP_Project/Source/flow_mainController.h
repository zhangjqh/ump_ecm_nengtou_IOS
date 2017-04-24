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


























@interface flow_mainController:UMBaseViewController

@property (nonatomic,assign) BOOL navBarHidden;
@property (nonatomic,weak) UIViewController* parentController;
@property (nonatomic,strong) UMContainer* currentContainer;
@property (nonatomic,strong) NSMutableDictionary *contextDictionary;
@property (nonatomic,readonly,strong) UMLayoutView*  viewObject;
@property (nonatomic,strong) UMLayoutView*	Main;
- (UMLayoutView*)Main BV_OBJC_METHOD_FAMILY_NONE;
@property (strong) UMLayoutView* basePanel;
- (UMLayoutView*)basePanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* navPanel;
- (UMLayoutView*)navPanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* mainPanel;
- (UMLayoutView*)mainPanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* toolPanel;
- (UMLayoutView*)toolPanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* navigatorbar;
- (UMLayoutView*)navigatorbar BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* leftPanel;
- (UMLayoutView*)leftPanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* centerPanel;
- (UMLayoutView*)centerPanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* rightPanel;
- (UMLayoutView*)rightPanel BV_OBJC_METHOD_FAMILY_NONE;





@property (strong) UMLayoutView* toolbar;
- (UMLayoutView*)toolbar BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* wgtType;
- (UMLayoutView*)wgtType BV_OBJC_METHOD_FAMILY_NONE;



@property (strong) UMLayoutView* wgtType_addPanel;
- (UMLayoutView*)wgtType_addPanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMFilletLayoutView* wgtType_menuOutPanel;
- (UMFilletLayoutView*)wgtType_menuOutPanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMFilletLayoutView* wgtType_cancelPanel;
- (UMFilletLayoutView*)wgtType_cancelPanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* wgtType_newPanel;
- (UMLayoutView*)wgtType_newPanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* wgtType_menuInnerPanel;
- (UMLayoutView*)wgtType_menuInnerPanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* wgtType_templatePanel;
- (UMLayoutView*)wgtType_templatePanel BV_OBJC_METHOD_FAMILY_NONE;






@property (nonatomic,strong)UMEntityContext* context;
@property (nonatomic,strong)UMEntityContext* ctx;








@property (nonatomic,strong) UMView* homeBtn;

@property (nonatomic,strong) UMView* navLabel;

@property (nonatomic,strong) UMView* addBtn;

@property (nonatomic,strong) UMView* listView;



@property (nonatomic,strong) UMView* draftImgBtn;

@property (nonatomic,strong) UMView* sentImgBtn;







@property (nonatomic,strong) UMView* wgtType_newLabel;

@property (nonatomic,strong) UMView* wgtType_templateLabel;

@property (nonatomic,strong) UMView* wgtType_cancelLabel;


- (void)dataBind:(NSString*)data;
- (id)initWithParentCtl:(UIViewController*)parentCtl;
//- (void)dispacherEventToWebview:(NSString*)params;
@end
