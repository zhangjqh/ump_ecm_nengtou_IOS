//
//  UMEntityContext.h
//  JSONTest
//
//  Created by dingheng on 13-5-28.
//  Copyright (c) 2013年 ZJ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UMContext.h"
#import "UMControlBase.h"
@interface UMEntityContext : UMContext<UMDataAccessor>



-(NSString *)getValue:(NSString *)path;

-(void)setValue:(NSString *)path source:(NSString*)source;

-(void)addParameter:(NSString *)value withKey:(NSString *)key;

-(NSMutableDictionary *)getParameterinfo;

@end
