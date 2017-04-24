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









































@interface ecm_personinfoController:UMBaseViewController

@property (nonatomic,assign) BOOL navBarHidden;
@property (nonatomic,weak) UIViewController* parentController;
@property (nonatomic,strong) UMContainer* currentContainer;
@property (nonatomic,strong) NSMutableDictionary *contextDictionary;
@property (nonatomic,readonly,strong) UMLayoutView*  viewObject;
@property (nonatomic,strong) UMLayoutView*	PersonInfo;
- (UMLayoutView*)PersonInfo BV_OBJC_METHOD_FAMILY_NONE;
@property (strong) UMLayoutView* basePanel;
- (UMLayoutView*)basePanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* navPanel;
- (UMLayoutView*)navPanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* scrollPanel;
- (UMLayoutView*)scrollPanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* navigatorbar;
- (UMLayoutView*)navigatorbar BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* widget0;
- (UMLayoutView*)widget0 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* leftPanel;
- (UMLayoutView*)leftPanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* centerPanel;
- (UMLayoutView*)centerPanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* rightPanel;
- (UMLayoutView*)rightPanel BV_OBJC_METHOD_FAMILY_NONE;



@property (strong) UMLayoutView* widget0_addPanel;
- (UMLayoutView*)widget0_addPanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMFilletLayoutView* widget0_menuOutPanel;
- (UMFilletLayoutView*)widget0_menuOutPanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMFilletLayoutView* widget0_cancelPanel;
- (UMFilletLayoutView*)widget0_cancelPanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* widget0_phonePanel;
- (UMLayoutView*)widget0_phonePanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* widget0_menuInnerPanel;
- (UMLayoutView*)widget0_menuInnerPanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* widget0_msgPanel;
- (UMLayoutView*)widget0_msgPanel BV_OBJC_METHOD_FAMILY_NONE;




@property (strong) UMScrollView* Scrollview_mainPanel;
- (UMScrollView*)Scrollview_mainPanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* mainPanel;
- (UMLayoutView*)mainPanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* spaceOutPanel;
- (UMLayoutView*)spaceOutPanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* infoPanel;
- (UMLayoutView*)infoPanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* spaceOutPanel1;
- (UMLayoutView*)spaceOutPanel1 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* spaceInnerPanel;
- (UMLayoutView*)spaceInnerPanel BV_OBJC_METHOD_FAMILY_NONE;


@property (strong) UMLayoutView* infoInnerPanel;
- (UMLayoutView*)infoInnerPanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* mobilePanel;
- (UMLayoutView*)mobilePanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* workPanel;
- (UMLayoutView*)workPanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* homePanel;
- (UMLayoutView*)homePanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* emailPanel;
- (UMLayoutView*)emailPanel BV_OBJC_METHOD_FAMILY_NONE;









@property (strong) UMLayoutView* spaceInnerPanel1;
- (UMLayoutView*)spaceInnerPanel1 BV_OBJC_METHOD_FAMILY_NONE;



@property (nonatomic,strong)UMEntityContext* context;
@property (nonatomic,strong)UMEntityContext* ctx;








@property (nonatomic,strong) UMView* returnBtn;

@property (nonatomic,strong) UMView* navLabel;







@property (nonatomic,strong) UMView* widget0_newLabel;

@property (nonatomic,strong) UMView* widget0_templateLabel;

@property (nonatomic,strong) UMView* widget0_cancelLabel;







@property (nonatomic,strong) UMView* nameTxt;






@property (nonatomic,strong) UMView* mobileLabel;

@property (nonatomic,strong) UMView* mobileTxt;

@property (nonatomic,strong) UMView* workLabel;

@property (nonatomic,strong) UMView* workTxt;

@property (nonatomic,strong) UMView* homeLabel;

@property (nonatomic,strong) UMView* homeTxt;

@property (nonatomic,strong) UMView* emailLabel;

@property (nonatomic,strong) UMView* emailTxt;



- (void)dataBind:(NSString*)data;
- (id)initWithParentCtl:(UIViewController*)parentCtl;
//- (void)dispacherEventToWebview:(NSString*)params;
@end
