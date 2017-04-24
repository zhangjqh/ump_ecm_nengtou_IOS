//
//  RBObject.h
//  DyTest
//
//  Created by zhangnan on 13-11-27.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//  modify by dingh 15-07-07

#import <Foundation/Foundation.h>
#include "Code.h"

typedef struct RBObject_Context{
    string object;
    string key;
    string value;
    RoyalBlueContext* context;
}RBObject_Context;

@interface RBObject : NSObject

+ (void)runCodeWithContext:(Code::Code_Context*) context;
@end
