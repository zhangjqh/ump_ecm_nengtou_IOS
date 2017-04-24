//
//  UmpCache.h
//  UMIOSCommon
//
//  Created by dingheng on 13-8-1.
//  Copyright (c) 2013年 dingheng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UmpCache : NSObject
/*
 * 清空缓存 文件
 */
+ (void) resetCache;
/*
 *  设置缓存
 *  key - value
 */
+ (void) setObject:(NSData*)data forKey:(NSString*)key;
/*
 *  获取缓存
 *  key - value
 */
+ (id) objectForKey:(NSString*)key;

@end
