//
//  RoyalBlueRunner.h
//  DyTest
//
//  Created by zhangnan on 13-11-4.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#ifndef __DyTest__RoyalBlueRunner__
#define __DyTest__RoyalBlueRunner__

#include "RoyalBlueContext.h"
#include "IRBFunction.h"

class RoyalBlueRunner{
private:
    RoyalBlueContext* current;
public:
    RoyalBlueRunner();
    RoyalBlueRunner(Activity* activity);
    ~RoyalBlueRunner();
    void* execute(IRBFunction* function);
private:
    void execute(IRBOrder* function);
private:
    RoyalBlueContext* m_context;
};
#endif /* defined(__DyTest__RoyalBlueRunner__) */
