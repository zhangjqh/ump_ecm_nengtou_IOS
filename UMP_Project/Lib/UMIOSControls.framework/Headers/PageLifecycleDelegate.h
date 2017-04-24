//
//  PageLifecycleDelegate.h
//  UMCommon
//
//  Created by zjx on 13-4-20.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PageLifecycleDelegate <NSObject>
-(void)onInit:(NSString*)controllername;
-(void)onLoad:(NSString*)controllername;
-(void)onDataBinding:(NSString*)controllername;
-(void)onComplete:(NSString*)controllername;
-(void)onUnload:(NSString*)controllername;
@end
