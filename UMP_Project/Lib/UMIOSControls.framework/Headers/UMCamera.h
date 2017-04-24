//
//  UMMap.h
//  UMIOSControls
//
//  Created by zzyy on 13-7-18.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import "UMView.h"

typedef void(^FINISHBLOCK)(id returnData);

@interface UMCamera : UMView

@property (nonatomic,assign) UIImagePickerControllerSourceType sourceType;
@property (nonatomic,assign) BOOL saveToPhotoAlbum;

- (void)startCamera;
- (void)finishCamera;

- (void)takePictureAndFinishBlock:(FINISHBLOCK)blk;

- (void)addTarget:(id)callbackTarget action:(SEL)action;

@end
