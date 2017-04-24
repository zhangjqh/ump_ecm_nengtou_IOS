//
//  UMCoverFlowView.h
//  UMIOSControls
//
//  Created by zhangnan on 13-8-1.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UMView.h"

@interface UMCoverFlowView : UMView

- (void)addImageItem:(NSString *)imageName;

- (void)cleanImageData;

- (void)addTarget:(id)target actionForSelected:(SEL)action;

@end
