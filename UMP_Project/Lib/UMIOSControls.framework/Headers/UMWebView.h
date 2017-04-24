//
//  UMWebView.h
//  UMIOSControls
//
//  Created by zzyy on 13-7-17.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import "UMBindView.h"

@interface UMWebView : UMBindView

@property (nonatomic,strong) NSString *htmlData;
@property (nonatomic,strong) NSString *htmlFile;
@property (nonatomic,strong) NSString * autoFit;//自动对webView进行缩放以适应屏幕

@property (nonatomic,copy) NSString* url;
@property (nonatomic,strong) NSString *htmlUrl;
@property (nonatomic,strong) NSString *videoplay;

@end
