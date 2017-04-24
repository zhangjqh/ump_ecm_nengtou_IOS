//
//  WACTAttachmentListViewControll.h
//  CollaborationTask
//
//  Created by Lemon on 13-4-2.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WACTAttachmentListControll.h"
#import "WAAttachmentAdd.h"
#import "WACTAttachVO.h"
#import "TaskDef.h"

@interface CWACTAttachmentListViewControll : UIViewController
{
  UIButton *iBackBtn;
  UIView *iTitleArea;
  UILabel *iTitleLabel;
  UIButton *iAddAttachBtn;
  UITableView *iTableview;
  CWACTAttachmentListControll *iController;
  IBOutlet UIImageView *iEmptyImageView;
  IBOutlet UIImageView *iNavImageView;
  BOOL iIsEdit;
  NSString *iTitleStr;
}

@property (retain, nonatomic) IBOutlet UIButton *iBackBtn;
@property (retain, nonatomic) IBOutlet UIView *iTitleArea;
@property (retain, nonatomic) IBOutlet UILabel *iTitleLabel;
@property (retain, nonatomic) IBOutlet UIButton *iAddAttachBtn;
@property (retain, nonatomic) IBOutlet UITableView *iTableview;
@property (retain, nonatomic) CWACTAttachmentListControll *iController;
@property (assign, nonatomic) BOOL iIsEdit;
@property (copy , nonatomic) NSString *iTitleStr;
@property (nonatomic,strong) CWAAttachmentAdd *iAttachmentAdd;

- (id)init:(NSMutableArray *)aDataAry
    isEdit:(BOOL)aIsEdit
withDelegate:(id<MWACTAttachmentListDelegate>)aDelegate
withServiceCode:(NSString *)aServceCode
 withTitle:(NSString *)aTitle;

- (void)showEmptyView;

- (void)hideEmptyView;
@end
