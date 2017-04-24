//
//  RTNOrder.h
//  DyTest
//
//  Created by zhangnan on 13-11-5.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#ifndef __DyTest__RTNOrder__
#define __DyTest__RTNOrder__

#include <iostream>
#include "RBorder.h"

class RTNOrder:public RBOrder{
public:
    RTNOrder();
    void run(RoyalBlueContext* context);
};
#endif /* defined(__DyTest__RTNOrder__) */
