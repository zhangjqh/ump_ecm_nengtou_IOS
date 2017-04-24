//
//  UMFileSelector.h
//  UMIOSControls
//
//  Created by zhangnan on 13-7-25.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import "UMView.h"
#import "UMFileSystem.h"

@interface UMFileSelector : UMView

@property(nonatomic,readonly) NSString* filePath;
@property(nonatomic,assign) FILEREADINGPATH readPathType;

@end
