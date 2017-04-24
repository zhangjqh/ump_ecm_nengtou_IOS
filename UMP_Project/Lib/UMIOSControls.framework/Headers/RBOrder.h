//
//  RBorder.h
//  DyTest
//
//  Created by zhangnan on 13-11-4.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#ifndef __DyTest__RBorder__
#define __DyTest__RBorder__

#include <iostream>

#include "MnemonicSymbol.h"
#include "IRBOrder.h"

class RBOrder:public IRBOrder{
protected:
    MnemonicSymbol symbol;
    vector<string> operands;
public:
    static IRBOrder*    createOrder(MnemonicSymbol symbol);
public:
    MnemonicSymbol getSymbol();
    vector<string> getOperandList();
    string getOperand(int index);
    void run(RoyalBlueContext* context);
    void addOperand(string param);
    string toString();
    
};
#endif /* defined(__DyTest__RBorder__) */
