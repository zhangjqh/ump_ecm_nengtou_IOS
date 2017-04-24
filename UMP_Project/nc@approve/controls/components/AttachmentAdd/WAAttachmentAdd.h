//
//  WAAttachmentBtn.h
//  CollaborationTask
//
//  Created by Lemon on 13-4-3.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AssetsLibrary/AssetsLibrary.h>
#import "WAAttachmentAddDef.h"
#import "WAAccordionViewController.h"
#import "WAAttachmentVO.h"
#import <UMIOSControls/GTMBase64.h>
#import "WAAttachmentController.h"
#import "WAAttachInitVO.h"
#import "WAImgCompressUtil.h"

@protocol MWAPhotoSelectDelegate <UIImagePickerControllerDelegate>
@required
- (void)imagePickerDidDismiss;
@optional
- (void)didSelectImage:(CWAAttachmentVO *)aVO;
- (void)didSelectDocument:(CWAAccordionViewController *)aAccordionViewController
         selectedFilePath:(NSString *)aFilePath;
@end

@interface CWAAttachmentAdd : NSObject<UIActionSheetDelegate,MWAFileSelectedDelegate,UINavigationControllerDelegate, UIImagePickerControllerDelegate>
{
  UIViewController *iSuperViewController;
  NSString *iFilePath;
  float iCompression;
  CWAAttachInitVO *iInitVO;
  BOOL isCompress;
}
@property (retain, nonatomic) UIViewController *iSuperViewController;
@property (assign, nonatomic) id<MWAPhotoSelectDelegate> iDelegate;
@property (copy  , nonatomic) NSString *iFilePath;
@property (assign, nonatomic) float iCompression;
@property (retain, nonatomic) CWAAttachInitVO *iInitVO;
@property (assign, nonatomic) BOOL isCompress;

- (id)initWithSuperViewController:(UIViewController *)aSuperViewController;
- (id)initWithSuperViewController:(UIViewController *)aSuperViewController
                       withInitVO:(CWAAttachInitVO *)aInitVO
                     withFilePath:(NSString *)aFilePath;

- (void)triggerAttachAddEvent:(id)sender;

- (void) actionSheet:(UIActionSheet *)actionSheet
clickedButtonAtIndex:(NSInteger)buttonIndex;

+ (BOOL)   setBtnAction:(UIButton *)aBtn
           withDelegate:(id<MWAPhotoSelectDelegate>)aDelegate
withSuperViewController:(UIViewController *)aSuperView;


-(void)compressImage:(UIImage *)aImage;
@end
