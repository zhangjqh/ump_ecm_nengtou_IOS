//
//  ContainerUtil.h
//  UMContainer
//
//  Created by zjx on 13-4-20.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PageLifecycleDelegate.h"
#import "UMCore.h"
@interface ContainerUtil : NSObject
+(NSString*)getMessage:(int)level jsContainer:(UMCore*)core;
+(void)log:(int)level message:(NSString*)msg jsContainer:(UMCore*)core;
+(NSString*)callRemoteService:(id<PageLifecycleDelegate>)page addr:(NSString*)url requestContext:(NSString*)reqContext callbackKey:(NSString*)key jsContainer:(UMCore*)core;
@end
