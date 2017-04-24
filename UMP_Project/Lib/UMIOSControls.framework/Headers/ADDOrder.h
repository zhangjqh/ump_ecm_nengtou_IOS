//
//  ADDOrder.h
//  DyTest
//
//  Created by zhangnan on 13-11-5.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#ifndef __DyTest__ADDOrder__
#define __DyTest__ADDOrder__

#include <iostream>
#include "RBorder.h"

class ADDOrder:public RBOrder{
public:
    ADDOrder();
    void run(RoyalBlueContext* context);
};
#endif /* defined(__DyTest__ADDOrder__) */
