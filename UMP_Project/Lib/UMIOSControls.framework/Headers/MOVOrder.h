//
//  MOVOrder.h
//  DyTest
//
//  Created by zhangnan on 13-11-5.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#ifndef __DyTest__MOVOrder__
#define __DyTest__MOVOrder__

#include <iostream>
#include "RBorder.h"

class MOVOrder:public RBOrder{
public:
    MOVOrder();
    void run(RoyalBlueContext* context);
};
#endif /* defined(__DyTest__MOVOrder__) */
