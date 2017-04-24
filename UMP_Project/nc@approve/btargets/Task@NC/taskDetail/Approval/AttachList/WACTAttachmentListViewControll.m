//
//  WACTAttachmentListViewControll.m
//  CollaborationTask
//
//  Created by Lemon on 13-4-2.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import "WACTAttachmentListViewControll.h"
#import "WAIosVersionAdaptor.h"
#import "WANoDataView.h"
#import "TaskDef.h"

@implementation CWACTAttachmentListViewControll
@synthesize iBackBtn;
@synthesize iTitleArea;
@synthesize iTitleLabel;
@synthesize iAddAttachBtn;
@synthesize iTableview;
@synthesize iController;
@synthesize iIsEdit;
@synthesize iTitleStr;
@synthesize iAttachmentAdd;


#define WA_YONYOU_RED_COLOE [UIColor colorWithRed:229.0f/255.0f green:0.0f/255.0f blue:17.0f/255.0f alpha:1]
#define WA_EQ_FONT16 [UIFont fontWithName:@"HiraKakuProN-W3" size:16.0]
#define WA_EQ_FONT14 [UIFont fontWithName:@"HiraKakuProN-W3" size:14.0]

static NSString *const TASK_HISTORY__NAV_BD_IMAGE_IOS7 = @"nav_bd_ios7.png";

- (void)viewDidUnload {
  [self setIBackBtn:nil];
  [self setITitleArea:nil];
  [self setITitleLabel:nil];
  [self setIAddAttachBtn:nil];
  [self setITableview:nil];
  [self setIController:nil];
  [super viewDidUnload];
}

- (id)     init:(NSMutableArray *)aDataAry
         isEdit:(BOOL)aIsEdit
   withDelegate:(id<MWACTAttachmentListDelegate>)aDelegate
withServiceCode:(NSString *)aServceCode
      withTitle:(NSString *)aTitle
{
  self = [super initWithNibName:@"WACTAttachmentListViewControll" bundle:nil];
  if (self)
  {
    iController = [[CWACTAttachmentListControll alloc]initWithViewController:self withDelegate:aDelegate];
    for (CWACTAttachVO *aVO in aDataAry) {
      CWACTAttachVO *thisVO = [[CWACTAttachVO alloc]init];
      [thisVO setSelfWithVO:aVO];
      [self.iController.iDataAry addObject:thisVO];
    }
    iController.iServiceCode = aServceCode;
    iController.iAmount = 10;
    iController.iSignalSize = 2048;
    iController.iTotleSize = 2048;
    self.iIsEdit = aIsEdit;

    self.iTitleStr = aTitle;
    
  }
  return self;
}

-(void)viewDidLoad
{
  [self.iTableview setDelegate:self.iController];
  [self.iTableview setDataSource:self.iController];
  [self.iTableview setEditing:self.iIsEdit];
  [self.iTableview setBackgroundColor:WA_TASK_COLOR_240];
  [CWAIosVersionAdaptor tableViewSeparatorInset:iTableview];
  [CWAIosVersionAdaptor adaptSeperatorLineWithTableView:iTableview];

  self.iTableview.allowsSelectionDuringEditing = YES;
  
  [self.iBackBtn addTarget:iController
                    action:@selector(iBackBtnAction:)
          forControlEvents:UIControlEventTouchUpInside];
//  [self.iBackBtn setBackgroundImage:[UIImage imageNamed:WA_TASK_NAV_BACK_BG]
//                           forState:UIControlStateNormal];
//  [self.iBackBtn setBackgroundImage:[UIImage imageNamed:WA_TASK_NAV_BACK_BG]
//                           forState:UIControlStateHighlighted];
  if (iIsEdit)
  {
    iAttachmentAdd = [[CWAAttachmentAdd alloc]initWithSuperViewController:self];
    iAttachmentAdd.iDelegate = iController;
    [self.iAddAttachBtn addTarget:iAttachmentAdd
                         action:@selector(triggerAttachAddEvent:)
                 forControlEvents:UIControlEventTouchUpInside];
  }
  else
  {
    [self.iAddAttachBtn removeFromSuperview];
  }
  if([self.iController.iDataAry count] + 1 == 0)
  {
    [self showEmptyView];
  }
  else
  {
    [self hideEmptyView];
  }
  iNavImageView.image = [UIImage imageNamed:WA_NEW_TASK_NAV_BG];
  self.iTitleLabel.textColor =  WACOLOR(31, 31, 31);
  self.iTitleLabel.shadowColor = nil;
  if(WA_CURENT_OS_V >= 7.0f)
  {
    self.iTitleLabel.font = WA_EQ_FONT16;
    [CWAIosVersionAdaptor adaptWithRightNavBtn:iAddAttachBtn];
    [iAddAttachBtn setBackgroundImage:[UIImage imageNamed:WA_TASK_NAV_NEW_BG]
                             forState:UIControlStateNormal];
    [iAddAttachBtn setBackgroundImage:nil
                             forState:UIControlStateHighlighted];
  }
  [CWAIosVersionAdaptor adaptWithLeftNavBtn:iBackBtn];
  iBackBtn.frame = CGRectMake(8.0f, iBackBtn.frame.origin.y, iBackBtn.frame.size.width, iBackBtn.frame.size.height);
  self.iTitleLabel.text = self.iTitleStr;
  iAddAttachBtn.hidden = YES;
}

- (void)viewDidAppear:(BOOL)animated
{
  [super viewDidAppear:animated];
  [self.iTableview deselectRowAtIndexPath:[self.iTableview indexPathForSelectedRow] animated:YES];
  
}

- (void)showEmptyView
{
  [self.iTableview setHidden:YES];
  [iTitleArea setHidden:YES];
    CWANoDataView  *cell = [[[NSBundle mainBundle] loadNibNamed:@"WANoDataView" owner:self options:nil] objectAtIndex:0];
    CGFloat y = 64;
    iEmptyImageView.frame =CGRectMake(0, y, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height-y);
    iEmptyImageView.image = nil;
    iEmptyImageView.backgroundColor = WACOLOR(240, 240, 240);
    [iEmptyImageView addSubview:cell];
  [iEmptyImageView setHidden:NO];
}

- (void)hideEmptyView
{
  [self.iTableview setHidden:NO];
   [iTitleArea setHidden:NO];
  [iEmptyImageView setHidden:YES];
}

@end
