//
//  XEventArgs.h
//  UMIOSControls
//
//  Created by dingheng on 14-9-10.
//  Copyright (c) 2014年 zhangnan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UMControlBase.h"
#import "InvokeInfo.h"

@interface XEventArgs : NSObject<UMEventArgsProtocol,NSCopying,NSMutableCopying>

@property (nonatomic,assign) UIViewController<UMContainerProtocol> * controller;
@property (nonatomic,strong) NSMutableDictionary *info;
@property (nonatomic,strong) InvokeInfo *invoke;

/*
 * 默认必须传入当前controller
 */
-(id) init:(UIViewController<UMContainerProtocol> *)container;
-(void)check:(NSString *)key;
@end
