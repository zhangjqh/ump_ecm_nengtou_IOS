//
//  CRTOrder.h
//  DyTest
//
//  Created by zhangnan on 13-11-5.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#ifndef __DyTest__CRTOrder__
#define __DyTest__CRTOrder__

#include <iostream>
#include "RBOrder.h"

class CRTOrder:public RBOrder{
public:
    CRTOrder();
    void run(RoyalBlueContext* context);
};
#endif /* defined(__DyTest__CRTOrder__) */
