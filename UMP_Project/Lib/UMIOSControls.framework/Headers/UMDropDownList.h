//
//  UMDropDownList.h
//  UMIOSControls
//
//  Created by zzyy on 13-7-17.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import "UMBindView.h"

@interface UMPickerDataStruct : NSObject
@property(nonatomic,strong) NSString* dataStr;
@property(nonatomic,copy) NSString* value;
@property(nonatomic,assign) BOOL selected;
@end

@interface UMDropDownList : UMBindView

- (void)addData:(UMPickerDataStruct*)dataStruct;
@end


@interface UMDropDownList (JSCallProperty)

@property (nonatomic,strong) NSString* multiple;

@property (nonatomic,strong) NSArray* datasource;

@end