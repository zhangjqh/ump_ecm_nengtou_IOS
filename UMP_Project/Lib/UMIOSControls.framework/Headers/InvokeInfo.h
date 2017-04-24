//
//  InvokeInfo.h
//  UMContainer
//
//  Created by xiongyy on 14-8-19.
//  Copyright (c) 2014年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InvokeInfo : NSObject

@property (nonatomic,strong) NSString *actionId;
@property (nonatomic,strong) NSString *method;
@property (nonatomic,strong) NSString *nameSpace;
@property (nonatomic,strong) NSString *controller;
@property (nonatomic,strong) NSString *language;
@property (nonatomic,weak) id sender;
@property (nonatomic,strong) NSString *senderId;
@property (nonatomic,strong) NSString *containername;


-(id)initWithID:(NSString *)aid method:(NSString *)name;

@end
