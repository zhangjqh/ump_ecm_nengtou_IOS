//
//  UMRadioBoxGroup.h
//  UMIOSControls
//
//  Created by zhangnan on 13-6-17.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UMRadioBox.h"
#import "UMBindView.h"

@interface UMRadioBoxGroup : UMBindView<RadioBoxDelegate>

@property (nonatomic,assign) BOOL bHorizontal;
@property (nonatomic,strong) NSString *text;
//@property(nonatomic,readonly) NSMutableArray* radioItems;


-(void)setRadioBox:(UMRadioBox*)radioBox;

- (id)init;

@end

@interface UMRadioBoxGroup (JSCallProperty)
@property(nonatomic,strong) NSString* horizontal;
@property(nonatomic,strong) NSString* datasource;
@end