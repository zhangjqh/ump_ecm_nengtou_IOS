//
//  UMCore.h
//  UMCore
//
//  Created by zjx on 13-3-14.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>
#import "InvokeDelegate.h"
#import "JSONKit.h"
@interface UMCore : NSObject{
    JSGlobalContextRef _JSContext;
    
}

-(id)initCore:(id<InvokeDelegate>)invokeobject;
- (JSGlobalContextRef) JSContext;
- (NSString *)runJS:(NSString *)strJSString;
- (void)requireJS: (NSString*)jsname indirectory:(NSString*)dicr;
-(void) registerCall:(const char *)funcTag :(JSObjectCallAsFunctionCallback)callAsFunction;
@end
