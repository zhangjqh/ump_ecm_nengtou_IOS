//
//  WACTAttachmentListControll.h
//  CollaborationTask
//
//  Created by Lemon on 13-4-2.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WAAttachmentAdd.h"
#import "WACTDownloadCell.h"
#import "WACTAttachmentController.h"

@class CWACTAttachmentListViewControll;

@protocol MWACTAttachmentListDelegate <NSObject>

-(void)writeBackAttachList:(NSMutableArray *)aAry;

@end

@interface CWACTAttachmentListControll : NSObject<UITableViewDataSource,UITableViewDelegate,MWAPhotoSelectDelegate,UINavigationControllerDelegate, UIImagePickerControllerDelegate>
{
  CWACTAttachmentListViewControll *iViewController;
  NSMutableArray *iDataAry;
  CWACTAttachmentController *iAttachController;
  NSString *iServiceCode;
  float iSignalSize;
  float iTotleSize;
  NSInteger iAmount;
}

@property (nonatomic, retain) CWACTAttachmentListViewControll *iViewController;
@property (retain, nonatomic) NSMutableArray *iDataAry;
@property (assign, nonatomic) id<MWACTAttachmentListDelegate> iDelegate;
@property (retain, nonatomic) CWAAttachmentController *iAttachController;
@property (copy, nonatomic) NSString *iServiceCode;
@property (assign, nonatomic) float iSignalSize;
@property (assign, nonatomic) float iTotleSize;
@property (assign, nonatomic) NSInteger iAmount;

- (void)iBackBtnAction:(id)sender;

- (void)iAddAttachBtnAction:(id)sender;

-(id)initWithViewController:(CWACTAttachmentListViewControll *)aViewController withDelegate:(id<MWACTAttachmentListDelegate>)aDelegate;

@end
