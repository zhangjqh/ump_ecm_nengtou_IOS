//
//  Activity.h
//  DyTest
//
//  Created by zhangnan on 13-11-5.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#ifndef __DyTest__Activity__
#define __DyTest__Activity__

#include <iostream>

class Activity{
public:
    Activity(id ctl);
    ~Activity();
    id m_ctl;
    int dynamicdiv_width;
    int dynamicdiv_height;
};
#endif /* defined(__DyTest__Activity__) */
