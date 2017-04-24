//
//  UMPButtonDefinition.h
//  UMPControls
//
//  Created by zhangyuv on 13-3-11.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

typedef enum {
    Fit_Type_FitXY = 0,
    Fit_Type_FitInSize = 1,
    Fit_Type_Original = 2
}FIT_TYPE;

#define BACKGROUND_IMAGE_NAME @"button.png"




















//命名规则：
//枚举：  enum_ControlName_EnumTypeName
//结构体：st_ControlName_StructTypeName

typedef enum {
    Button_Custom = 0,           // no button type
    Button_RoundedRect = 1,          // rounded rect, flat white button, like in address card
    
    Button_DetailDisclosure = 2,
    Button_InfoLight = 3,
    Button_InfoDark = 4,
    Button_ContactAdd = 5
    }enum_Button_Style;




typedef enum {
    UMP_Controls_State_Normal = 0,
    UMP_Controls_State_Highlighted = 1,
    UMP_Controls_State_Selected = 2,
    UMP_Controls_State_Disabled = 3
    }enum_Button_State;

typedef enum {
    Alignment_Horizon_Left= 0,
    Alignment_Horizon_Right = 1,
    Alignment_Horizon_Center = 2,
    Alignment_Vertical_Top = 3,
    Alignment_Vertical_bottom = 4,
    Alignment_Vertical_Center = 5
    }enum_Button_Alignment;

#define CUSTOMBUTTONDEFAULTIMAGESTRETCHLEFT 5
#define CUSTOMBUTTONDEFAULTIMAGESTRETCHTOP 15
#define DEFAULTBUTTONBACKGROUDNORMAL @"buttonnormal.png"
#define DEFAULTBUTTONBACKGROUDSELECTED @"buttondown.png"

