//
//  IRBOrder.h
//  DyTest
//
//  Created by zhangnan on 13-11-4.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#ifndef __DyTest__IRBOrder__
#define __DyTest__IRBOrder__

#include <iostream>
#include <vector>
#include <string>
#include "MnemonicSymbol.h"
#include "RoyalBlueContext.h"

using namespace std;

class IRBOrder{
public:
    virtual MnemonicSymbol getSymbol() = 0;
    virtual ~IRBOrder(){};
    virtual vector<string> getOperandList() = 0;
    virtual string getOperand(int index) = 0;
    virtual void run(RoyalBlueContext* context) = 0;
    virtual void addOperand(string param) = 0;
};
#endif /* defined(__DyTest__IRBOrder__) */
