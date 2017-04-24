//
//  UMImageControl.h
//  UMIOSControls
//
//  Created by zhangnan on 13-4-17.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import "UMButton.h"
#import "UMButtonDefinition.h"

@interface UMImageButton : UMButton//UMBindView
{
        
}

@property(nonatomic,assign) FIT_TYPE  fitType;
@property(nonatomic,readonly) NSMutableArray* imageNamesArr;
@property(nonatomic,assign) BOOL isSelected;
@property(nonatomic,strong) NSString * checked;
@property (nonatomic,strong) NSString *value;

@end

@interface UMImageButton (JSCallProperty)

@end