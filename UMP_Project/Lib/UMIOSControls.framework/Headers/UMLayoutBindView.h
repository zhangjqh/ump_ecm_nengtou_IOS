//
//  UMLayoutBindView.h
//  UMIOSControls
//
//  Created by zhangyuv on 14-3-5.
//  Copyright (c) 2014年 zhangnan. All rights reserved.
//

#import "UMLayoutView.h"
#import "UMControlBindDelegate.h"
#import "UMControlDataBinder.h"

@interface UMLayoutBindView : UMLayoutView<UMControlBindDelegate>
{
//    UMControlDataBinder* _controlDataBinder;
}


@property(nonatomic,strong) UMControlDataBinder* controlDataBinder;
@property(nonatomic,strong) UMBindInfo* bindInfo;

- (void)dataBind;
- (void)dataCollection:(NSString*)newData;
@end
