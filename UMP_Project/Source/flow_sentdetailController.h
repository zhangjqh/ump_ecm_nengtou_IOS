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



















































@interface flow_sentdetailController:UMBaseViewController

@property (nonatomic,assign) BOOL navBarHidden;
@property (nonatomic,weak) UIViewController* parentController;
@property (nonatomic,strong) UMContainer* currentContainer;
@property (nonatomic,strong) NSMutableDictionary *contextDictionary;
@property (nonatomic,readonly,strong) UMLayoutView*  viewObject;
@property (nonatomic,strong) UMLayoutView*	SentDetail;
- (UMLayoutView*)SentDetail BV_OBJC_METHOD_FAMILY_NONE;
@property (strong) UMLayoutView* basePanel;
- (UMLayoutView*)basePanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* navPanel;
- (UMLayoutView*)navPanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* scrollPanel;
- (UMLayoutView*)scrollPanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* navigatorbar;
- (UMLayoutView*)navigatorbar BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* leftPanel;
- (UMLayoutView*)leftPanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* centerPanel;
- (UMLayoutView*)centerPanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* rightPanel;
- (UMLayoutView*)rightPanel BV_OBJC_METHOD_FAMILY_NONE;




@property (strong) UMScrollView* Scrollview_mainPanel;
- (UMScrollView*)Scrollview_mainPanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* mainPanel;
- (UMLayoutView*)mainPanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* spaceOutPanel1;
- (UMLayoutView*)spaceOutPanel1 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* detailPanel;
- (UMLayoutView*)detailPanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* spaceOutPanel2;
- (UMLayoutView*)spaceOutPanel2 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* contentPanel;
- (UMLayoutView*)contentPanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* spaceOutPanel3;
- (UMLayoutView*)spaceOutPanel3 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* historyPanel;
- (UMLayoutView*)historyPanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* spaceOutPanel4;
- (UMLayoutView*)spaceOutPanel4 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* attachmentPanel;
- (UMLayoutView*)attachmentPanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* spaceOutPanel5;
- (UMLayoutView*)spaceOutPanel5 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* spaceInnerPanel1;
- (UMLayoutView*)spaceInnerPanel1 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* detailInnerPanel;
- (UMLayoutView*)detailInnerPanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* titlePanel;
- (UMLayoutView*)titlePanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* priorityPanel;
- (UMLayoutView*)priorityPanel BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* dataPanel;
- (UMLayoutView*)dataPanel BV_OBJC_METHOD_FAMILY_NONE;









@property (strong) UMLayoutView* spaceInnerPanel2;
- (UMLayoutView*)spaceInnerPanel2 BV_OBJC_METHOD_FAMILY_NONE;





@property (strong) UMLayoutView* spaceInnerPanel3;
- (UMLayoutView*)spaceInnerPanel3 BV_OBJC_METHOD_FAMILY_NONE;





@property (strong) UMLayoutView* spaceInnerPanel4;
- (UMLayoutView*)spaceInnerPanel4 BV_OBJC_METHOD_FAMILY_NONE;





@property (strong) UMLayoutView* spaceInnerPanel5;
- (UMLayoutView*)spaceInnerPanel5 BV_OBJC_METHOD_FAMILY_NONE;



@property (nonatomic,strong)UMEntityContext* context;
@property (nonatomic,strong)UMEntityContext* ctx;







@property (nonatomic,strong) UMView* returnBtn;

@property (nonatomic,strong) UMView* navLabel;

@property (nonatomic,strong) UMView* forwardBtn;

















@property (nonatomic,strong) UMView* titleTxt;

@property (nonatomic,strong) UMView* priorityLabel;

@property (nonatomic,strong) UMView* prioritySpaceLabel;

@property (nonatomic,strong) UMView* priorityBtnGroup;

@property (nonatomic,strong) UMView* priorityBtn;

@property (nonatomic,strong) UMView* dataLabel;

@property (nonatomic,strong) UMView* dateSpaceLabel;

@property (nonatomic,strong) UMView* dataTxt;


@property (nonatomic,strong) UMView* contentLabel;

@property (nonatomic,strong) UMView* contentInfoLabel;

@property (nonatomic,strong) UMView* contentSpaceLabel;

@property (nonatomic,strong) UMView* contentImg;


@property (nonatomic,strong) UMView* historyLabel;

@property (nonatomic,strong) UMView* historyInfoLabel;

@property (nonatomic,strong) UMView* historySpaceLabel;

@property (nonatomic,strong) UMView* historyImg;


@property (nonatomic,strong) UMView* attachmentLabel;

@property (nonatomic,strong) UMView* attachmentInfoLabel;

@property (nonatomic,strong) UMView* attachmentSpaceLabel;

@property (nonatomic,strong) UMView* attachmentImg;



- (void)dataBind:(NSString*)data;
- (id)initWithParentCtl:(UIViewController*)parentCtl;
//- (void)dispacherEventToWebview:(NSString*)params;
@end
