//
//  CWATaskMacro.h
//  TaskApproval
//
//  Created by dequan on 12-5-22.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#ifndef TaskApproval_CWATaskMacro_h
#define TaskApproval_CWATaskMacro_h

//tableview的背景颜色
#define WA_TASK_TABLEVIEW_BACKGROUND_COLOR [UIColor colorWithRed:240/255.0f green:240/255.0f blue:240/255.0f alpha:1.0f]
//navigationbar的背景颜色不图片
#define WA_TASK_NAVIGATIONBAR_BACKGROUND_IMAGE @"nav_bd.png"
#define WA_TASK_NAVIGATIONBAR_BACKGROUND_IMAGE_IOS7 @"nav.png.png"
//pickertextfield的frame改变通知
#define WA_TASK_PICKERTEXTFILLD_FRAMECHANGE_NOTICE @"PickerTextFieldFrameChange"
//menucontroller向右滑动的通知
#define WA_TASK_MENUCONTROLLER_SCROLLRIGHT_NOTICE @"MenucontrollerscrolltoRight"

//通知详情tableview开始滚动
#define WA_TASK_DETAILTABLE_BEGING_SCEOLL @"taskDetailTableviewBeginScroll"
//通知详情tableview结束滚动
#define WA_TASK_DETAILTABLE_END_SCEOLL @"taskDetailTableviewEndScroll"
#endif
