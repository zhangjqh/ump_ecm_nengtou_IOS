//
//  UMDataBinder.h
//  UMIOSControls
//
//  Created by zhangnan on 13-4-12.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UMDataBindingDefinations.h"
#import "UMControlBindDelegate.h"

@interface UMBindInfo : NSObject

@property(nonatomic,strong) NSString* dataSourceName;
@property(nonatomic,strong) NSString* dataSourceType;
@property(nonatomic,strong) NSMutableDictionary* controlFieldPair; 
@property(nonatomic,assign) UM_DATABINDING_TYPE bindingType;

@end

@interface UMControlDataBinder : NSObject

@property(nonatomic,strong) UMBindInfo* bindingInfo;
@property(nonatomic,strong) NSMutableDictionary* controlFieldPair; 
@property(nonatomic,assign) id<UMControlBindDelegate> delegate;

- (void)dataBind;
- (void)dataCollection:(NSString*)newData;
@end
