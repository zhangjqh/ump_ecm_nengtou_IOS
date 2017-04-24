//
//  RBFunction.h
//  DyTest
//
//  Created by zhangnan on 13-11-4.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#ifndef __DyTest__RBFunction__
#define __DyTest__RBFunction__

#include <iostream>

#include "IRBFunction.h"
#include "IRBOrder.h"

using namespace std;

class RBFunction:public IRBFunction{
private:
    vector<IRBOrder*> orders;
public:
    RBFunction();
    void release();
public:
    string getName();
    vector<IRBOrder*> getOrders();
    int length();
    IRBOrder* getOrder(int index);
    void addOrder(IRBOrder* order);
};

#endif /* defined(__DyTest__RBFunction__) */
