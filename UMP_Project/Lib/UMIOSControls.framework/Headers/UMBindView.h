//
//  UMBindView.h
//  UMIOSControls
//
//  Created by zzyy on 13-7-20.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import "UMView.h"
#import "UMControlBindDelegate.h"
#import "UMControlDataBinder.h"
#import "UMControlBase.h"

@interface UMBindView : UMView<UMControlBindDelegate>
{
    UMControlDataBinder* _controlDataBinder;
}

@property(nonatomic,strong) UMControlDataBinder* controlDataBinder;
@property(nonatomic,strong) UMBindInfo* bindInfo;

- (void)dataBind;
- (void)dataCollection:(NSString*)newData;
- (void)dataCollect;
@end
