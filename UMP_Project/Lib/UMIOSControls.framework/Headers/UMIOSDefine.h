//
//  UMIOSDefine.h
//  UMIOSControls
//
//  Created by zzyy on 13-7-20.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//


#define RESOURCE_NAME @"umioscontrols.bundle" 

#define iPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)

#define DEVICEWIDTH [UIApplication sharedApplication].keyWindow.rootViewController.view.frame.size.width
                     

#define DEVICEHEIGHT [UIApplication sharedApplication].keyWindow.rootViewController.view.frame.size.height

