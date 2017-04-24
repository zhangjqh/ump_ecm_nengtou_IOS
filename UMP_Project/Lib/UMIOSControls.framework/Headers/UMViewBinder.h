//
//  UMViewBinder.h
//  UMIOSControls
//
//  Created by zzyy on 13-7-20.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import "UMControlDataBinder.h"

@interface UMViewBinder : UMControlDataBinder
@property(nonatomic,strong) NSString* focusRecord;


-(void)dataBindRow;
-(NSString*)getCollection;
-(NSString*)getCollectionName;
-(void)registerListenerToCollection;
@end
