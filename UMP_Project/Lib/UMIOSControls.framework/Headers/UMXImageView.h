//
//  UMImageView.h
//  UMIOSControls
//
//  Created by zhangnan on 13-9-2.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import "UMBindView.h"
#import "UMButtonDefinition.h"
@interface UMXImageView : UMBindView

@property(nonatomic,strong) NSString *imageSrc;
@property(nonatomic, assign) FIT_TYPE  fitType;

@property(nonatomic, strong) NSString* xbxControlName;
@property(nonatomic, strong) NSString* xbxTitleName;
@property(nonatomic, strong) NSString* xbxMappingName;

@end

@interface UMXImageView (JSCallProperty)

@property(nonatomic,strong) NSString *src;
@property(nonatomic,strong) NSString *scaletype;

@end
