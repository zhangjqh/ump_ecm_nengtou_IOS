//
//  EventObject.h
//  UMIOSControls
//
//  Created by dingheng on 14-9-10.
//  Copyright (c) 2014年 zhangnan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UMControlBase.h"

@interface EventObject : NSObject

@property (nonatomic,strong) NSString *action;
@property (nonatomic,assign) UIViewController<UMContainerProtocol> *controller;
@property (nonatomic,strong) NSString *eventType;
@property (nonatomic,assign) id sender;//opendropdownlist 识别

-(void)doEvent:(id<UMViewControl>)sender args:(id<UMEventArgsProtocol>)args;
@end
