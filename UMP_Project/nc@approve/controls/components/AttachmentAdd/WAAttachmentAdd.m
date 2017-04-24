//
//  WAAttachmentBtn.m
//  CollaborationTask
//
//  Created by Lemon on 13-4-3.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import "WAAttachmentAdd.h"

@implementation CWAAttachmentAdd
@synthesize iDelegate;
@synthesize iFilePath;
@synthesize iCompression;
@synthesize iSuperViewController;
@synthesize iInitVO;
@synthesize isCompress;

+ (BOOL)   setBtnAction:(UIButton *)aBtn
           withDelegate:(id<MWAPhotoSelectDelegate>)aDelegate
withSuperViewController:(UIViewController *)aSuperView
{
  if (aBtn && aDelegate && aSuperView)
  {
    CWAAttachmentAdd *addController = [[CWAAttachmentAdd alloc]
                                       initWithSuperViewController:aSuperView];
    addController.iDelegate = aDelegate;
    [aBtn addTarget:addController
             action:@selector(triggerAttachAddEvent:)
   forControlEvents:UIControlEventTouchUpInside];
    return YES;
  }
  return NO;
}

#pragma mark -
#pragma mark 2种init方法
- (id)initWithSuperViewController:(UIViewController *)aSuperViewController
{
  self = [super init];
  if (self)
  {
    iSuperViewController = aSuperViewController;
    iInitVO = [[CWAAttachInitVO alloc]init];
    self.iCompression = 1.0f;
    self.isCompress = YES;
  }
  return self;
}

- (id)initWithSuperViewController:(UIViewController *)aSuperViewController
                       withInitVO:(CWAAttachInitVO *)aInitVO
                     withFilePath:(NSString *)aFilePath
{
  self = [super init];
  if (self)
  {
    iSuperViewController = aSuperViewController;
    self.iInitVO = aInitVO;
    self.iFilePath = aFilePath;
    self.iCompression = 1.0f;
    self.isCompress = YES;
  }
  return self;
}

#pragma mark -
#pragma mark 触发事件方法！
- (void)triggerAttachAddEvent:(id)sender
{
  if ([self.iInitVO.iRankAry count] < 1)
  {
    return;
  }
  else if ([self.iInitVO.iRankAry count] == 1)
  {
    [self actionSheet:nil clickedButtonAtIndex:0];
  }
  else
  {
    UIActionSheet *aActionSheet = [[UIActionSheet alloc]initWithTitle:NSLocalizedStringFromTable(@"GetAttachment", @"commponent_AttachmentAdd", nil)
                                                             delegate:self
                                                    cancelButtonTitle:nil
                                               destructiveButtonTitle:nil
                                                    otherButtonTitles:nil];
    for (int i=0; i<[self.iInitVO.iRankAry count]; i++)
    {
      int eventType = [[self.iInitVO.iRankAry objectAtIndex:i] intValue];
      if (eventType == EWAPhotoEvent)
      {
        [aActionSheet addButtonWithTitle:NSLocalizedStringFromTable(@"ChoosePhotos", @"commponent_AttachmentAdd", nil)];
      }
      else if (eventType == EWACameraEvent)
      {
        [aActionSheet addButtonWithTitle:NSLocalizedStringFromTable(@"ChooseCamera", @"commponent_AttachmentAdd", nil)];
      }
      else if (eventType == EWADocumentEvent)
      {
        [aActionSheet addButtonWithTitle:NSLocalizedStringFromTable(@"ChooseLocalFiles", @"commponent_AttachmentAdd", nil)];
      }
      else
      {
        ;
      }
    }
    [aActionSheet addButtonWithTitle:NSLocalizedStringFromTable(@"ActionSheetCancelBtn", @"commponent_AttachmentAdd", nil)];
    aActionSheet.cancelButtonIndex = aActionSheet.numberOfButtons-1;
    if (iSuperViewController && iSuperViewController.view)
    {
      [aActionSheet showInView:self.iSuperViewController.view];
    }
  }
}

