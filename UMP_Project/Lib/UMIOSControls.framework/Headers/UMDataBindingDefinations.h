//
//  UMDataBindingDefinations.h
//  UMIOSControls
//
//  Created by zhangnan on 13-4-12.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#ifndef UMIOSControls_UMDataBindingDefinations_h
#define UMIOSControls_UMDataBindingDefinations_h

typedef enum {
    UM_DATABINDING_TYPE_NONE = -1,
    UM_DATABINDING_TYPE_DOUBLEWAY = 0,
    UM_DATABINDING_TYPE_ONEWAYDATABIND = 1,
    UM_DATABINDING_TYPE_ONEWAYDATACOLLECT = 2
}UM_DATABINDING_TYPE;

#define COVERBANDINGTYPE(type,typeEnum) switch(type) \
    {   case 1: \
        typeEnum = UM_DATABINDING_TYPE_ONEWAYDATABIND;\
        break; \
        case 2: \
        typeEnum = UM_DATABINDING_TYPE_ONEWAYDATACOLLECT; \
        break;\
        case -1: \
        typeEnum = UM_DATABINDING_TYPE_NONE;\
        break;\
        case 0: \
        default: \
        typeEnum = UM_DATABINDING_TYPE_DOUBLEWAY; \
        break; \
    }


#endif
