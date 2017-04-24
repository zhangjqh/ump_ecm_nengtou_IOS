//
//  IRBFunction.h
//  DyTest
//
//  Created by zhangnan on 13-11-4.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#ifndef DyTest_IRBFunction_h
#define DyTest_IRBFunction_h

#include <iostream>
#include <vector>
#include <string>
#include "IRBOrder.h"

using namespace std;
class IRBFunction{
public:
    virtual string getName() = 0;
    virtual ~IRBFunction() {};
    virtual vector<IRBOrder*> getOrders() = 0;
    virtual int length() = 0 ;
    virtual void release() = 0;
    virtual IRBOrder* getOrder(int index) = 0;
    virtual void addOrder(IRBOrder* order) = 0;
};

#endif