#pragma mark -
#pragma mark UIActionSheetDelegate代理
- (void) actionSheet:(UIActionSheet *)actionSheet
clickedButtonAtIndex:(NSInteger)buttonIndex
{
  int eventType =EWADefaultEvent;
  if (self.iInitVO && buttonIndex<[self.iInitVO.iRankAry count])
  {
    eventType = [[self.iInitVO.iRankAry objectAtIndex:buttonIndex] intValue];
  }
  
  if (eventType == EWAPhotoEvent)
  {
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypePhotoLibrary])
    {
      UIImagePickerController *picker = [[UIImagePickerController alloc] init];
      picker.delegate = self;
      picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
      [self.iSuperViewController presentViewController:picker animated:YES completion:nil];
    }
    else
    {
      UIAlertView *aAlert = [[UIAlertView alloc]initWithTitle:NSLocalizedStringFromTable(@"cantPhoto", @"commponent_AttachmentAdd", nil)
                                                      message:nil
                                                     delegate:nil
                                            cancelButtonTitle:NSLocalizedStringFromTable(@"ok", @"commponent_AttachmentAdd", nil)
                                            otherButtonTitles:nil];
      [aAlert show];
    }
  }
  else if (eventType == EWADocumentEvent)
  {
    CWAAccordionViewController *accordionViewController = [[CWAAccordionViewController alloc]
                                                           initWithNibName:@"WAAccordionViewController"
                                                           WithNavCtrl: nil
                                                           WithBundle:nil
                                                           WithRootPath:self.iFilePath
                                                           WithTitle:NSLocalizedStringFromTable(@"ChooseAttachments", @"commponent_AttachmentAdd", nil)
                                                           withLeftBtnTitle:NSLocalizedStringFromTable(@"Return", @"commponent_AttachmentAdd", nil)
                                                           ];
    accordionViewController.iSelectedDelegate = self;
    [self.iSuperViewController presentViewController:accordionViewController animated:YES completion:nil];
  }
  else if (eventType == EWACameraEvent)
  {
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
    {
      UIImagePickerController *picker = [[UIImagePickerController alloc] init];
      picker.delegate = self;
      picker.sourceType = UIImagePickerControllerSourceTypeCamera;
      [self.iSuperViewController presentViewController:picker animated:YES completion:nil];
    }
    else
    {
      UIAlertView *aAlert = [[UIAlertView alloc]initWithTitle:NSLocalizedStringFromTable(@"cantPhoto", @"commponent_AttachmentAdd", nil)
                                                      message:nil
                                                     delegate:nil
                                            cancelButtonTitle:NSLocalizedStringFromTable(@"ok", @"commponent_AttachmentAdd", nil)
                                            otherButtonTitles:nil];
      [aAlert show];
    }
  }
  else
  {
    
  }
}

#pragma mark -
#pragma mark MWAFileSelectedDelegate代理
- (void)WAAccordionViewController:(CWAAccordionViewController *)aAccordionViewController
                 selectedFilePath:(NSString *)aFilePath
{
  if (iDelegate && [iDelegate respondsToSelector:@selector(didSelectDocument:selectedFilePath:)])
  {
    //未完成。
    [iDelegate didSelectDocument:aAccordionViewController selectedFilePath:aFilePath];
  }
}

