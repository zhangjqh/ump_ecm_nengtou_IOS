//
//  UMAlterDefine.h
//  UMIOSControls
//
//  Created by zzyy on 13-7-30.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

typedef enum {
    kUmpAlterMoveTypeLeft = 1, //从左
    kUmpAlterMoveTypeRight,//从右
    kUmpAlterMoveTypeTop,//从上
    kUmpAlterMoveTypeBottom,//从下
    KUmpAlterMoveTypeOglFlip,//翻转
    
} UmpAlterMoveType;
/*
 * 提示类型
 */
typedef enum {
    
    KUmpAlterViewPromptTypeLoading = 1,//加载数据
    KUmpAlterViewPromptTypePageName, //页面归属信息
    KUmpAlterViewPromptTypeGenerallyWarning, //一般警告
    KUmpAlterViewPromptTypeSeriousWarning, //严重警告
    
}UmpAlterViewPromptType;

typedef enum {
    
    KUmpAlterViewImageTypeNomal = 1, //正常图标
    KUmpAlterViewImageTypeGenerallyWarning,//一般警告 image
    KUmpAlterViewImageTypeSeriousWarning, //严重警告
    
}UmpAlterViewImageType;


typedef enum {
    
    KUmpAlterViewStyleTypeStatic = 1, //静态
    KUmpAlterViewStyleTypeDynamic,//动态
    
}UmpAlterViewStyleType;