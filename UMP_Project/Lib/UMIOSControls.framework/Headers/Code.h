//
//  Code.h
//  DyTest
//
//  Created by zhangnan on 13-11-8.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#ifndef __DyTest__Code__
#define __DyTest__Code__

#include <string>
#include "RoyalBlueContext.h"
using namespace std;

#define TABLE_NUM 128
class Code{
private:
    //static function
    static void runWidth();
    static void runHeight();
    
    static void runBackground();
    static void runBackgroundImage();
    
    static void runHalign();
    static void runValign();
    
    static void runLayout();
    
    static void runValue();
    static void runFontColor();
    static void runFontFamily();
    static void runFontSize();
    
    static void runMarginLeft();
    
    static void runVisible();
    static void runDisabled();
    
    static void runClick();
    
    typedef struct MappingType {
        char cClassName[256];
        char cRBClassName[256];
    }MappingType;
    static MappingType st_mappingTable[TABLE_NUM];
public:
    typedef struct Code_Context{
        string object;
        string key;
        string value;
        RoyalBlueContext* context;
    }Code_Context;
private:
    static Code_Context st_codeCtx;

    
public:
    static void runCode(string object, string key, string value, RoyalBlueContext* context);
};
#endif /* defined(__DyTest__Code__) */
