//
//  UMImageViewContent.h
//  UMIOSControls
//
//  Created by zhangnan on 13-9-2.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UMButtonDefinition.h"
#import "UrlImageView.h"

@interface UMUrlImageViewContent : UrlImageView
@property(nonatomic,strong) NSString *imageFilePath;
@property(nonatomic, assign) FIT_TYPE  fitType;

- (id)init;
- (void)showShadow;
- (void)imageLoadedEnd:(NSData*)imgData imageName:(NSString*)imageName;
- (BOOL)showImage;
- (void)loadPicture:(NSString*)paramOfRequest;
-(void)addTarget:(id)target action:(SEL)action;
@end
