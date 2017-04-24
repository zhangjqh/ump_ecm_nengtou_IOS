//
//  UMAlter.h
//  UMIOSControls
//
//  Created by zzyy on 13-7-30.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import "UMView.h"
#import "UMAlterDefine.h"

@interface UMAlter : UMView

@property(nonatomic,assign) NSString   *value;
@property(nonatomic,assign) UmpAlterViewPromptType promptType;//样式类型
@property(nonatomic,assign) UmpAlterViewStyleType style;

- (void)show;
@end