#pragma mark -
#pragma mark UIImagePickerControllerDelegate代理
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
  NSURL *aUrl = [info objectForKey:UIImagePickerControllerReferenceURL];
  if (aUrl)
  {
    //from photo
    ALAssetsLibrary *aAsset = [[ALAssetsLibrary alloc]init];
    [aAsset assetForURL:aUrl
            resultBlock:
     ^(ALAsset *asset)
     {       
       [picker dismissViewControllerAnimated:YES completion:^{
         
       }];
       if (iDelegate && [iDelegate respondsToSelector:@selector(imagePickerDidDismiss)])
       {
         [iDelegate imagePickerDidDismiss];
       }
       
       CWAAttachmentVO *aVO = [[CWAAttachmentVO alloc]init];
       aVO.userInfo = nil;
       
       NSString *fileName = [[asset defaultRepresentation] filename];
       NSArray *aAry = [fileName componentsSeparatedByString:@"."];
       if ([aAry count]>1)
       {
         aVO.iFileName = [aAry objectAtIndex:0]?[aAry objectAtIndex:0]:@"";
         aVO.iFileType = [aAry lastObject]?[aAry lastObject]:@"";
       }
       else if( [aAry count]>0 )
       {
         aVO.iFileName = [aAry objectAtIndex:0]?[aAry objectAtIndex:0]:@"";
       }

       UIImage *aImage = [info objectForKey:UIImagePickerControllerOriginalImage];

       if ( self.isCompress )
       {
         aVO.userInfo = [NSDictionary dictionaryWithObjectsAndKeys:aImage,WA_ATTACHUSERINFO_KEY, nil];
         
         [NSThread detachNewThreadSelector:(@selector(compressImage:)) toTarget:self withObject:aVO];
       }
       else
       {
         NSData *imageData = UIImageJPEGRepresentation(aImage, self.iCompression);
         
         NSString *imageStr = [GTMBase64 stringByEncodingData:imageData];
         aVO.iFile = imageStr?imageStr:@"";
         
         double aImgSize = [imageData length]/WA_ATTACHADDRATE_KB;
         aVO.iFileSize = [NSString stringWithFormat:@"%.2f",aImgSize];
         
         if (iDelegate && [iDelegate respondsToSelector:@selector(didSelectImage:)])
         {
           [iDelegate didSelectImage:aVO];
         }
       }
     }
           failureBlock:
     ^(NSError *error)
     {
       // 获取图片失败
       UIAlertView *alert = [[UIAlertView alloc]initWithTitle:NSLocalizedStringFromTable(@"FailToGetPhotos", @"commponent_AttachmentAdd", nil)
                                                      message:nil
                                                     delegate:nil
                                            cancelButtonTitle:NSLocalizedStringFromTable(@"ok",@"commponent_AttachmentAdd",nil)
                                            otherButtonTitles:nil];
       [alert show];
     }];
  }
  else
  {
    //fram camera
    [picker dismissViewControllerAnimated:YES completion:^{
      
    }];
    if (iDelegate && [iDelegate respondsToSelector:@selector(imagePickerDidDismiss)])
    {
      [iDelegate imagePickerDidDismiss];
    }
    
    CWAAttachmentVO *aVO = [[CWAAttachmentVO alloc]init];
    aVO.userInfo = nil;
    
    aVO.iFileType = @"jpg";
    UIImage *aImage = [info objectForKey:UIImagePickerControllerOriginalImage];
    
    if (isCompress)
    {
      aVO.userInfo = [NSDictionary dictionaryWithObjectsAndKeys:aImage,WA_ATTACHUSERINFO_KEY, nil];
      
      [NSThread detachNewThreadSelector:(@selector(compressImage:)) toTarget:self withObject:aVO];
    }
    else
    {
      NSData *imageData = UIImageJPEGRepresentation(aImage, self.iCompression);
      
      NSString *imageStr = [GTMBase64 stringByEncodingData:imageData];
      aVO.iFile = imageStr?imageStr:@"";
      
      double aFileSize = [imageData length]/WA_ATTACHADDRATE_KB;
      aVO.iFileSize = [NSString stringWithFormat:@"%.2f",aFileSize];
      
      if (iDelegate && [iDelegate respondsToSelector:@selector(didSelectImage:)])
      {
        [iDelegate didSelectImage:aVO];
      }
    }
  }
}


-(void)compressImage:(CWAAttachmentVO *)aVO
{
  UIImage *aImage = (UIImage *)[aVO.userInfo objectForKey:WA_ATTACHUSERINFO_KEY];
  
  NSData *imageData = [CWAImgCompressUtil compressImageWAStyle:aImage];
  
  NSString *imageStr = [GTMBase64 stringByEncodingData:imageData];
  
  aVO.iFile = imageStr?imageStr:@"";
  aVO.iFileSize = [NSString stringWithFormat:@"%.2f",(float)[imageData length]/WA_ATTACHADDRATE_KB];
  
  if (iDelegate && [iDelegate respondsToSelector:@selector(didSelectImage:)])
  {
    [(NSObject *)iDelegate performSelectorOnMainThread:(@selector(didSelectImage:)) withObject:aVO waitUntilDone:YES];
//    [iDelegate didSelectImage:aVO];
  }
}
@end
