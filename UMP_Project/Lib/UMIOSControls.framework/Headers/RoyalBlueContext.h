//
//  RoyalBlueContext.h
//  DyTest
//
//  Created by zhangnan on 13-11-4.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#ifndef __DyTest__RoyalBlueContext__
#define __DyTest__RoyalBlueContext__

#include <string>
#include "Activity.h"
#include "SymbolTable.h"

using namespace std;
class RoyalBlueContext{
private:
    SymbolTable* st;
    Activity*   activity;
public:
    RoyalBlueContext(Activity* ac);
    ~RoyalBlueContext();
public:
    Activity* getActivity();
    SymbolTable* getSymbolTable();
    NSObject* getSymbol(string key);
    void putSymbol(string key, NSObject* value);
};
#endif /* defined(__DyTest__RoyalBlueContext__) */
