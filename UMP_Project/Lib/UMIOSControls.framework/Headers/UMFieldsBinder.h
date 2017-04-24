//
//  UMFieldsBinder.h
//  UMIOSControls
//
//  Created by zzyy on 13-7-20.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import "UMControlDataBinder.h"

@interface UMFieldsBinder : UMControlDataBinder

@property(nonatomic,strong) id model;
@property(nonatomic,strong) NSString* modelData;
-(void)getControlData;

-(void)registerListenerToModel;
-(void)setControlData:(NSString*)controlData;

@end
