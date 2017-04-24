//
//  WACTAttachmentViewController.m
//  CollaborationTask
//
//  Created by Lemon on 13-5-9.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import "WACTAttachmentViewController.h"
#import "WAIosVersionAdaptor.h"
#import "TaskDef.h"

@interface CWACTAttachmentViewController ()

@end

@implementation CWACTAttachmentViewController

static NSString *WA_CT_NAV_BACK_NORMAL = @"btn_back.png";
//static NSString *WA_CT_NAV_BACK_TOUCH = @"nav_back_btn_touch";
#define WA_CTSIZE_SHADOWOFFSET CGSizeMake(0.00f, -1.0f)
#define WA_CTFRAME_BACKBTN CGRectMake(8, 7, 51, 30)
#define WA_CTFONT_LISTFROUPBTN [UIFont fontWithName:@"STHeitiSC-Medium" size:12.0f]

-(void)viewDidLoad
{
  [super viewDidLoad];
  [self.iBackBtn setImage:nil forState:UIControlStateNormal];
  [self.iBackBtn setImage:nil forState:UIControlStateHighlighted];
  [self.iBackBtn setBackgroundImage:[UIImage imageNamed:WA_CT_NAV_BACK_NORMAL] forState:UIControlStateNormal];

  
  [self.iBackBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
  [self.iBackBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
  [self.iBackBtn setTitleShadowColor:[UIColor blackColor] forState:UIControlStateNormal];
  [self.iBackBtn setTitleShadowColor:[UIColor blackColor] forState:UIControlStateNormal];
  [self.iBackBtn.titleLabel setShadowOffset:WA_CTSIZE_SHADOWOFFSET];
  [self.iBackBtn setFrame:WA_CTFRAME_BACKBTN];
  [self.iBackBtn.titleLabel setFont:WA_CTFONT_LISTFROUPBTN];
  [CWAIosVersionAdaptor adaptWithLeftNavBtn:self.iBackBtn];
  [navBar setBackgroundImage:[UIImage imageNamed:WA_TASK_NAV_BG] forBarMetrics:(UIBarMetricsDefault)];
}

@end
