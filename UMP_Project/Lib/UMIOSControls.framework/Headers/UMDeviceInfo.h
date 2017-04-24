//
//  UMCameraManager.h
//  UMIOSControls
//
//  Created by zhangyuv on 13-7-9.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UMDeviceInfo : NSObject

@property(nonatomic,readonly) NSString* uuid;
@property(nonatomic,readonly) NSString* systemVersion;
@property(nonatomic,readonly) NSString* model;
@property(nonatomic,readonly) NSString* uniqueDeviceID;

+ (UMDeviceInfo*)sharedUMDevice;

@end
