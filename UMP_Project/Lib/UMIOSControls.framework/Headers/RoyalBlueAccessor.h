//
//  RoyalBlueAccessor.h
//  DyTest
//
//  Created by zhangnan on 13-11-12.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#ifndef __DyTest__RoyalBlueAccessor__
#define __DyTest__RoyalBlueAccessor__

#include <iostream>
#include <fstream>
#include <stdio.h>
#include <string>
#include "IRBFunction.h"

using namespace std;

class RoyalBlueAccessor{
    
public:
    static IRBFunction* loadScript(string fileName, bool isDecode,Activity* activity);
    static IRBFunction* loadScriptFromContent(string* pp, bool isDecode,Activity* activity);
private:
    static IRBFunction* loadScript(FILE* fp, bool isDecode,Activity* activity);
    static string loadStream(FILE* fp, bool isDecode,Activity* activity);

    
};

#endif /* defined(__DyTest__RoyalBlueAccessor__) */
