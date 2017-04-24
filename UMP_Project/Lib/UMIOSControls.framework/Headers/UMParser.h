//
//  UMParser.h
//  UMContainer
//
//  DSL规则解析
//
//  Created by dingheng on 13-12-6.
//  Copyright (c) 2013年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UMIOSCommon.h"
#import "XEventArgs.h"
#import "UMContainer.h"
@interface UMParser : NSObject

@property(nonatomic,strong)NSString* sourcePath;//资源路径

+(UMParser *)sharedInstance;

/**
 *  根据dsl获取value
 *  eg:#{cursor.x}
 */
+(NSString *)parseExpr:(XEventArgs *)args expr:(NSString *)expr ctx:(UMEntityContext *)ctx;

@end
