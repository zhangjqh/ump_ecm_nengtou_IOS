//
//  UMCameraManager.h
//  UMIOSControls
//
//  Created by zhangyuv on 13-7-9.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UMCameraController : UIViewController<UINavigationControllerDelegate, UIImagePickerControllerDelegate>
@property (nonatomic,assign) UIImagePickerControllerSourceType sourceType;
@property (nonatomic,assign) BOOL saveToPhotoAlbum;

-(void)takePicture;

-(void)addTarget:(id)target actionForImage:(SEL)action;
-(void)addTarget:(id)target actionForVideo:(SEL)action;
@end
